import React from "react";


const RestaurantShow = (props) => {
  return(
    <div>
      <div>
        <h1 className="restaurant-name">{props.restaurantInfo.name}</h1>
        <img className="restaurant-photo" src={props.restaurantInfo.photo_url} />
        <p className="restaurant-description">Description {props.restaurantInfo.description}</p>
        <p className="restaurant-location"> Location {props.restaurantInfo.location}</p>
      </div>
      <div className="yelp-reviews">
        <h1 className="yelp-header"> Yelp Reviews</h1>
        <p className="yelp-details"> Name {props.reviews.user.name}</p>
        <p className="yelp-details"> Review {props.reviews.text}</p>
        <p className="yelp-details"> Rating {props.reviews.rating}</p>
      </div> 
    </div>  
  )
}

export default RestaurantShow