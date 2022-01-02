import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import { AuthContext } from "../components/Context";

export default function Home() {
    const router = useRouter();
    const auth = useContext(AuthContext);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        if (!auth.authorized) {
            router.push("/login");
        } else {
            setLoading(false);
        }
    }, []);

    return loading ? (
        <div className="flex items-center justify-center w-screen h-screen text-xl font-bold">
            Loading...
        </div>
    ) : (
        <div className="flex items-center justify-center w-screen h-screen text-xl font-bold">
            Home
        </div>
    );
}
