import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const term = req.query.term.trim();
  if (!term) {
    return res.status(400).json([]);
  }

  const searchUserQuery = `SELECT * FROM User WHERE LOWER(username) LIKE ?`;
  const users = await query(searchUserQuery, [`%${term.toLowerCase()}%`]);

  res.json(users);
}
