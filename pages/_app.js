import { Toaster } from "react-hot-toast";
import { AuthContextProvider } from "../components/Context";
import "../styles/tailwind.css";

function MyApp({ Component, pageProps }) {
  return (
    <AuthContextProvider>
      <Component {...pageProps} />
      <Toaster position="bottom-center" />
    </AuthContextProvider>
  );
}

export default MyApp;
