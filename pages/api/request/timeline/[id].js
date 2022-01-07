import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400);
  }

  const getPendingRequestQuery = `SELECT * FROM FriendRequest WHERE to_user_id = ?`;
  const requests = await query(getPendingRequestQuery, [id]);

  for (let i = 0; i < requests.length; i++) {
    const getUserQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
    const [user] = await query(getUserQuery, [requests[i].from_user_id]);

    requests[i].from_user = user;
  }

  res.json(requests);
}
