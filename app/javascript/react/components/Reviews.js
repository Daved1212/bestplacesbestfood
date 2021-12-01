import React, {useState } from 'react'
import ReviewForm from './ReviewForm'
import ReviewItem from './ReviewItems'

const Reviews = (props) => {
  return (
    <div>
      <ReviewForm onReviewSubmitted={props.reviewSubmittedHandler} />
      <ReviewItem reviews={props.reviews}
                  yelpReviews={props.yelpReviews} 
      />
    </div>
  )
}

export default Reviews