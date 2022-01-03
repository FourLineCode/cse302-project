import { Comment } from "../../components/Comment";
import { Layout } from "../../components/Layout";
import { Post } from "../../components/Post";

export default function PostPage() {
    return (
        <Layout>
            <div className="max-w-3xl mx-auto py-4 min-h-screen">
                <Post />
                <div className="text-gray-400 ml-4 mt-4">Comments</div>
                <div className="space-y-4 pt-2">
                    <Comment />
                    <Comment />
                    <Comment />
                    <Comment />
                    <Comment />
                    <Comment />
                    <Comment />
                    <Comment />
                </div>
            </div>
        </Layout>
    );
}
