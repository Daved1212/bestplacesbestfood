import React, {useState} from "react";

const ReviewForm = (props) => {
  const{reviewForm, setReviewForm} = useState({
    body: "",
    rating: ""
  })

  const numbers = [0, 1, 2, 3, 4, 5]

  const ratingNumbers = numbers.map(number => {
    return (
      <div key={number}>
        <input
          type="radio"
          name="rating"
          id={number}
          onChange={handleInputChange}
          value={number}
        />
        <label className="ratings">{number}</label>
      </div>
    )
  })

  const handleInputChange = event => {
    setReviewForm({
      ...reviewForm,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const onSubmitHandler = event => {
    event.preventDefault()
    props.onUserReviewSubmitted(reviewForm)
    clearForm()
  }

  const clearForm = event => {
    setReviewForm({
      body: "",
      rating: ""
    })
  }

  return (
    <form className="review-form" onSubmit={onSubmitHandler} >
      <label> Review:
        <textarea type="text" name="body" onChange={handleInputChange} value={reviewForm.body} />
      </label>
      <label> Rating:
        className="rating" 
      </label>
      <div className="review-button">
        {ratingNumbers}
      </div>
      <input type="submit" value="Submit" />
    </form>
  )
}

export default ReviewForm