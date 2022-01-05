import { query } from "../../../../lib/db";

export default async function handler(req, res) {
    const id = req.query.id;
    if (!id) {
        return res.status(400).json({ message: "Provide id" });
    }

    const getUserQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
    const [user] = await query(getUserQuery, [id]);

    if (!user) {
        return res.json({ message: "User doesnt exists" });
    }

    const getPostsQuery = `SELECT * FROM Post WHERE author_id = ?`;
    const posts = await query(getPostsQuery, [id]);

    for (let i = 0; i < posts.length; i++) {
        const getPostLikesQuery = `SELECT COUNT(*) AS count FROM PostLike WHERE post_id = ?`;
        const [likeCount] = await query(getPostLikesQuery, [posts[i].id]);

        const getCommentsQuery = `SELECT COUNT(*) AS count FROM PostComment WHERE post_id = ?`;
        const [commentCount] = await query(getCommentsQuery, [posts[i].id]);

        posts[i].likes = likeCount.count;
        posts[i].comments = commentCount.count;
        posts[i].author = user;
    }

    res.json(posts);
}
