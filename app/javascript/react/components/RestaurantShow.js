import React from "react";

const RestaurantShow = (props) => {
 
  const yelpList = props.yelpReviews?.map(yelpReview => {
    return(
      <div className="yelp-review-info">
        <ol className="yelp-ol"
          ><br /><li className="yelp-li">{yelpReview.user.name}</li
          ><br /> <li className="yelp-li">{yelpReview.text}</li
          ><br /><li className="yelp-li">{yelpReview.rating}</li 
          ><br /><li className="yelp-li">{yelpReview.time_created}</li
        ></ol>
        <br className="yelp-br" />
      </div>
      )
    })
        
    return(
      <div>
      <h4 className="yelp">Yelp Reviews<img src= "https://emojis.slackmojis.com/emojis/images/1470349913/723/yelp.png?1470349913"/></h4>
      <div className="yelp-list">  
        {yelpList}
      </div>  
      <div className="restaurant-details">
        <h1 className="restaurant-name">{props.restaurantInfo.name}</h1>
        <img className="restaurant-photo" src={props.restaurantInfo.photo_url} />
        <p className="restaurant-description">Description: {props.restaurantInfo.description}</p>
        <p className ="restaurant-location"> Location: {props.restaurantInfo.location}</p>
      </div>
      </div>
    )
  }
  
  export default RestaurantShow
       
        
       
        
      
