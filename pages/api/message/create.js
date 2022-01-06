import { query } from "../../../lib/db";

export default async function handler(req, res) {
    const { participants } = JSON.parse(req.body);
    if (participants.length < 2) {
        return res.status(400);
    }

    const findThreadQuery = `
    SELECT thread_id FROM MessageThreadOnUser
    WHERE user_id = ? AND thread_id IN (
        SELECT thread_id FROM MessageThreadOnUser WHERE user_id = ?
    ) LIMIT 1
    `;
    const [thread] = await query(findThreadQuery, [...participants]);

    if (thread) {
        return res.json({ thread_id: thread.thread_id });
    }

    const createThreadQuery = `INSERT INTO MessageThread VALUES ()`;
    const { insertId } = await query(createThreadQuery);

    const createParticipationQuery = `INSERT INTO MessageThreadOnUser (user_id, thread_id) VALUES (?, ?), (?, ?)`;
    await query(createParticipationQuery, [participants[0], insertId, participants[1], insertId]);

    res.json({ thread_id: insertId });
}
