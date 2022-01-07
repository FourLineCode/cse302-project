import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400);
  }

  const getMessagesQuery = `SELECT * FROM Message WHERE thread_id = ? ORDER BY created_at ASC`;
  const messages = await query(getMessagesQuery, [id]);

  for (let i = 0; i < messages.length; i++) {
    const getUserQuery = `SELECT * FROM User WHERE id = ? LIMIT 1`;
    const [user] = await query(getUserQuery, [messages[i].author_id]);

    messages[i].author = user;
  }

  res.json(messages);
}
