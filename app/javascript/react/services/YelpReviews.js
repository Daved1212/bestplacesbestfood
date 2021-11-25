class YelpReviews {

  static async getYelp() {
    try {
      const response = await fetch("https://api.yelp.com/v3/businesses/{id}/reviews")
      if (!response.ok) {
        throw new Error(`${response.status} ${response.statusText}`)
      }
      const yelp = await response.json()
      return yelp
    } catch (error) {
      console.error(`Error in fetch: #{error.message}`)
    }
  }
}

export default YelpReviews