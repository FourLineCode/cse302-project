import { query } from "../../../../lib/db";

export default async function handler(req, res) {
  const id = req.query.id;
  if (!id) {
    return res.status(400).json({ message: "Provide id" });
  }

  const deletePostQuery = `DELETE FROM Post WHERE id = ?`;
  const deleteLikesQuery = `DELETE FROM PostLike WHERE post_id = ?`;
  const deleteCommentsQuery = `DELETE FROM PostComment WHERE post_id = ?`;
  await query(deleteLikesQuery, [id]);
  await query(deleteCommentsQuery, [id]);
  await query(deletePostQuery, [id]);

  res.json({ success: true });
}
