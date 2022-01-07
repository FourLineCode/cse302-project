import { ChatIcon, HomeIcon, SearchIcon, UserIcon } from "@heroicons/react/solid";
import Link from "next/link";

export function Navbar() {
    return (
        <div className="flex justify-center drop-shadow-lg sticky top-0 w-full space-x-8 bg-gray-800 h-14">
            <Link href="/home">
                <div className="flex flex-col items-center justify-center h-full px-4 cursor-pointer hover:bg-gray-700">
                    <HomeIcon className="w-6 h-6" />
                    <div className="text-sm">Home</div>
                </div>
            </Link>
            <Link href="/message">
                <div className="flex flex-col items-center justify-center h-full px-4 cursor-pointer hover:bg-gray-700">
                    <ChatIcon className="w-6 h-6" />
                    <div className="text-sm">Message</div>
                </div>
            </Link>
            <Link href="/profile">
                <div className="flex flex-col items-center justify-center h-full px-4 cursor-pointer hover:bg-gray-700">
                    <UserIcon className="w-6 h-6" />
                    <div className="text-sm">Profile</div>
                </div>
            </Link>
            <Link href="/search">
                <div className="flex flex-col items-center justify-center h-full px-4 cursor-pointer hover:bg-gray-700">
                    <SearchIcon className="w-6 h-6" />
                    <div className="text-sm">Search</div>
                </div>
            </Link>
        </div>
    );
}
