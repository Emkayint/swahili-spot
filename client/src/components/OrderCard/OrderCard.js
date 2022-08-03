import "./OrderCard.css";

const OrderCard = ({name, price, description, image}) => {

  return (
    <div className="col-s-6 col-3 cards">
      <div className="card-menu">
        <br />
        <br />
        <span className="hrr"></span>
        <img src={image} alt="" className="image" />
        <span className="hrr"></span>
        <div className="info">
          <div className="price">ksh {price}</div>
          <div className="more-info">i</div>
        </div>
        <div className="name">
          <p>{name}</p>
          <button>ADD</button>
        </div>
      </div>
    </div>
  );
} 

export default OrderCard