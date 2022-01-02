import { useEffect } from "react";

export default function Home() {
    const fetchData = async () => {
        try {
            const res = await fetch("/api/hello");
            const data = await res.json();
            console.log(data);
        } catch (error) {
            console.log(error);
        }
    };

    useEffect(() => {
        fetchData();
    }, []);

    return (
        <div className="w-screen h-screen flex justify-center items-center bg-gray-800">
            Hello World
        </div>
    );
}
