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
    <form className="review-form" onSubmit={onSubmitHandler} >
      <label> Write review here:
        <textarea name="body" onChange={handleInputChange} value={review.body} /> <br />
      </label>
       
      <input  type="submit" value="Submit" />
    </form>
    
  )
}

export default ReviewForm