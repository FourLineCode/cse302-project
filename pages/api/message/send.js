import { query } from "../../../lib/db";

export default async function handler(req, res) {
  const { author_id, thread_id, body } = JSON.parse(req.body);
  if (!author_id || !thread_id || !body) {
    return res.status(400);
  }

  const sendMessageQuery = `INSERT INTO Message (message_body, author_id, thread_id) VALUES (?, ?, ?)`;
  await query(sendMessageQuery, [body, author_id, thread_id]);

  res.json({ success: true });
}
