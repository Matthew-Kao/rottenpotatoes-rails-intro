class Movie < ActiveRecord::Base

  has_many :reviews

  def self.with_ratings(ratings_list)
    if ratings_list.length() != 0
      tempRating = ratings_list.map{|rating| rating.upcase}
      Movie.where(rating: tempRating)
    else
      Movie.all
    end
  end

  def self.all_ratings
    ['G','PG','PG-13','R']
  end
end