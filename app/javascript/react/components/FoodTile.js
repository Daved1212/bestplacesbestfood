import React from "react";
import { Link } from "react-router-dom";

const FoodTile = (props) => {
  return (
    <div className="food-tiles">
      <Link to={`/foods/${props.food.id}`}>
        <img className="food-photo" src={props.food.photo_url} />
        <div className="food-name-1">
          {props.food.name}
        </div>
      </Link>
     </div>
  )
}

export default FoodTile