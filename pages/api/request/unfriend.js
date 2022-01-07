import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { first, second } = JSON.parse(req.body);
  if (!first || !second) {
    return res.status(400);
  }

  const unfriendQuery = `
    DELETE FROM Friendship 
    WHERE (first_user_id = ? OR second_user_id = ?)
    AND (first_user_id = ? OR second_user_id = ?)
    `;
  await query(unfriendQuery, [first, first, second, second]);

  res.json({ success: true });
}
