import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import { AuthContext } from "../components/Context";
import { Navbar } from "./Navbar";

export function Layout({ children }) {
  const router = useRouter();
  const auth = useContext(AuthContext);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!auth.refreshing) {
      if (!auth.authorized) {
        router.push("/login");
      } else {
        setLoading(false);
      }
    }
  }, [auth.refreshing]);

  return (
    <main>
      <Navbar />
      {loading ? (
        <div className="flex items-center justify-center w-full min-h-screen text-xl font-bold">
          Loading...
        </div>
      ) : (
        children
      )}
    </main>
  );
}
