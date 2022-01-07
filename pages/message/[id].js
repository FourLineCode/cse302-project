import { useRouter } from "next/router";
import { useContext, useEffect, useRef, useState } from "react";
import toast from "react-hot-toast";
import { AuthContext } from "../../components/Context";
import { Layout } from "../../components/Layout";
import { Message } from "../../components/Message";
import { ThreadCard } from "../../components/ThreadCard";

export default function MessagePage() {
  const auth = useContext(AuthContext);
  const router = useRouter();
  const { id } = router.query;
  const [threads, setThreads] = useState([]);
  const [active, setActive] = useState(-1);
  const [messages, setMessages] = useState([]);
  let interval;
  const container = useRef(null);

  const getAllThreads = async () => {
    try {
      const res = await fetch(`/api/message/threads/${auth.user.id}`);
      const data = await res.json();
      setThreads(data);
    } catch (error) {
      toast.error(error.message);
    }
  };

  useEffect(() => {
    if (auth.authorized) {
      getAllThreads();
    }
  }, [auth]);

  const getMessages = async () => {
    try {
      const res = await fetch(`/api/message/all/${id}`);
      const data = await res.json();
      setMessages(data);
    } catch (error) {
      toast.error(error.message);
    }
  };

  useEffect(() => {
    if (id !== "null") {
      getMessages();
      interval = setInterval(getMessages, 1000);
    } else {
      clearInterval(interval);
    }

    return () => {
      clearInterval(interval);
    };
  }, [id]);

  useEffect(() => {
    return () => {
      clearInterval(interval);
    };
  }, []);

  useEffect(() => {
    if (container.current) {
      container.current.scrollTop = container.current.scrollHeight;
    }
  }, [messages]);

  const onSubmit = async (e) => {
    e.preventDefault();

    const form = new FormData(e.target);

    try {
      const res = await fetch("/api/message/send", {
        method: "POST",
        body: JSON.stringify({
          author_id: auth.user.id,
          thread_id: id,
          body: form.get("message"),
        }),
      });
      const data = await res.json();
      if (data.success) {
        getMessages();
      }
    } catch (error) {
      toast.error(error.message);
    }

    e.target.reset();
  };

  return (
    <Layout>
      <div className="max-w-6xl space-x-4 mx-auto flex py-4 h-[870px]">
        <div className="px-2 space-y-2 border-r border-gray-800 w-80">
          {threads.length > 0 &&
            threads.map((thread) => (
              <ThreadCard
                thread={thread}
                active={active === thread.id}
                onClick={() => setActive(thread.id)}
                key={thread.id}
              />
            ))}
        </div>
        <div className="flex-1 space-y-4">
          {id === "null" ? (
            <div className="flex items-center justify-center w-full h-full text-2xl font-bold text-gray-500">
              Click on a thread to send message
            </div>
          ) : (
            <div className="flex flex-col w-full h-full">
              <div
                ref={container}
                className="flex-1 w-full mb-4 space-y-4 overflow-y-auto divide-y divide-gray-800"
              >
                {messages.length > 0 &&
                  messages.map((message) => (
                    <Message message={message} key={message.id} />
                  ))}
              </div>
              <form action="submit" onSubmit={onSubmit}>
                <input
                  type="text"
                  name="message"
                  placeholder="Send a message..."
                  className="w-full p-3 text-white bg-gray-800 rounded-lg"
                />
              </form>
            </div>
          )}
        </div>
      </div>
    </Layout>
  );
}
