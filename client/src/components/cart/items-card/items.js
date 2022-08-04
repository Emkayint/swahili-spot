import "./items.css"
import logo from "./1.jpg"
import { useState } from "react";



function Itemscard({name, amount, id, image, price}){
  const [loading, setLoading] = useState(false)

  function handleAdd(){

  }

  function handleMinus(){
    if( amount === 1){
      alert("Meeen!! This Is awkward do You want to delete instead?")
    } else {
      setLoading(!loading)
      fetch(`/orders/${id}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "applicaton/json",
          Accept: "application/json"
        }, 
        body: JSON.stringify({
          quantity: amount - 1
        })
        .then(r => {
          if(r.ok){
            setLoading(!loading)
          }
        })

      })

    }

  }

  function handleDelete(){
    fetch(`/order/${id}`, {
      method: "DELETE",
      "Accept" : "application/json",
      "Content-Type" : "application.json"
    })

  }
  return (
    <div className="items-card ">
      <img src={image} alt="" />
      <div className="name-item">{name}</div>
      <div className="count ">
        <button onClick={handleMinus}>-</button>
        <span className="span">{amount}</span>
        <button onClick={handleAdd}>+</button>
      </div>
      <p>ksh {price}</p>
      <div className="delete" onClick={handleDelete}>X</div>
    </div>
  );
}
export default Itemscard