import { createContext, useEffect, useState } from "react";

export const AuthContext = createContext();

export function AuthContextProvider({ children }) {
    const [state, setState] = useState({
        authorized: false,
        refreshing: true,
        user: null,
    });

    useEffect(() => {
        const store = JSON.parse(window.localStorage.getItem("auth"));
        if (store && store.authorized) {
            setState(store);
        } else {
            window.localStorage.clear();
        }
        setState((prev) => ({ ...prev, refreshing: false }));
    }, []);

    useEffect(() => {
        if (state.authorized) {
            window.localStorage.setItem("auth", JSON.stringify(state));
        }
    }, [state]);

    return (
        <AuthContext.Provider value={{ ...state, setAuth: setState }}>
            {children}
        </AuthContext.Provider>
    );
}
