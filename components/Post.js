import { AnnotationIcon, HeartIcon, PencilIcon, TrashIcon } from "@heroicons/react/solid";
import { formatDistanceToNow } from "date-fns";
import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "./Context";

export function Post({ post }) {
    const auth = useContext(AuthContext);
    const router = useRouter();
    const [liked, setLiked] = useState(false);
    const [likeCount, setLikeCount] = useState(post.likeCount);
    const [commentCount, setCommentCount] = useState(post.commentCount);

    const getLiked = async () => {
        try {
            const res = await fetch("/api/post/liked", {
                method: "POST",
                body: JSON.stringify({
                    user_id: auth.user.id,
                    post_id: post.id,
                }),
            });
            const data = await res.json();
            console.log({ data });
            setLiked(data.liked);
        } catch (error) {
            toast.error(error.message);
        }
    };

    useEffect(() => {
        getLiked();
    }, [auth.id]);

    const likePost = async () => {
        try {
            if (liked) {
                const res = await fetch(`/api/post/unlike`, {
                    method: "POST",
                    body: JSON.stringify({
                        post_id: post.id,
                        user_id: auth.user.id,
                    }),
                });
                const data = await res.json();
                if (data.success) {
                    setLiked(false);
                    setLikeCount((prev) => prev - 1);
                }
            } else {
                const res = await fetch(`/api/post/like`, {
                    method: "POST",
                    body: JSON.stringify({
                        post_id: post.id,
                        user_id: auth.user.id,
                    }),
                });
                const data = await res.json();
                if (data.success) {
                    setLiked(true);
                    setLikeCount((prev) => prev + 1);
                }
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    return (
        <div className="p-4 rounded-lg bg-gray-800 w-full shadow-lg">
            <div className="flex space-x-2 items-center">
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    {post.author.username[0].toUpperCase()}
                </div>
                <div>
                    <div className="font-semibold text-xl">{post.author.username}</div>
                    <div className="text-sm text-gray-400">
                        {formatDistanceToNow(new Date(post.created_at))}
                    </div>
                </div>
            </div>
            <div className="pl-12 pt-4 text-lg">{post.post_body}</div>
            <div className="flex pt-4 px-12 justify-between">
                <div className="flex space-x-4">
                    <div
                        onClick={likePost}
                        className="p-1.5 items-center space-x-2 hover:bg-gray-500 flex hover:bg-opacity-50 cursor-pointer rounded-full"
                    >
                        <HeartIcon
                            className={`w-5 h-5 ${liked ? "text-green-500" : "text-white"}`}
                        />
                        <span>{likeCount}</span>
                    </div>
                    <div
                        onClick={() => router.push(`/post/${post.id}`)}
                        className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full"
                    >
                        <AnnotationIcon className="w-5 h-5" />
                        <span>{commentCount}</span>
                    </div>
                </div>
                <div className="flex space-x-4">
                    {post.author_id === auth.user.id && (
                        <>
                            <div className="p-1.5 items-center space-x-2 hover:bg-gray-500 flex hover:bg-opacity-50 cursor-pointer rounded-full">
                                <PencilIcon className="w-5 h-5" />
                            </div>
                            <div className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full">
                                <TrashIcon className="w-5 h-5 text-red-500" />
                            </div>
                        </>
                    )}
                </div>
            </div>
        </div>
    );
}
