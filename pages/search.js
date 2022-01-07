import { useState } from "react";
import toast from "react-hot-toast";
import { Layout } from "../components/Layout";
import { Usercard } from "../components/Usercard";

export default function Search() {
    const [users, setUsers] = useState([]);

    const onSubmit = async (e) => {
        e.preventDefault();

        setUsers([]);

        const form = new FormData(e.target);
        const searchTerm = form.get("search");

        if (!searchTerm.trim()) {
            return;
        }

        try {
            const res = await fetch(`/api/user/search/${searchTerm}`);
            const data = await res.json();
            setUsers(data);
        } catch (error) {
            toast.error(error.message);
        }
    };

    return (
        <Layout>
            <div className="max-w-2xl mx-auto min-h-screen">
                <form onSubmit={onSubmit} action="submit">
                    <input
                        type="text"
                        name="search"
                        placeholder="Search..."
                        className="w-full p-3 my-4 rounded-lg bg-gray-700 text-white"
                    />
                </form>
                <div className="space-y-4 py-2">
                    {users.length > 0 &&
                        users.map((user) => <Usercard user={user} key={user.id} />)}
                </div>
            </div>
        </Layout>
    );
}
