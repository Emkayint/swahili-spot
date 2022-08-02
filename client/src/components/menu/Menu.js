import "./Menu.css"
import OrderCard from "../OrderCard/OrderCard"
import { useEffect, useState } from "react";
const Menu = () => {
  const [products, setProducts] = useState([])

  useEffect(() => {
    fetch('/products')
    .then(res => res.json())
    .then(setProducts)
  }, [])

  const productsToDisplay = products.map(product => (<OrderCard name = {product.name} price = {product.price} image = {product.image} /> ))
  return (
    <div className="hero">
      <div className="menu">
        <div className="menu-header">
          <p>Our Menu</p>
        </div>
        <div className="roww">
          {productsToDisplay}
        </div>
      </div>
    </div>
  );
}

export default Menu