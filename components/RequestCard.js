import { useRouter } from "next/router";

export function RequestCard() {
    const router = useRouter();

    return (
        <div className="p-4 space-y-4 w-full bg-gray-800 rounded-lg">
            <div
                onClick={() => router.push("/profile")}
                className="flex cursor-pointer items-center space-x-2"
            >
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-md">Username</div>
                    <div className="text-sm text-gray-400">Joined 12 months ago</div>
                </div>
            </div>
            <div className="flex justify-evenly items-center space-x-4">
                <button className="px-2 py-1 w-full ring-2 font-bold ring-green-500 rounded-lg hover:bg-green-500 hover:bg-opacity-40 bg-transparent">
                    Decline
                </button>
                <button className="px-2 py-1 w-full rounded-lg font-bold hover:bg-green-600 bg-green-500">
                    Accept
                </button>
            </div>
        </div>
    );
}
