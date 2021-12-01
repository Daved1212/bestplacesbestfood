import React, {useState} from "react";
import ReviewTile from "./ReviewTile";
import YelpTile from "./YelpTile";

const ReviewItem = (props) => {

  
  // debugger
  const reviewList = props.reviews?.map(review => {
    return (
      <ReviewTile
       key={review.id}
       firstName={review.user.first_name}
       lastName={review.user.last_name}
       timestamp={review.created_at}
       reviewBody={review.body}
       reviewRating={review.rating}
      /> 
    )   
  })

  // debugger

  const yelpList = props.yelpReviews.map(yelpReview => {
  return (
    <YelpTile
      key={yelpReview.id}
      yelpReview={yelpReview}
    />
  )
})
  return (
    <div className="review-items" >
      {reviewList}
      {yelpList} 
    </div>
  )
}

export default ReviewItem
