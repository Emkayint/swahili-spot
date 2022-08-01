import "./Menu.css"
import OrderCard from "../OrderCard/OrderCard"
const Menu = () => {

  return (
    <div className="hero">
      <div className="menu">
        <header>
          <p>Our Menu</p>
        </header>
        <div className="roww">
          <OrderCard />
          <OrderCard />
          <OrderCard />
          <OrderCard />
          <OrderCard />
          <OrderCard />
        </div>
      </div>
    </div>
  );
}

export default Menu