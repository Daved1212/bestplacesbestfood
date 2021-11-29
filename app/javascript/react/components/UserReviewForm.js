import React, {useState} from "react";

const UserReviewForm = (props) => {
  const{userForm, setUserForm} = useState({
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
    setUserForm({
      ...userForm,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const onSubmitHandler = event => {
    event.preventDefault()
    props.onUserReviewSubmitted(userForm)
    clearForm()
  }

  const clearForm = event => {
    setUserForm({
      body: "",
      rating: ""
    })
  }

  return (
    <form className="user-review-form" onSubmit={onSubmitHandler} >
      <label> Review:
        <textarea type="text" name="body" onChange={handleInputChange} value={userForm.body} />
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

export default UserReviewForm