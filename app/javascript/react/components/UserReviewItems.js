import React, {useState} from "react";
import UserReviewTile from "./UserReviewTile";

const UserReviewItem = (props) => {
  const {userReviews} = props

  const userReviewItems = userReviews.map(userReview => {
    return (
      <UserReviewTile
       key={restaurant.id}
       userFirstName={userReview.user.first_name}
       userLastName={userReview.user.last_name}
       timestamp={userReview.created_at}
       userReviewBody={userReview.body}
       userRating={userReview.rating}
      /> 
    )
  })

  return (
    <div className="user-review-items" >
      {userReviewItems}
    </div>
  )
}

export default UserReviewItem
