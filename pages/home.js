import { useState } from "react";
import { Layout } from "../components/Layout";
import { Post } from "../components/Post";

export default function Home() {
    const [post, setPost] = useState("");

    return (
        <Layout>
            <div className="max-w-6xl space-x-4 mx-auto flex py-4 min-h-screen">
                <div className="flex-1 space-y-4">
                    <div className="w-full p-4 shadow-lg bg-gray-800 rounded-lg">
                        <textarea
                            value={post}
                            onChange={(e) => setPost(e.target.value)}
                            placeholder="Share something..."
                            className="w-full resize-none rounded-lg bg-gray-700 p-4 text-white"
                        />
                        <div className="pt-3 items-center flex justify-between">
                            <div className="text-sm text-gray-400">
                                <span>Character length: </span>
                                <span className="text-gray-200">{post.length}</span>
                            </div>
                            <button className="p-2 rounded-lg font-bold hover:bg-green-600 bg-green-500">
                                Share Post
                            </button>
                        </div>
                    </div>
                    <div className="space-y-4">
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                        <Post />
                    </div>
                </div>
                <div className="w-80 h-screen rounded-lg bg-gray-800"></div>
            </div>
        </Layout>
    );
}
