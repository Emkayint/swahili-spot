import "./Login.css"
import { Icon } from "@iconify/react";

function Login(){

  return (
    <div className="login">
      <div className="roww">
        <div className="col-6 col-s-7 form">
          <div className="header">
            <p>Get Started</p>
          </div>
          <form>
            <div className="username">
              <Icon
                icon="icon-park-solid:edit-name"
                color="#f3a446"
                width="48"
                height="48"
              />
              <input type="text" placeholder="Username" />
            </div>
            <hr />
            <div className="username">
              <Icon
                icon="bi:shield-lock-fill"
                color="#f3a446"
                width="48"
                height="48"
              />
              <input type="password" placeholder="password" />
            </div>
            <hr></hr>
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

export default Login