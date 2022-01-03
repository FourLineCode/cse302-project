import { TrashIcon } from "@heroicons/react/solid";

export function Comment() {
    return (
        <div className="p-4 rounded-lg bg-gray-800 w-full shadow-lg">
            <div className="flex space-x-2 items-center">
                <div className="rounded-full w-8 h-8 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-md">Username</div>
                    <div className="text-xs text-gray-400">12 minute ago</div>
                </div>
            </div>
            <div className="pl-8 pt-2 text-md">
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
            </div>
            <div className="flex pt-2 px-8 justify-end">
                <div className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full">
                    <TrashIcon className="w-5 h-5 text-red-500" />
                </div>
            </div>
        </div>
    );
}
