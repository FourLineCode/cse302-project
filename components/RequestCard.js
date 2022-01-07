import { formatDistanceToNow } from "date-fns";
import { useRouter } from "next/router";
import { useState } from "react";

export function RequestCard({ request }) {
  const router = useRouter();
  const [state, setState] = useState(true);

  const accept = async () => {
    try {
      const res = await fetch("/api/request/accept", {
        method: "POST",
        body: JSON.stringify({
          from: request.from_user_id,
          to: request.to_user_id,
        }),
      });
      const data = await res.json();
      if (data.success) {
        setState(false);
      }
    } catch (error) {
      toast.error(error.message);
    }
  };

  const decline = async () => {
    try {
      const res = await fetch("/api/request/decline", {
        method: "POST",
        body: JSON.stringify({
          from: request.from_user_id,
          to: request.to_user_id,
        }),
      });
      const data = await res.json();
      if (data.success) {
        setState(false);
      }
    } catch (error) {
      toast.error(error.message);
    }
  };

  return state ? (
    <div className="w-full p-4 space-y-4 bg-gray-800 rounded-lg">
      <div
        onClick={() => router.push(`/profile/${request.from_user_id}`)}
        className="flex items-center space-x-2 cursor-pointer"
      >
        <div className="flex items-center justify-center w-12 h-12 text-3xl font-bold text-gray-400 bg-gray-700 rounded-full">
          R
        </div>
        <div>
          <div className="font-semibold text-md">
            {request.from_user.username}
          </div>
          <div className="text-sm text-gray-400">{`${formatDistanceToNow(
            new Date(request.created_at)
          )} ago`}</div>
        </div>
      </div>
      <div className="flex items-center space-x-4 justify-evenly">
        <button
          onClick={decline}
          className="w-full px-2 py-1 font-bold bg-transparent rounded-lg ring-2 ring-green-500 hover:bg-green-500 hover:bg-opacity-40"
        >
          Decline
        </button>
        <button
          onClick={accept}
          className="w-full px-2 py-1 font-bold bg-green-500 rounded-lg hover:bg-green-600"
        >
          Accept
        </button>
      </div>
    </div>
  ) : null;
}
