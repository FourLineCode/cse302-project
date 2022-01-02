import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import { AuthContext } from "../components/Context";
import { Layout } from "../components/Layout";

export default function Search() {
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
        <Layout>
            <div className="flex items-center justify-center w-screen h-screen text-xl font-bold">
                Loading...
            </div>
        </Layout>
    ) : (
        <Layout>
            <div className="flex items-center justify-center w-screen h-screen text-xl font-bold">
                Search
            </div>
        </Layout>
    );
}
