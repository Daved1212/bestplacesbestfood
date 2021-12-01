import React, {useState} from "react";
import ReviewTile from "./ReviewTile";

const ReviewItem = (props) => {

  const reviewList = props.reviews?.map(review => {
    debugger
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
const yelpList = props.yelpReviews?.map(yelpReview => {
  return (
    <ReviewTile
      key={yelpReview.id}
      name={yelpReview.name}
    />
  )
})
  return (
    <div className="review-items" >
      {reviewList}
    </div>
  )
}

export default ReviewItem
