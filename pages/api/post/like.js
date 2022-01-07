import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { user_id, post_id } = JSON.parse(req.body);
  if (!user_id || !post_id) {
    return res.status(400).json({ message: "Invalid request" });
  }

  const likeQuery = `INSERT INTO PostLike (post_id, user_id) VALUES (?, ?)`;
  const data = await query(likeQuery, [post_id, user_id]);

  res.json({ success: true });
}
