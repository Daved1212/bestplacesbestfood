import React, {useState} from "react";
import RestaurantShow from "./RestaurantShow";
import ReviewTile from "./ReviewTile";

const ReviewItem = (props) => {

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

  return (
    <div className="review-items" >
      <div className="review-list">
        {reviewList}
      </div>
    </div>
  )
}

export default ReviewItem
