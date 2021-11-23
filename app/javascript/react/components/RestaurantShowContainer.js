import React, { useState, useEffect } from "react";
import RestaurantShow from "./RestaurantShow";

const RestaurantShowContainer = (props) => {
  const [restaurantInfo, setRestaurantInfo] = useState([])

  const restaurantId = props.match.params.id
  const fetchData = async () => {
    try {
      const response = await fetch(`/api/v1/restaurants/${restaurantId}`)
      debugger
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
      const responseBody = await response.json()
      setRestaurantInfo(responseBody.restaurant)
      debugger
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
    </div>
  )
}

export default RestaurantShowContainer