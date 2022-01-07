import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const getUserQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
  const [user] = await query(getUserQuery, [id]);

  res.json(user);
}
