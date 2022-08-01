import "./Nav.css"

function Nav(){
  return (
      <div className="nav">
        <header>Swahili Spot</header>
        <div className="links">
          <div className="user-links">
            <span
              className="iconify"
              data-icon="bxs:dashboard"
              style={{ color: "white" }}
              data-width="36"
              data-height="36"
            ></span>
            <p>Products</p>
          </div>
          <div className="user-links">
            <span
              className="iconify"
              data-icon="eos-icons:product-subscriptions"
              style={{ color: "white" }}
              data-width="36"
              data-height="36"
            ></span>
            <p>Products</p>
          </div>
          <div className="user-links">
            <span
              className="iconify"
              data-icon="icon-park-outline:transaction-order"
              style={{ color: "white" }}
              data-width="36"
              data-height="36"
            ></span>
            <p>Products</p>
          </div>
          <div className="user-links">
            <span
              className="iconify"
              data-icon="emojione-monotone:new-button"
              style={{ color: "white" }}
              data-width="36"
              data-height="36"
            ></span>
            <p>Products</p>
          </div>
          <div className="user-links">
            <span
              className="iconify"
              data-icon="bi:chat-dots-fill"
              style={{ color: "white" }}
              data-width="36"
              data-height="36"
            ></span>
            <p>Products</p>
          </div>
        </div>
      </div>
  );
}

export default Nav