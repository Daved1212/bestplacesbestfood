import React, {useState } from 'react'
import ReviewForm from './ReviewForm'
import ReviewItem from './ReviewItems'

const Reviews = (props) => {
  const [errors, setErrors] = useState("")
  
  const reviewSubmittedHandler = async (review) => {
    let formPayload = review
    try {
      const response = await fetch(`/api/v1/restaurants/${props.restaurantId}/reviews`, {
        credentials: "same-origin",
        method: "POST",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(formPayload)
      })
      if (!response.ok) {
        if (response.status === 422) {
          const errorResponse = await response.json()
          setErrors(errorResponse.error)
        }
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      let newReview = responseBody.review
      props.setRestaurantReview([...props.reviews, newReview])
      setErrors("")
    } catch (error) {
      if (error.message == "401 (Unauthorized)"){
        setErrors("You are not logged in")
      }
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  
  return (
    <div>
      <h5 className="errors">{errors}</h5>
      <ReviewForm onReviewSubmitted={reviewSubmittedHandler} />
      <ReviewItem reviews={props.reviews} />
    </div>
  )
}

export default Reviews