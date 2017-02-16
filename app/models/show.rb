class Show < ActiveRecord::Base
  def self.highest_rating
    show = Show.maximum(:rating)
  end
  def self.most_popular_show
    show = find_by("rating = 10")
  end
  def self.lowest_rating
    show = Show.minimum(:rating)
  end
  def self.least_popular_show
    show = find_by(rating: self.lowest_rating)
  end
  def self.ratings_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    show_arr = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    show_arr = Show.order("name")
  end

end
