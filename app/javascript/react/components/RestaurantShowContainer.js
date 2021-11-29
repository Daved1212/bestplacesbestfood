import React, { useState, useEffect } from "react";
import RestaurantShow from "./RestaurantShow";
import UserReviews from "./UserReviews";

const RestaurantShowContainer = (props) => {
  const [restaurantInfo, setRestaurantInfo] = useState([])
  const [restaurantUserReview, setRestaurantUserReview] = useState("")

  const restaurantId = props.match.params.id
  
  const fetchData = async () => {
    try {
      const response = await fetch(`/api/v1/foods/food_id/restaurants/${restaurantId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
      const responseBody = await response.json()
      setRestaurantInfo(responseBody)
      setRestaurantUserReview(responseBody.restaurant.userReviews)
    } catch (err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    fetchData()
  }, [])

  return(
    <div>
      <RestaurantShow
        key={restaurantInfo.id}
        restaurantInfo={restaurantInfo}
      />  
      <UserReviews
        userReviews={restaurantUserReview}
        restaurantId={restaurantId}
        setRestaurantUserReview={setRestaurantUserReview}
      /> 
    </div>
  )
}

export default RestaurantShowContainer