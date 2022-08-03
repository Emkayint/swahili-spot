import "./cart.css"
import Contact from "./contact/Contact";
import Itemscard from "./items-card/items"

function Cart() {
  return (
    <div className="cart">
      <div className="roww">
        <div className="card-content col-s-6 col-8">
          <div className="cart-header">Shoppig Cart</div>
          <Itemscard />
          <Itemscard />
          <Itemscard />
        </div>
        <div className="col-s-6 col-4">
          <Contact />
        </div>
      </div>
    </div>
  );
}

export default Cart