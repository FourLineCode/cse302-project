import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { from, to } = JSON.parse(req.body);
  if (!from || !to) {
    return res.status(400);
  }

  const unsendRequestQuery = `DELETE FROM FriendRequest WHERE from_user_id = ? AND to_user_id = ?`;
  await query(unsendRequestQuery, [from, to]);

  res.json({ success: true });
}
