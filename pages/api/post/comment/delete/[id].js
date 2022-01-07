import { query } from "../../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const deleteCommentQuery = `DELETE FROM PostComment WHERE id = ?`;
  await query(deleteCommentQuery, [id]);

  res.json({ success: true });
}
