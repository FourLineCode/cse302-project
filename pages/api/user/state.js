import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { curr_id, user_id } = JSON.parse(req.body);
  if (!curr_id || !user_id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const getFriendshipQuery = `
    SELECT * FROM Friendship 
    WHERE (first_user_id = ? OR second_user_id = ?)
    AND (first_user_id = ? OR second_user_id = ?)
    LIMIT 1
    `;
  const [friendship] = await query(getFriendshipQuery, [
    curr_id,
    curr_id,
    user_id,
    user_id,
  ]);
  if (friendship) {
    return res.json({ state: "FRIEND" });
  }

  const getRequestQuery = `
    SELECT * FROM FriendRequest 
    WHERE (from_user_id = ? OR to_user_id = ?)
    AND (from_user_id = ? OR to_user_id = ?)
    LIMIT 1
    `;
  const [request] = await query(getRequestQuery, [
    curr_id,
    curr_id,
    user_id,
    user_id,
  ]);
  if (request) {
    if (request.from_user_id === curr_id) {
      return res.json({ state: "SENT" });
    } else {
      return res.json({ state: "PENDING" });
    }
  }

  res.json({ state: "NONE" });
}
