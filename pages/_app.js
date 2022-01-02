import { Toaster } from "react-hot-toast";
import "../styles/tailwind.css";

function MyApp({ Component, pageProps }) {
    return (
        <>
            <Component {...pageProps} />
            <Toaster position="bottom-center" />
        </>
    );
}

export default MyApp;
