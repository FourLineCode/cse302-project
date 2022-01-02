import Link from "next/link";
import toast from "react-hot-toast";

export default function Signup() {
    const onSubmit = async (e) => {
        e.preventDefault();

        const formData = new FormData(e.target);
        const input = {
            email: formData.get("email"),
            username: formData.get("username"),
            password: formData.get("password"),
            bio: formData.get("bio"),
        };

        const res = await fetch("/api/signup", {
            method: "POST",
            body: JSON.stringify(input),
        });
        const data = await res.json();
        console.log(data);
        if (data.success) {
            toast.success("Successfully signed up");
        } else {
            toast.error(data.message ?? "Something went wrong");
        }
    };

    return (
        <div className="flex items-center justify-center w-screen h-screen">
            <div className="w-full max-w-lg p-4 bg-gray-800 rounded-lg shadow-lg">
                <div className="text-4xl font-bold text-center">Sign Up</div>
                <form action="submit" onSubmit={onSubmit} className="p-4 space-y-2">
                    <div>
                        <label htmlFor="email">Email</label>
                        <input
                            type="email"
                            name="email"
                            placeholder="Email"
                            className="w-full p-2 rounded-lg"
                        />
                    </div>
                    <div>
                        <label htmlFor="username">Username</label>
                        <input
                            type="text"
                            name="username"
                            placeholder="Username"
                            className="w-full p-2 rounded-lg"
                        />
                    </div>
                    <div>
                        <label htmlFor="password">Password</label>
                        <input
                            type="password"
                            name="password"
                            placeholder="Password"
                            className="w-full p-2 rounded-lg"
                        />
                    </div>
                    <div>
                        <label htmlFor="bio">Bio</label>
                        <input
                            type="text"
                            name="bio"
                            placeholder="Bio"
                            className="w-full p-2 rounded-lg"
                        />
                    </div>
                    <div>
                        <button
                            type="submit"
                            className="w-full p-2 mt-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
                        >
                            Signup
                        </button>
                        <div className="mt-2 text-center">
                            <span>Have an account?</span>
                            <Link href="/login">
                                <a className="ml-2 font-bold text-green-500 hover:underline">
                                    Login
                                </a>
                            </Link>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    );
}
