import { query } from "../../lib/db";

export default async function handler(req, res) {
  try {
    const input = JSON.parse(req.body);

    const doesUserExistQuery = `SELECT * FROM User WHERE email = ? OR username = ?`;
    const existingUsers = await query(doesUserExistQuery, [
      input.email,
      input.username,
    ]);

    if (existingUsers.length > 0) {
      return res.json({
        success: false,
        message: "User exists with given email or username",
      });
    }

    const createUserQuery = `INSERT INTO User (email, username, password_hash, bio) VALUES (?, ?, ?, ?)`;
    await query(createUserQuery, [
      input.email,
      input.username,
      input.password,
      input.bio,
    ]);

    res.json({ success: true });
  } catch (error) {
    console.log(error);
  }
}
