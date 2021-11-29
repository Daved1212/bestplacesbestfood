import React, {useState} from "react";
import ReviewTile from "./ReviewTile";

const ReviewItem = (props) => {
  

  const reviewList = reviews.map(review => {
    return (
      <ReviewTile
       key={restaurant.id}
       firstName={review.user.first_name}
       lastName={review.user.last_name}
       timestamp={review.created_at}
       reviewBody={review.body}
       rating={review.rating}
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
