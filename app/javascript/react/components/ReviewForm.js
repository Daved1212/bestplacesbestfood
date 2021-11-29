import React, {useState} from "react";

const ReviewForm = (props) => {
  const[review, setReview] = useState({
    body: "",
    rating: ""
  })

  const numbers = [0, 1, 2, 3, 4, 5]

  const ratingNumbers = (numbers).map(number => {
    return (
      <div key={number}>
        <input
          type="radio"
          name="rating"
          id={number}
          onChange={handleInputChange}
          value={number}
        />
        <label htmlFor="rating" className="ratings">{number}</label>
      </div>
    )
  })

  const handleInputChange = event => {
    setReview({
      ...review,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const onSubmitHandler = event => {
    event.preventDefault()
    props.onReviewsSubmitted(review)
    clearForm()
  }

  const clearForm = event => {
    setReview({
      body: "",
      rating: ""
    })
  }

  return (
    <form className="review-form" onSubmit={onSubmitHandler} >
      
      <label> Review:
        <textarea type="text" name="body" onChange={handleInputChange} value={review.body} />
      </label>
            
      <input type="submit" value="Submit" />
    </form>
  )
}

export default ReviewForm