import "./items.css"
import logo from "./1.jpg"

function Itemscard(){
  return (
    <div className="items-card ">
      <img src={logo} alt="" />
      <div className="name-item">Chicken Byriani flavor</div>
      <div className="count ">
        <button>-</button>
        <span className="span">1</span>
        <button>+</button>
      </div>
      <p>ksh 240</p>
      <div className="delete">X</div>
    </div>
  );
}
export default Itemscard