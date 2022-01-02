export default async function handler(req, res) {
    try {
        console.log(JSON.parse(req.body));
    } catch (error) {
        console.log(error);
    }
}
