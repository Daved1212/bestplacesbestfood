import React, {useState} from "react";
import ReviewTile from "./ReviewTile";

const ReviewItem = (props) => {

  const reviewList = props.reviews?.map(review => {
    return (
      <ReviewTile
       key={review.id}
       firstName={review.first_name}
       lastName={review.last_name}
       timestamp={review.created_at}
       reviewBody={review.body}
       reviewRating={review.rating}
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
