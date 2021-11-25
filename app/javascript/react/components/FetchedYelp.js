import React, {useState, useEffect} from "react";

import YelpReviews from "../services/YelpReviews";

const FetchedYelp = (props) => {
  const [reviews, setReviews] = useState([])
  const getReviews = async () => {
    const yelpData = await YelpReviews.getReviews()
    setReviews(yelpData)
  }

    useEffect(() => {
      getReviews()
    }, [])

    const YelpReviewInfo = reviews.map ((review) =>{
      return (
        <RestaurantShow
          key={review}
          reviews={reviews}
        />
      )
    })

    return (
      {YelpReviewInfo}
    )
}
