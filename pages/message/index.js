import { useRouter } from "next/router";
import { useEffect } from "react";
import { Layout } from "../../components/Layout";

export default function MessageIndex() {
  const router = useRouter();

  useEffect(() => {
    router.push("/message/null");
  }, []);

  return <Layout />;
}
