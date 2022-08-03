import "./Navbar.css"
import {NavLink} from "react-router-dom"

import React from 'react'

function Navbar() {
  return (
    <div className="navbar">
      <div className="logo">
        Swahili Spot
      </div>
    <NavLink to="/">
      Home
    </NavLink>
    <NavLink to="/login">
      Login
    </NavLink>
    <NavLink to="/signin">
      SigIn
    </NavLink>
    <NavLink to='/dashboard'>
      Dashboard
    </NavLink>

    </div>
  )
}

export default Navbar