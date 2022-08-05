import React from 'react'
import "./Contact.css"
import { UserContext } from '../../../context/user';
import { useContext } from 'react';

function Contact({ items , setItems}) {
  const {user} = useContext(UserContext); 
  console.log(items)

  function handlePay(){
    if(!items){
      alert("No Items In cat")
    } else{
      items.forEach(item => {
        fetch(`/orders/${item.id}`, {
          method: "DELETE",
          Accept: "application/json",
          "Content-Type": "application.json",
        }).then((r) => {
          if (r.ok) {
            setItems([])
          }
        });
      })
      alert("Success");

    }
  }
  return (
    <div className="contact">
      <div className="details">Payment Detail</div>
      <div className="contact-info">
        <span className="span1">Name</span>
        <span className="span2">{user ? `${user.username}`: "Sammy Doe"}</span>
      </div>
      <div className="contact-info">
        <span className="span1">Phone</span>
        <span className="span2">{user ? `${user.phone}` : "07112345678" }</span>
      </div>
      <div className="contact-info">
        <span className="span1">Method</span>
        <span className="span2">M-Pesa</span>
      </div>
      <div className="contact-info">
        <span className="span1">Location</span>
        <span className="span2">Edens Apartment</span>
      </div>
      <div className="button-check">
        <button onClick={handlePay}>Checkout</button>
      </div>
    </div>
  );
}

export default Contact