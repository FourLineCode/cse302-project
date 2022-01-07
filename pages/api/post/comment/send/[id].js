import { query } from "../../../../../lib/db";

export default async function handler(req, res) {
  const { body, post_id, author_id } = JSON.parse(req.body);
  if (!body.trim() || !post_id || !author_id) {
    return res.status(400);
  }

  const createCommentQuery = `INSERT INTO PostComment (comment_body, post_id, user_id) VALUES (?, ?, ?)`;
  await query(createCommentQuery, [body, post_id, author_id]);

  res.json({ success: true });
}
