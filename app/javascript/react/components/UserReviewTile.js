import React from "react";

const UserReviewTile = (props) => {
  const {userFirstName, userLastName, timestamp,userReviewBody, userReviewRating} = props
  const userStarRating = `${"★".repeat(review.rating)}${"☆".repeat(5-review.rating)}`
  
  const time = new Date(timestamp)

  const month = time.toLocaleString('default', {month: 'long'})
  const day = time.getDate()
  const year = time.getFullYear()

  const timeOfDay = time.toLocaleString('en-US', {hour: 'numeric', minute: 'numeric', hour12: true})

  return (
    <div className="user-review-tile" >
      <div className="timestamp" >
        {`${month} ${day}, ${year}, ${timeOfDay}`}
      </div>
      <div className="name" >
        {`${userFirstName}, ${userLastName}`} 
      </div>
      <div className="rating" >
        {userReviewRating}
      </div>
      <div className="user-star-rating" >
        {userStarRating}
      </div>
      <div className="user-review-body" >
        {userReviewBody}
      </div>
    </div>
  )
}

export default UserReviewTile