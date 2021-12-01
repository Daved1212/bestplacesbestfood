import React, {useEffect, useState} from "react";
import FoodTile from "./FoodTile";

const FoodIndexContainer = (props) => {
  const [foods, setFoods] = useState([])
  const fetchData = async () => {
    try {
      const response = await fetch("/api/v1/foods")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
      const foodData = await response.json()
      setFoods(foodData)
    } catch (err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    fetchData()
  },[])

  const foodInfo = foods.map((food) => {
    return <FoodTile key={food.id} food={food} />   
  })

  return (
    <div>
      <div className="home-page-quote">
        "People who love to eat are always the best people."
      </div>
        <div className="food-tile">
          {foodInfo}
        </div>
    </div>  
  )
}

export default FoodIndexContainer