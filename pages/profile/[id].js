import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "../../components/Context";
import { Layout } from "../../components/Layout";
import { Post } from "../../components/Post";
import { RequestButton } from "../../components/RequestButton";

export default function Profile() {
    const router = useRouter();
    const id = router.query.id;
    const auth = useContext(AuthContext);
    const [user, setUser] = useState(null);
    const [posts, setPosts] = useState([]);
    const [state, setState] = useState("NONE");

    const getUser = async () => {
        try {
            const res = await fetch(`/api/user/${id}`);
            const data = await res.json();
            setUser(data);
        } catch (error) {
            toast.error(error.message);
        }
    };

    const getState = async () => {
        try {
            const res = await fetch(`/api/user/state`, {
                method: "POST",
                body: JSON.stringify({
                    curr_id: auth.user.id,
                    user_id: id,
                }),
            });
            const data = await res.json();
            setState(data.state);
        } catch (error) {
            toast.error(error.message);
        }
    };

    const getPosts = async () => {
        try {
            const res = await fetch(`/api/user/posts/${id}`);
            const data = await res.json();
            setPosts(data);
        } catch (error) {
            toast.error(error.message);
        }
    };

    useEffect(() => {
        if (id) {
            getUser();
            getState();
            getPosts();
        }
    }, [id]);

    return (
        <Layout>
            {user && (
                <div className="max-w-4xl mx-auto min-h-screen">
                    <div className="w-full h-64 bg-gradient-to-t from-gray-600 to-gray-900"></div>
                    <div className="w-full flex">
                        <div className="rounded-full ring-2 ring-green-500 w-44 h-44 -mt-12 bg-gray-700 flex justify-center items-center text-6xl text-gray-300 ml-12">
                            <span>{user.username[0].toUpperCase()}</span>
                        </div>
                        <div className="flex justify-between flex-1">
                            <div className="flex flex-col pt-6 pl-6">
                                <div className="text-2xl font-semibold">
                                    <span className="mr-1 text-gray-500">@</span>
                                    <span>{user.username}</span>
                                </div>
                                <div className="text-gray-400">{user.email}</div>
                            </div>
                            <div className="space-x-4 pt-8">
                                {user.id !== auth.user.id && (
                                    <>
                                        {state === "FRIEND" && (
                                            <button className="p-2 ring-2 font-bold ring-green-500 rounded-lg hover:bg-green-500 hover:bg-opacity-40 bg-transparent">
                                                Message
                                            </button>
                                        )}
                                        <RequestButton
                                            state={state}
                                            user={user}
                                            key={state + user.id}
                                        />
                                    </>
                                )}
                            </div>
                        </div>
                    </div>
                    <div className="border-b-2 border-green-500 text-center text-xl font-bold mt-4">
                        Posts
                    </div>
                    <div className="w-full space-y-4 p-4">
                        {posts.length > 0 &&
                            posts.map((post) => <Post post={post} key={post.id} />)}
                    </div>
                </div>
            )}
        </Layout>
    );
}
