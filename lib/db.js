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
