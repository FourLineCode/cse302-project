import { AnnotationIcon, HeartIcon, TrashIcon } from "@heroicons/react/solid";
import { formatDistanceToNow } from "date-fns";
import Link from "next/link";
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
  const [state, setState] = useState(true);

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

  const deletePost = async () => {
    try {
      const res = await fetch(`/api/post/delete/${post.id}`);
      const data = await res.json();
      if (data.success) {
        setState(false);
      }
    } catch (error) {
      toast.error(error.message);
    }
  };

  return state ? (
    <div className="w-full p-4 bg-gray-800 rounded-lg shadow-lg">
      <Link href={`/profile/${post.author_id}`}>
        <div className="flex items-center space-x-2 cursor-pointer">
          <div className="flex items-center justify-center w-12 h-12 text-3xl font-bold text-gray-400 bg-gray-700 rounded-full">
            {post.author.username[0].toUpperCase()}
          </div>
          <div>
            <div className="text-xl font-semibold">{post.author.username}</div>
            <div className="text-sm text-gray-400">
              {formatDistanceToNow(new Date(post.created_at))}
            </div>
          </div>
        </div>
      </Link>
      <div className="pt-4 pl-12 text-lg">{post.post_body}</div>
      <div className="flex justify-between px-12 pt-4">
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
            <div
              onClick={deletePost}
              className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full"
            >
              <TrashIcon className="w-5 h-5 text-red-500" />
            </div>
          )}
        </div>
      </div>
    </div>
  ) : null;
}
