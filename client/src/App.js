import { useState } from 'react';
import { Route, Routes } from 'react-router-dom';
import './App.css';
import Login from './components/login/Login';
import Signup from './components/signup/signup';
import Menu from './components/menu/Menu';

import Board from './components/dashboard/Board/Board';
import Navbar from './components/Navbar/Navbar';

function App() {
  const [user, setUser] = useState({
    username: null,
    phone: null,
  })
  return (
    <div className="App">
      <Navbar user = { user } setUser = { setUser }/>
      <div className="routes">
        <Routes>
          <Route path="/" element={<Menu user={user} />} />
          <Route path="/dashboard" element={<Board user={user} />} />
          <Route path="/login" element={<Login user={user} setUser/>} />
          <Route path="/signin" element={<Signup user={user} setUser/>} />
        </Routes>
      </div>
    </div>
  );
}

export default App;
