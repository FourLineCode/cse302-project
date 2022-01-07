import mysql from "serverless-mysql";

export const db = mysql({
  config: {
    host: "127.0.0.1",
    port: "3306",
    user: "root",
    password: "",
    database: "social_media",
  },
});

export async function query(q, d) {
  try {
    const data = await db.query(q, d);
    db.end();
    return data;
  } catch (error) {
    console.log(error);
    throw error;
  }
}
