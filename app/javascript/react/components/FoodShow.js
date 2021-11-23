import React, { useEffect, useState } from "react";
import RestaurantBlock from "./RestaurantBlock";


const FoodShow = (props) => {
  const [food, setFood] = useState({
    id: "",
    name: "",
    description: "",
    photo_url: "",
    restaurants: []
  })
  const fetchData = async () => {
    try {
      const response = await fetch(`/api/v1/foods/${props.match.params.id}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const foodInfo = await response.json()
      setFood({...food, ...foodInfo.food})
      debugger
    } catch(err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }  
    useEffect(() => {
      fetchData()
    }, [])
    const restaurantData = food.restaurants.map((restaurant) => {
      return (
        <RestaurantBlock
          key={restaurant.id}
          restaurant={restaurant}
        />  
      )
    })
    return(
      <div>
        <h1 className="food-name">{food.name}</h1>
        <p className="food-description">{food.description}</p>
        <div className="restaurant-data">
          {restaurantData}
        </div>
      </div>
    )
  
}

export default FoodShow

