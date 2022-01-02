export async function fetchApi(...args) {
    try {
        const res = await fetch(...args);
        const data = await res.json();
        return data;
    } catch (error) {
        throw error;
    }
}
