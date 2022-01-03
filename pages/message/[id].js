import { useRouter } from "next/router";
import { useState } from "react";
import { Layout } from "../../components/Layout";
import { ThreadCard } from "../../components/ThreadCard";

export default function Message() {
    const router = useRouter();
    const { id } = router.query;
    const [post, setPost] = useState("");

    return (
        <Layout>
            <div className="max-w-6xl space-x-4 mx-auto flex py-4 h-[870px]">
                <div className="w-80 space-y-2 border-r border-gray-800 px-2">
                    <ThreadCard active={true} />
                    <ThreadCard />
                    <ThreadCard />
                    <ThreadCard />
                    <ThreadCard />
                    <ThreadCard />
                    <ThreadCard />
                </div>
                <div className="flex-1 space-y-4">
                    {id === "null" ? (
                        <div className="w-full h-full flex text-2xl text-gray-500 font-bold justify-center items-center">
                            Click on a thread to send message
                        </div>
                    ) : (
                        <div className="w-full h-full flex flex-col">
                            <div className="w-full flex-1 overflow-y-auto">
                                <div className="">
                                    <span className="text-red-400 font-bold">Username: </span>
                                    <span>
                                        Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                        At, corporis. Accusantium quasi officia, eum libero,
                                        voluptatibus dignissimos, harum esse reiciendis ex
                                        repellendus placeat quam?
                                    </span>
                                </div>
                            </div>
                            <input
                                type="text"
                                placeholder="Send a message..."
                                className="w-full p-3 bg-gray-800 text-white rounded-lg"
                            />
                        </div>
                    )}
                </div>
            </div>
        </Layout>
    );
}
