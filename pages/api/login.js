import { query } from "../../lib/db";

export default async function handler(req, res) {
    try {
        const input = JSON.parse(req.body);

        const doesUserExistQuery = `SELECT * FROM User WHERE email = ?`;
        const existingUsers = await query(doesUserExistQuery, [input.email]);

        if (existingUsers.length <= 0) {
            return res.json({
                success: false,
                message: "User not found",
            });
        }

        if (input.password !== existingUsers[0].password_hash) {
            return res.json({
                success: false,
                message: "Invalid credentials",
            });
        }

        res.json({ success: true, user: existingUsers[0] });
    } catch (error) {
        console.log(error);
    }
}
