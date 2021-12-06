import React, {useState} from "react";

const ReviewForm = (props) => {
  const[review, setReview] = useState({
    body: "",
    rating: ""
  })


  const handleInputChange = event => {
    setReview({
      ...review,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const onSubmitHandler = event => {
    event.preventDefault()
    props.onReviewSubmitted(review)
    clearForm()
  }

  const clearForm = event => {
    setReview({
      body: "",
      rating: ""
    })
  }

  return (
    <form className="r-review" onSubmit={onSubmitHandler} >
      <div className="review-form">
        <label className="review-label" htmlFor="review"> Write review here:</label> <br />
        <textarea cols="60" rows="5" type="text" name="body" onChange={handleInputChange} value={review.body} /> <br />
        <input className="actions" type="submit" value="Submit" />
      </div>
    </form>
  )
}

export default ReviewForm