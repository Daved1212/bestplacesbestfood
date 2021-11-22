import React, {useEffect, useState} from "react";
import FoodTile from "./FoodTile";

const FoodIndexContainer = props => {
  const [food, setFood] = useState([])
  const fetchData = async () => {
    try {
      const response = await fetch("/api/v1/foods")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
      const foodData = await response.json()
      setFood(foodData)
    } catch (err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    fetchData()
  },[])

  const foods = food.map((food) => {
    return (
      <FoodTile key={food.id} food={food}/>
    )
  })

  return (
    <div>
      <div className="home-page-quote">
        "People who love to eat are always the best people."
      </div>
        <div className="food-tile">
          {foods}
        </div>
    </div>  
  )
}

export default FoodIndexContainer
