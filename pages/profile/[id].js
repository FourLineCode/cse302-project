import { useContext } from "react";
import { AuthContext } from "../../components/Context";
import { Layout } from "../../components/Layout";
import { Post } from "../../components/Post";

export default function Profile() {
    const auth = useContext(AuthContext);

    if (!auth.authorized) {
        return <Layout />;
    }

    return (
        <Layout>
            <div className="max-w-4xl mx-auto min-h-screen">
                <div className="w-full h-64 bg-gradient-to-t from-gray-800 to-gray-900"></div>
                <div className="w-full flex">
                    <div className="rounded-full w-44 h-44 -mt-12 bg-gray-700 flex justify-center items-center text-6xl text-gray-300 ml-12">
                        <span>{auth.user.username[0].toUpperCase()}</span>
                    </div>
                    <div className="flex justify-between flex-1">
                        <div className="flex flex-col pt-6 pl-6">
                            <div className="text-2xl font-semibold">
                                <span className="mr-1 text-gray-500">@</span>
                                <span>{auth.user.username}</span>
                            </div>
                            <div className="text-gray-400">{auth.user.email}</div>
                        </div>
                        <div className="space-x-4 pt-8">
                            <button className="p-2 ring-2 font-bold ring-green-500 rounded-lg hover:bg-green-500 hover:bg-opacity-40 bg-transparent">
                                Message
                            </button>
                            <button className="p-2 rounded-lg font-bold hover:bg-green-600 bg-green-500">
                                Add Friend
                            </button>
                        </div>
                    </div>
                </div>
                <div className="border-b-2 border-green-500 text-center text-xl font-bold mt-4">
                    Posts
                </div>
                <div className="w-full space-y-4 p-4">
                    <Post />
                    <Post />
                    <Post />
                    <Post />
                    <Post />
                    <Post />
                    <Post />
                </div>
            </div>
        </Layout>
    );
}
