import { useEffect, useState } from "react";
import "./cart.css"
import Contact from "./contact/Contact";
import Itemscard from "./items-card/items"

function Cart() {
  const [items, setItems] = useState([])

  useEffect(() => {
    fetch('/orders')
    .then(res => res.json())
    .then(setItems)
  }, [])

  const itemsToDisplay = items.map((item) => (
    <Itemscard
      name={item.product.name}
      amount={item.quantity}
      key={item.id}
      id={item.id}
      image= {item.product.image}
    />
  ));

  console.log(items)

  return (
    <div className="cart">
      <div className="roww">
        <div className="card-content col-s-6 col-8">
          <div className="cart-header">Shoppig Cart</div>
            {itemsToDisplay}
        </div>
        <div className="col-s-6 col-4">
          <Contact items = { items }/>
        </div>
      </div>
    </div>
  );
}

export default Cart