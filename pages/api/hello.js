import { db } from "../../lib/db";

export default async function handler(req, res) {
    try {
        const data = await db.query(`SELECT * FROM User WHERE 1`);
        db.end();
        res.status(200).json(data);
    } catch (error) {
        console.log(error);
    }
}
