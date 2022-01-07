import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400);
  }

  const findThreadQuery = `SELECT * FROM MessageThreadOnUser WHERE user_id = ? ORDER BY created_at DESC`;
  const threadRefs = await query(findThreadQuery, [id]);

  const threads = [];
  for (const { thread_id } of threadRefs) {
    const getThreadQuery = `SELECT * FROM MessageThread WHERE id = ? LIMIT 1`;
    const [thread] = await query(getThreadQuery, [thread_id]);

    const getUserQuery = `
        SELECT * FROM User WHERE id IN (
            SELECT user_id FROM MessageThreadOnUser WHERE thread_id = ? AND NOT user_id = ? 
        ) LIMIT 1
        `;
    const [user] = await query(getUserQuery, [thread_id, id]);
    thread.user = user;
    threads.push(thread);
  }

  res.json(threads);
}
