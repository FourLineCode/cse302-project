import { createContext, useState } from "react";

export const AuthContext = createContext();

export function AuthContextProvider({ children }) {
    const [state, setState] = useState({
        authorized: false,
        user: null,
    });

    return (
        <AuthContext.Provider value={{ ...state, setAuth: setState }}>
            {children}
        </AuthContext.Provider>
    );
}
