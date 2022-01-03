import { AnnotationIcon, HeartIcon } from "@heroicons/react/solid";

export function Post() {
    return (
        <div className="p-4 rounded-lg bg-gray-800 w-full">
            <div className="flex space-x-2 items-center">
                <div className="rounded-full w-12 h-12 bg-gray-700 flex justify-center items-center text-xl text-gray-400">
                    R
                </div>
                <div>
                    <div className="font-semibold text-xl">Username</div>
                    <div className="text-sm text-gray-400">12 minute ago</div>
                </div>
            </div>
            <div className="pl-12 pt-4 text-lg">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores qui nobis
                delectus dolorem optio quia numquam recusandae enim magni? Repudiandae rem aliquid
                magni voluptatibus consectetur, ipsam consequuntur odio soluta? Culpa.
            </div>
            <div className="flex pt-4 px-12 space-x-4">
                <div className="p-1.5 items-center space-x-2 hover:bg-gray-500 flex hover:bg-opacity-50 cursor-pointer rounded-full">
                    <HeartIcon className="w-5 h-5 text-green-500" />
                    <span>32</span>
                </div>
                <div className="p-1.5 space-x-2 hover:bg-gray-500 flex items-center hover:bg-opacity-50 cursor-pointer rounded-full">
                    <AnnotationIcon className="w-5 h-5" />
                    <span>5</span>
                </div>
            </div>
        </div>
    );
}
