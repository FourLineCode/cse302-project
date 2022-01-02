import Link from "next/link";
import { fetchApi } from "../lib/fetchApi";

export default function Login() {
    const onSubmit = async (e) => {
        e.preventDefault();

        const formData = new FormData(e.target);
        const data = {
            email: formData.get("email"),
            password: formData.get("password"),
        };

        const res = await fetchApi("/api/login", {
            method: "POST",
            body: JSON.stringify(data),
        });
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
                        <label htmlFor="password">Password</label>
                        <input
                            type="password"
                            name="password"
                            placeholder="Password"
                            className="w-full p-2 rounded-lg"
                        />
                    </div>
                    <div>
                        <button
                            type="submit"
                            className="w-full p-2 mt-2 font-bold bg-green-500 rounded-lg hover:bg-green-600"
                        >
                            Login
                        </button>
                        <div className="mt-2 text-center">
                            <span>Don't have an account?</span>
                            <Link href="/signup">
                                <a className="ml-2 font-bold text-green-500 hover:underline">
                                    Signup
                                </a>
                            </Link>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    );
}
