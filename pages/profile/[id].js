import { useRouter } from "next/router";
import { useContext, useEffect, useState } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "../../components/Context";
import { Layout } from "../../components/Layout";
import { Post } from "../../components/Post";
import { RequestButton } from "../../components/RequestButton";

export default function Profile() {
  const router = useRouter();
  const id = router.query.id;
  const auth = useContext(AuthContext);
  const [user, setUser] = useState(null);
  const [posts, setPosts] = useState([]);
  const [state, setState] = useState("NONE");

  const getUser = async () => {
    try {
      const res = await fetch(`/api/user/${id}`);
      const data = await res.json();
      setUser(data);
    } catch (error) {
      toast.error(error.message);
    }
  };

  const getState = async () => {
    try {
      const res = await fetch(`/api/user/state`, {
        method: "POST",
        body: JSON.stringify({
          curr_id: auth.user.id,
          user_id: id,
        }),
      });
      const data = await res.json();
      setState(data.state);
    } catch (error) {
      toast.error(error.message);
    }
  };

  const getPosts = async () => {
    try {
      const res = await fetch(`/api/user/posts/${id}`);
      const data = await res.json();
      setPosts(data);
    } catch (error) {
      toast.error(error.message);
    }
  };

  useEffect(() => {
    if (id) {
      getUser();
      getState();
      getPosts();
    }
  }, [id]);

  const goToThread = async () => {
    try {
      const res = await fetch("/api/message/create", {
        method: "POST",
        body: JSON.stringify({
          participants: [auth.user.id, id],
        }),
      });
      const data = await res.json();
      router.push(`/message/${data.thread_id}`);
    } catch (error) {
      toast.error(error.message);
    }
  };

  return (
    <Layout>
      {user && (
        <div className="max-w-4xl min-h-screen mx-auto">
          <div className="w-full h-64 bg-gradient-to-t from-gray-600 to-gray-900"></div>
          <div className="flex w-full">
            <div className="flex items-center justify-center ml-12 -mt-12 font-bold text-gray-300 bg-gray-700 rounded-full text-8xl ring-2 ring-green-500 w-44 h-44">
              <span>{user.username[0].toUpperCase()}</span>
            </div>
            <div className="flex justify-between flex-1">
              <div className="flex flex-col pt-6 pl-6">
                <div className="text-2xl font-semibold">
                  <span className="mr-1 text-gray-500">@</span>
                  <span>{user.username}</span>
                </div>
                <div className="text-gray-400">{user.email}</div>
              </div>
              <div className="pt-8 space-x-4">
                {user.id !== auth.user.id && (
                  <>
                    {state === "FRIEND" && (
                      <button
                        onClick={goToThread}
                        className="p-2 font-bold bg-transparent rounded-lg ring-2 ring-green-500 hover:bg-green-500 hover:bg-opacity-40"
                      >
                        Message
                      </button>
                    )}
                    <RequestButton
                      state={state}
                      user={user}
                      key={state + user.id}
                    />
                  </>
                )}
              </div>
            </div>
          </div>
          <div className="mt-4 text-xl font-bold text-center border-b-2 border-green-500">
            Posts
          </div>
          <div className="w-full p-4 space-y-4">
            {posts.length > 0 &&
              posts.map((post) => <Post post={post} key={post.id} />)}
          </div>
        </div>
      )}
    </Layout>
  );
}
