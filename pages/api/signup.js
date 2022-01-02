export default async function handler(req, res) {
    try {
        console.log(JSON.parse(req.body));
        res.status(200).json({ success: true });
    } catch (error) {
        console.log(error);
    }
}
