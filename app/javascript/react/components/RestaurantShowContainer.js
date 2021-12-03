import React, { useState, useEffect } from "react";
import RestaurantShow from "./RestaurantShow";
import Reviews from "./Reviews";

const RestaurantShowContainer = (props) => {
  const [restaurantInfo, setRestaurantInfo] = useState([])
  const [restaurantReviews, setRestaurantReviews] = useState([])
  const [yelpReviews, setYelpReviews] = useState([])
  const [errors, setErrors] = useState("")

  const restaurantId = props.match.params.id

  const fetchData = async () => {
    try {
      const response = await fetch(`/api/v1/restaurants/${restaurantId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
      const responseBody = await response.json()
      const yelpInfo = responseBody.yelpData
      setRestaurantInfo(responseBody.restaurant)
      setRestaurantReviews(responseBody.restaurant.reviews)
      setYelpReviews(yelpInfo.reviews)
    } catch (err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    fetchData()
  }, [])

  const reviewSubmittedHandler = async (review) => {
    let formPayload = review
    try {
      const response = await fetch(`/api/v1/restaurants/${restaurantId}/reviews`, {
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
      const newReview = responseBody.review
      setRestaurantReviews([...restaurantReviews, newReview]) 
      setErrors("")   
    } catch (error) {
      if (error.message == "401 (Unauthorized)"){
        setErrors("You are not logged in")
      }
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  return(
    <div>
      <h5 className="errors">{errors}</h5>
      <RestaurantShow
        key={restaurantInfo}
        restaurantInfo={restaurantInfo}
        yelpReviews={yelpReviews}
        />  
      <Reviews
        reviews={restaurantReviews}
        restaurantId={restaurantId}
        reviewSubmittedHandler={reviewSubmittedHandler}
        
      /> 
    </div>
  )
}

export default RestaurantShowContainer
