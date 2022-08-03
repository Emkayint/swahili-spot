import "./signup.css";

function Signup() {
  return (
    <div className="signup">
      <div className="roww">
        <div className="col-6 col-s-7 form">
          <div className="header">
            <p>Get Started</p>
          </div>
          <form>
            <div className="username">
              <span
                className="iconify"
                data-icon="icon-park-solid:edit-name"
                style={{ color: "#f3a446" }}
                data-width="48"
                data-height="48"
              ></span>
              <input type="text" placeholder="Username" />
            </div>
            <hr className = "hrs"/>
            <div className="username">
              <span
                className="iconify"
                data-icon="el:phone-alt"
                style={{ color: "#f3a446" }}
                data-width="48"
                data-height="48"
              ></span>
              <input type="text" placeholder="Username" />
            </div>
            <hr className = "hrs" />
            <div className="username">
              <span
                className="iconify"
                data-icon="bi:shield-lock"
                style={{ color: "#f3a446" }}
                data-width="48"
                data-height="48"
              ></span>
              <input type="password" placeholder="password" />
            </div>
            <hr className = "hrs" />
            <div className="buttons">
              <p>Forgot Passord?</p>
              <button type="submit">Sign In</button>
            </div>
          </form>
        </div>
        <div className="col-6 col-s-5 display">
          <header>
            <p>Welcome To</p>
            <img src={require("./1.jpeg")} alt="swahili spot" />
            <span>SWAHILI SPOT</span>
          </header>
          <div className="body">
            <p>
              Get the best of coastal meals in Kenya for value of your money
            </p>
          </div>
          <div className="creator">
            <span>Made With Love</span>
            <span className="span"></span>
            <span>Martin Kariuki</span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Signup;
