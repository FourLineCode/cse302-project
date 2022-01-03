import Link from "next/link";

export function ThreadCard({ active = false }) {
    return (
        <Link href="/message/1">
            <a
                className={`p-2.5 space-x-2 w-full rounded-lg flex items-center ${
                    active ? "bg-gray-800" : ""
                }`}
            >
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-xl">Username</div>
                    <div className="text-sm text-gray-400">32 minutes ago</div>
                </div>
            </a>
        </Link>
    );
}
