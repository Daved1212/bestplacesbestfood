import React from "react";

const ReviewTile = (props) => {
  const {firstName, lastName, timestamp, reviewBody} = props
  
  const time = new Date(timestamp)
  const month = time.toLocaleString('default', { month: 'long' })
  const day = time.getDate()
  const year = time.getFullYear()

  const timeOfDay = time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true })
  return (
    
    <div className="review-tile" >
      <div className="timestamp" >
        {`${month} ${day}, ${year}, ${timeOfDay}`}
      </div>
      <div className="name" >
        {`${firstName}, ${lastName}`} 
      </div>
      <div className="review-body" >
        {reviewBody}
      </div>
    </div>
    
  )
}

export default ReviewTile