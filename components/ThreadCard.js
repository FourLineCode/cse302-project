import { formatDistanceToNow } from "date-fns";
import Link from "next/link";

export function ThreadCard({ thread, onClick, active = false }) {
    return (
        <Link href={`/message/${thread.id}`}>
            <a
                onClick={onClick}
                className={`p-2.5 space-x-2 w-full rounded-lg flex items-center ${
                    active ? "bg-gray-800" : ""
                }`}
            >
                <div className="flex items-center justify-center w-12 h-12 text-3xl font-bold text-gray-400 bg-gray-700 rounded-full">
                    {thread.user.username[0].toUpperCase()}
                </div>
                <div>
                    <div className="text-xl font-semibold">{thread.user.username}</div>
                    <div className="text-sm text-gray-400">
                        {formatDistanceToNow(new Date(thread.created_at))}
                    </div>
                </div>
            </a>
        </Link>
    );
}
