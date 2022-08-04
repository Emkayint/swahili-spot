import { useContext, useState } from 'react';
import { Route, Routes } from 'react-router-dom';
import './App.css';
import Login from './components/login/Login';
import Signup from './components/signup/signup';
import Menu from './components/menu/Menu';
import Cart from "./components/cart/cart";
import Board from './components/dashboard/Board/Board';
import Navbar from './components/Navbar/Navbar';
import { UserContext } from './context/user';

function App() {
  const {user, setUser} = useContext(UserContext)
  
  console.log(user)
  return (
    <div className="App">
      <Navbar />
      <div className="routes">z
        <Routes>
          <Route path="/dashboard" element={<Board />} />
          <Route
            path="/login"
            element={<Login/>}
          />
          <Route
            path="/signin"
            element={<Signup />}
          />
          <Route path="/cart" element={<Cart />} />
          <Route path="/" element={<Menu />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;
