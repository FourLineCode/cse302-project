import { AuthContextProvider } from "../components/Context";
import "../styles/tailwind.css";

function MyApp({ Component, pageProps }) {
    return (
        <AuthContextProvider>
            <Component {...pageProps} />
        </AuthContextProvider>
    );
}

export default MyApp;
