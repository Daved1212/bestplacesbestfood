import React, {useState, useEffect} from "react";
import ReviewForm from "./ReviewForm";
import ReviewItem from "./ReviewItems";

const Reviews = (props) => {
  const [errors, setErrors] =  useState("")

  let reviewsSubmittedHandler = async (review) => {
    
    let formPayLoad = review
    
    try {
      const response = await fetch(`/api/v1/restaurants/${restaurantId}/reviews`, {
        credentials: "same-origin",
        method: "POST",
        headers: {
          "Accept": "application,json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(formPayLoad)
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
        if (error.message === "401 (Unauthorized)"){
          setErrors("You are not logged in!")
        }
        console.error(`Error in Fetch: ${error.message}`)
      }
  }
  
  return (
    <div>
      <h4 className="errors"> {errors}</h4>
      <ReviewForm onReviewsSubmitted={reviewsSubmittedHandler} />
      <ReviewItem reviews={props.reviews} />
    </div>
  )


}

export default Reviews