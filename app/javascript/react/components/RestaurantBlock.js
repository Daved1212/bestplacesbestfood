import React from "react";
import { Link } from "react-router-dom";

const RestaurantBlock = (props) => {
  return(
    <div className="restaurant-data">
      <Link to={`/restaurants/${props.restaurant.id}`} >
        <img className="restaurant-data-pic" src={props.restaurant.photo_url} />
        <div className="restaurant-data-name">
          {props.restaurant.name}
        </div>
      </Link>
    </div>
  )
}

export default RestaurantBlock