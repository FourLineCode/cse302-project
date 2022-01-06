import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import toast from "react-hot-toast";
import { Comment } from "../../components/Comment";
import { Layout } from "../../components/Layout";
import { Post } from "../../components/Post";

export default function PostPage() {
    const router = useRouter();
    const id = router.query.id;
    const [post, setPost] = useState(null);

    const getPost = async () => {
        try {
            const res = await fetch(`/api/post/get/${id}`);
            const data = await res.json();
            if (data) {
                setPost(data);
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    useEffect(() => {
        if (id) {
            getPost();
        }
    }, [id]);

    const onSubmit = async (e) => {
        e.preventDefault();

        const form = new FormData(e.target);
        console.log({ comment: form.get("comment") });

        e.target.reset();
    };

    return (
        <Layout>
            {post && (
                <div className="max-w-3xl min-h-screen py-4 mx-auto">
                    <Post post={post} />
                    <form onSubmit={onSubmit} className="flex mt-4 space-x-4">
                        <input
                            type="text"
                            name="comment"
                            placeholder="Comment..."
                            className="w-full p-3 text-white bg-gray-800 rounded-lg"
                        />
                        <button className="px-3 py-2 font-bold bg-green-500 rounded-lg hover:bg-green-600">
                            Comment
                        </button>
                    </form>
                    <div className="mt-4 ml-4 text-gray-400">Comments</div>
                    <div className="pt-2 space-y-4">
                        {post.comments.map((comment) => (
                            <Comment comment={comment} key={comment.id} />
                        ))}
                    </div>
                </div>
            )}
        </Layout>
    );
}
