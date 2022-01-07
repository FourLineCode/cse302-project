import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const getPostQuery = `SELECT * FROM Post WHERE id = ? LIMIT 1`;
  const [post] = await query(getPostQuery, [id]);

  if (!post) {
    return res.status(400).json({ message: "Post doesnt exists" });
  }

  const getAuthorQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
  const [author] = await query(getAuthorQuery, [post.author_id]);

  const getPostLikesQuery = `SELECT COUNT(*) AS count FROM PostLike WHERE post_id = ?`;
  const [like] = await query(getPostLikesQuery, [post.id]);

  const getCommentsQuery = `SELECT * FROM PostComment WHERE post_id = ?`;
  const comments = await query(getCommentsQuery, [post.id]);

  for (let i = 0; i < comments.length; i++) {
    const getCommentAuthorQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
    const [user] = await query(getCommentAuthorQuery, [comments[i].user_id]);
    comments[i].author = user;
  }

  post.author = author;
  post.likeCount = like.count;
  post.commentCount = comments.length;
  post.comments = comments;

  res.json(post);
}
