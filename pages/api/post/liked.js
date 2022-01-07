import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { user_id, post_id } = JSON.parse(req.body);
  if (!user_id || !post_id) {
    return res.status(400).json({ message: "Invalid request" });
  }

  const getLikedQuery = `SELECT * FROM PostLike WHERE post_id = ? AND user_id = ? LIMIT 1`;
  const [like] = await query(getLikedQuery, [post_id, user_id]);

  res.json({ liked: !!like });
}
