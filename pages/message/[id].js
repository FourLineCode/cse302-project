import { useRouter } from "next/router";
import { Layout } from "../../components/Layout";
import { Message } from "../../components/Message";
import { ThreadCard } from "../../components/ThreadCard";

export default function MessagePage() {
    const router = useRouter();
    const { id } = router.query;

    const onSubmit = (e) => {
        e.preventDefault();

        const form = new FormData(e.target);
        console.log({ post: form.get("post") });

        e.target.reset();
    };

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
                            <div className="w-full divide-y divide-gray-800 space-y-4 flex-1 overflow-y-auto">
                                <Message />
                                <Message />
                                <Message />
                                <Message />
                                <Message />
                            </div>
                            <form action="submit" onSubmit={onSubmit}>
                                <input
                                    type="text"
                                    name="post"
                                    placeholder="Send a message..."
                                    className="w-full p-3 bg-gray-800 text-white rounded-lg"
                                />
                            </form>
                        </div>
                    )}
                </div>
            </div>
        </Layout>
    );
}
