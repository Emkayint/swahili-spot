import "./OrderCard.css";

const OrderCard = () => {

  return (
    <div className="col-s-6 col-4 cards">
      <div className="card">
        <br />
        <br />
        <hr className="hr" />
        <img src={require("./4.jpg")} alt="" className="image" />
        <hr />
        <div className="info">
          <div className="price">
            ksh 200
          </div>
          <div className="more-info">
            i
          </div>
        </div>
        <hr />
        <div className="name">
          <p>Chiken Biriani Friday</p>
          <button>ADD</button>
        </div>
      </div>
    </div>
  );
} 

export default OrderCard