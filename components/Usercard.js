import Link from "next/link";

export function Usercard() {
    return (
        <Link href="/profile">
            <a className="p-4 space-x-2 w-full bg-gray-800 rounded-lg flex items-center">
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-xl">Username</div>
                    <div className="text-sm text-gray-400">Joined 12 months ago</div>
                </div>
            </a>
        </Link>
    );
}
