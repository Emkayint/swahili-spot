import "./OrderCard.css";

const OrderCard = ({name, price, description, image}) => {

  return (
    <div className="col-s-6 col-4 cards">
      <div className="card">
        <br />
        <br />
        <hr className="hr" />
        <img src={image} alt="" className="image" />
        <hr />
        <div className="info">
          <div className="price">
            ksh {price}
          </div>
          <div className="more-info">
            i
          </div>
        </div>
        <hr />
        <div className="name">
          <p>{ name }</p>
          <button>ADD</button>
        </div>
      </div>
    </div>
  );
} 

export default OrderCard