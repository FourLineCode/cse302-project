import { formatDistanceToNow } from "date-fns";

export function Message({ message }) {
    return (
        <div className="pt-2">
            <div className="flex items-center space-x-4">
                <span className="text-lg font-bold text-green-500">{message.author.username}</span>
                <span className="text-xs text-gray-500">
                    {formatDistanceToNow(new Date(message.created_at))}
                </span>
            </div>
            <div>{message.message_body}</div>
        </div>
    );
}
