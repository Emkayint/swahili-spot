import React from 'react'
import "./Contact.css"

function Contact() {
  return (
    <div className="contact">
      <div className="details">Payment Detail</div>
      <div className="contact-info">
        <span className="span1">Name</span>
        <span className="span2">Jane Doe</span>
      </div>
      <div className="contact-info">
        <span className="span1">Phone</span>
        <span className="span2">+254742075647</span>
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
        <button>Checkout</button>
      </div>
    </div>
  );
}

export default Contact