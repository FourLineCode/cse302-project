import Link from "next/link";
import { useRouter } from "next/router";
import { useContext } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "../components/Context";

export default function Login() {
  const router = useRouter();
  const auth = useContext(AuthContext);

  const onSubmit = async (e) => {
    e.preventDefault();

    const formData = new FormData(e.target);
    const input = {
      email: formData.get("email"),
      password: formData.get("password"),
    };

    const res = await fetch("/api/login", {
      method: "POST",
      body: JSON.stringify(input),
    });
    const data = await res.json();

    if (data.success) {
      toast.success("Successfully logged in");
      auth.setAuth({ authorized: true, user: data.user });
      router.push("/home");
    } else {
      toast.error(data.message ?? "Something went wrong");
    }
  };

  return (
    <div className="flex items-center justify-center w-screen h-screen">
      <div className="w-full max-w-lg p-4 bg-gray-800 rounded-lg shadow-lg">
        <div className="text-4xl font-bold text-center">Login</div>
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
