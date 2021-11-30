import React, {useState } from 'react'
import ReviewForm from './ReviewForm'
import ReviewItem from './ReviewItems'

const Reviews = (props) => {
    
  return (
    <div>
      <ReviewForm onReviewSubmitted={props.reviewSubmittedHandler} />
      <ReviewItem reviews={props.reviews} />
    </div>
  )
}

export default Reviews