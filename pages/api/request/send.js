import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { from, to } = JSON.parse(req.body);
  if (!from || !to) {
    return res.status(400);
  }

  const createRequestQuery = `INSERT INTO FriendRequest (from_user_id, to_user_id) VALUES (?, ?)`;
  await query(createRequestQuery, [from, to]);

  res.json({ success: true });
}
