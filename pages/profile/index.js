import { useRouter } from "next/router";
import { useContext, useEffect } from "react";
import { AuthContext } from "../../components/Context";
import { Layout } from "../../components/Layout";

export default function ProfileIndex() {
  const auth = useContext(AuthContext);
  const router = useRouter();

  useEffect(() => {
    if (auth.authorized) {
      router.push(`/profile/${auth.user.id}`);
    }
  }, [auth.authorized]);

  return <Layout />;
}
