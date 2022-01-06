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
        <div className="p-4 space-y-4 w-full bg-gray-800 rounded-lg">
            <div
                onClick={() => router.push(`/profile/${request.from_user_id}`)}
                className="flex cursor-pointer items-center space-x-2"
            >
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-md">{request.from_user.username}</div>
                    <div className="text-sm text-gray-400">{`${formatDistanceToNow(
                        new Date(request.created_at)
                    )} ago`}</div>
                </div>
            </div>
            <div className="flex justify-evenly items-center space-x-4">
                <button
                    onClick={decline}
                    className="px-2 py-1 w-full ring-2 font-bold ring-green-500 rounded-lg hover:bg-green-500 hover:bg-opacity-40 bg-transparent"
                >
                    Decline
                </button>
                <button
                    onClick={accept}
                    className="px-2 py-1 w-full rounded-lg font-bold hover:bg-green-600 bg-green-500"
                >
                    Accept
                </button>
            </div>
        </div>
    ) : null;
}
