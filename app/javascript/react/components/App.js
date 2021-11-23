import React from 'react'
import { Route, Switch, BrowserRouter, Redirect } from "react-router-dom"
import FoodShow from './FoodShow'
import FoodIndexContainer from './FoodIndexContainer'
import RestaurantShowContainer from './RestaurantShowContainer'

export const App = (props) => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <Route exact path="/" component={FoodIndexContainer} />
          <Route exact path="/foods" component={FoodIndexContainer} />
          <Route exact path="/foods/:id" component={FoodShow} />
          <Route exact path="/restaurants/:id" component={RestaurantShowContainer} />
        </Switch>
      </BrowserRouter>
    </div>
    )
}

export default App
