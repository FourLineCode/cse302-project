import { formatDistanceToNow } from "date-fns";
import Link from "next/link";

export function Usercard({ user }) {
    return (
        <Link href={`/profile/${user.id}`}>
            <a className="p-4 space-x-2 w-full bg-gray-800 rounded-lg flex items-center">
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    {user.username[0].toUpperCase()}
                </div>
                <div>
                    <div className="font-semibold text-xl">{user.username}</div>
                    <div className="text-sm text-gray-400">{`Joined ${formatDistanceToNow(
                        new Date(user.created_at)
                    )}`}</div>
                </div>
            </a>
        </Link>
    );
}
