import { query } from "../../lib/db";

export default async function handler(req, res) {
  try {
    const input = JSON.parse(req.body);

    const doesUserExistQuery = `SELECT * FROM User WHERE email = ? LIMIT 1`;
    const [existingUsers] = await query(doesUserExistQuery, [input.email]);

    if (existingUsers.length <= 0) {
      return res.json({
        success: false,
        message: "User not found",
      });
    }

    if (input.password !== existingUsers.password_hash) {
      return res.json({
        success: false,
        message: "Invalid credentials",
      });
    }

    res.json({ success: true, user: existingUsers });
  } catch (error) {
    console.log(error);
  }
}
