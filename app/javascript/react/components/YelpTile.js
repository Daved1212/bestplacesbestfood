import React from "react";

const YelpTile = (props) => {
  const {yelpReview} = props
 
  return (
    <div className="yelp-reviews">  
      <div className="yelp-review-one" cols="30" rows="5">
        <h4>{`Name: ${yelpReview.user.name}`}</h4>
        <p> {`Review: ${yelpReview.text}`}</p>
        <p> {`Rating: ${yelpReview.rating}`}</p>
        <p> {`Left On: ${yelpReview.time_created}`}</p>
      </div>
    </div>

  )
}
    
        

export default YelpTile