import React from 'react'
import { Route, Switch, BrowserRouter, Redirect } from "react-router-dom"
import FoodIndexContainer from './FoodIndexContainer'

export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Route exact path="/" component={FoodIndexContainer} />
        <Route exact path="/foods" component={FoodIndexContainer} />
      </BrowserRouter>
    </div>
    )
}

export default App
