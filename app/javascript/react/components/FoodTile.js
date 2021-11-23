import React from "react";
import { Link } from "react-router-dom";

const FoodTile = (props) => {
  return (
    <div className="food-tile">
      <Link to={`/foods/${props.food.id}`}>
        <div className="food-name">
          {props.food.name}
        </div>
      </Link>
      <div>
        <img className="food-photo" src={props.food.photo_url} />
      </div>
    </div>
  )
}

export default FoodTile