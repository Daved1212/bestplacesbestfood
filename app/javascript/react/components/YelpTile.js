import React from "react";
import Reviews from "./Reviews";

const YelpTile = (props) => {
  const {yelpReview} = props

  return (
    <div className="yelp-reviews">  
      <div className="yelp-review-one">
        <h4>{`Name: ${yelpReview[0].user.name}`}</h4>
        <p> {`Review: ${yelpReview[0].text}`}</p>
        <p> {`Rating: ${yelpReview[0].rating}`}</p>
        <p> {`Left On: ${yelpReview[0].time_created}`}</p>
      </div>
      <div className="yelp-review-two">
      <h4>{`Name: ${yelpReview[1].user.name}`}</h4>
        <p> {`Review: ${yelpReview[1].text}`}</p>
        <p> {`Rating: ${yelpReview[1].rating}`}</p>
        <p> {`Left On: ${yelpReview[1].time_created}`}</p>
      </div> 
      <div className="yelp-review-three">
      <h4>{`Name: ${yelpReview[2].user.name}`}</h4>
        <p> {`Review: ${yelpReview[2].text}`}</p>
        <p> {`Rating: ${yelpReview[2].rating}`}</p>
        <p> {`Left On: ${yelpReview[2].time_created}`}</p>
      </div> 
    </div>
  )
}

export default YelpTile