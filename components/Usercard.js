import { formatDistanceToNow } from "date-fns";
import Link from "next/link";

export function Usercard({ user }) {
    return (
        <Link href={`/profile/${user.id}`}>
            <a className="flex items-center w-full p-4 space-x-2 bg-gray-800 rounded-lg">
                <div className="flex items-center justify-center w-12 h-12 text-3xl font-bold text-gray-400 bg-gray-700 rounded-full">
                    {user.username[0].toUpperCase()}
                </div>
                <div>
                    <div className="text-xl font-semibold">{user.username}</div>
                    <div className="text-sm text-gray-400">{`Joined ${formatDistanceToNow(
                        new Date(user.created_at)
                    )}`}</div>
                </div>
            </a>
        </Link>
    );
}
