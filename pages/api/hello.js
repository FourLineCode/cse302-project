import { query } from "../../lib/db";

export default async function handler(req, res) {
    try {
        const data = await query(`SELECT * FROM User WHERE 1`);
        res.status(200).json(data);
    } catch (error) {
        console.log(error);
    }
}
