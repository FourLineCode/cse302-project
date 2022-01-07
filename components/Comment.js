import { TrashIcon } from "@heroicons/react/solid";
import { formatDistanceToNow } from "date-fns";
import { useContext, useState } from "react";
import { AuthContext } from "./Context";

export function Comment({ comment }) {
  const auth = useContext(AuthContext);
  const [state, setState] = useState(true);

  const deleteComment = async () => {
    try {
      const res = await fetch(`/api/post/comment/delete/${comment.id}`);
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
      <div className="flex items-center space-x-2">
        <div className="flex items-center justify-center w-8 h-8 text-xl text-gray-400 bg-gray-700 rounded-full">
          {comment.author.username[0].toUpperCase()}
        </div>
        <div>
          <div className="font-semibold text-md">{comment.author.username}</div>
          <div className="text-xs text-gray-400">
            {formatDistanceToNow(new Date(comment.created_at))}
          </div>
        </div>
      </div>
      <div className="pt-2 pl-8 text-md">{comment.comment_body}</div>
      {auth.user.id === comment.author.id && (
        <div className="flex justify-end px-8 pt-2">
          <div
            onClick={deleteComment}
            className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full"
          >
            <TrashIcon className="w-5 h-5 text-red-500" />
          </div>
        </div>
      )}
    </div>
  ) : null;
}
