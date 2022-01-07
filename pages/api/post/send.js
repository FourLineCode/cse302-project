import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { post, author_id } = JSON.parse(req.body);
  if (!post.trim() || !author_id) {
    return res.status(400);
  }

  const createPostQuery = `INSERT INTO Post (post_body, author_id) VALUES (?, ?)`;
  await query(createPostQuery, [post, author_id]);

  res.json({ success: true });
}
