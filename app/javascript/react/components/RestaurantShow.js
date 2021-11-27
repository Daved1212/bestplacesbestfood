import React from "react";

const RestaurantShow = (props) => {
  return(
    <div>
      <h1 className="restaurant-name">{props.restaurantInfo.name}</h1>
      <img className="restaurant-photo" src={props.restaurantInfo.photo_url} />
      <p className="restaurant-description">Description {props.restaurantInfo.description}</p>
      <p className ="restaurant-location"> Location {props.restaurantInfo.location}</p>
    </div>
  )
}

export default RestaurantShow