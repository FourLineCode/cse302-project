import { useContext, useState } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "./Context";

export function RequestButton({ state: initial, user }) {
    const auth = useContext(AuthContext);
    const [state, setState] = useState(initial);

    const addFriend = async () => {
        try {
            const res = await fetch("/api/request/send", {
                method: "POST",
                body: JSON.stringify({
                    from: auth.user.id,
                    to: user.id,
                }),
            });
            const data = await res.json();
            if (data.success) {
                setState("SENT");
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    const unfriend = async () => {
        try {
            const res = await fetch("/api/request/unfriend", {
                method: "POST",
                body: JSON.stringify({
                    first: auth.user.id,
                    second: user.id,
                }),
            });
            const data = await res.json();
            if (data.success) {
                setState("NONE");
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    const unsend = async () => {
        try {
            const res = await fetch("/api/request/unsend", {
                method: "POST",
                body: JSON.stringify({
                    from: auth.user.id,
                    to: user.id,
                }),
            });
            const data = await res.json();
            if (data.success) {
                setState("NONE");
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    const accept = async () => {
        try {
            const res = await fetch("/api/request/accept", {
                method: "POST",
                body: JSON.stringify({
                    from: user.id,
                    to: auth.user.id,
                }),
            });
            const data = await res.json();
            if (data.success) {
                setState("FRIEND");
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    const decline = async () => {
        try {
            const res = await fetch("/api/request/decline", {
                method: "POST",
                body: JSON.stringify({
                    from: user.id,
                    to: auth.user.id,
                }),
            });
            const data = await res.json();
            if (data.success) {
                setState("NONE");
            }
        } catch (error) {
            toast.error(error.message);
        }
    };

    return state === "NONE" ? (
        <button
            onClick={addFriend}
            className="p-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
        >
            Add Friend
        </button>
    ) : state === "FRIEND" ? (
        <button
            onClick={unfriend}
            className="p-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
        >
            Unfriend
        </button>
    ) : state === "SENT" ? (
        <button
            onClick={unsend}
            className="p-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
        >
            Unsend Request
        </button>
    ) : state === "PENDING" ? (
        <>
            <button
                onClick={decline}
                className="p-2 font-bold bg-transparent rounded-lg hover:bg-green-500 hover:bg-opacity-40 ring-2 ring-green-500"
            >
                Decline
            </button>
            <button
                onClick={accept}
                className="p-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
            >
                Accept Request
            </button>
        </>
    ) : null;
}
