import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const getFriendIdsQuery = `
    SELECT 
    CASE WHEN first_user_id = ? THEN second_user_id
    ELSE first_user_id 
    END AS friend_id 
    FROM Friendship 
    WHERE first_user_id = ? OR second_user_id = ?
    `;
  const friends = await query(getFriendIdsQuery, [id, id, id]);
  const friendIds = [
    parseInt(id),
    ...friends.map(({ friend_id }) => friend_id),
  ];

  const getPostsQuery = `SELECT * FROM Post WHERE author_id IN (?) ORDER BY created_at DESC`;
  const posts = await query(getPostsQuery, [friendIds]);

  for (let i = 0; i < posts.length; i++) {
    const getUserQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
    const [user] = await query(getUserQuery, [posts[i].author_id]);

    const getPostLikesQuery = `SELECT COUNT(*) AS count FROM PostLike WHERE post_id = ?`;
    const [like] = await query(getPostLikesQuery, [posts[i].id]);

    const getCommentsQuery = `SELECT COUNT(*) AS count FROM PostComment WHERE post_id = ?`;
    const [comment] = await query(getCommentsQuery, [posts[i].id]);

    posts[i].likeCount = like.count;
    posts[i].commentCount = comment.count;
    posts[i].author = user;
  }

  res.json(posts);
}
