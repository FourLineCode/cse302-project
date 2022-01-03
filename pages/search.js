import { Layout } from "../components/Layout";
import { Usercard } from "../components/Usercard";

export default function Search() {
    return (
        <Layout>
            <div className="max-w-2xl mx-auto min-h-screen">
                <input
                    type="text"
                    placeholder="Search..."
                    className="w-full p-3 my-4 rounded-lg bg-gray-700 text-white"
                />
                <div className="space-y-4 py-2">
                    <Usercard />
                    <Usercard />
                    <Usercard />
                    <Usercard />
                    <Usercard />
                    <Usercard />
                </div>
            </div>
        </Layout>
    );
}
