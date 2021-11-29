import React, {useState, useEffect} from "react";
import UserReviewForm from "./UserReviewForm";
import UserReviewItem from "./UserReviewItems";

const UserReviews = (props) => {
  const [errors, setErrors] =  useState("")

  let userReviewSubmittedHandler = async (userForm) => {
    let formPayLoad = userForm
    try {
      const response = await fetch(`/api/v1/restaurants/${props.restaurantId}/reviews`, {
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
        let newUserReview = responseBody.userForm
        props.setRestaurantUserReview([...props.userForm, newUserReview])
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
      <UserReviewForm onUserReviewSubmitted={userReviewSubmittedHandler} />
      <UserReviewItem userForm={props.userForm} />
    </div>
  )


}

export default UserReviews