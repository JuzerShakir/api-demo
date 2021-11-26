class RatingsController < ApplicationController
  after_action :set_avg, only: :create

  def new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.post_id.present?
      @rating.save if @rating.valid?
    end
  end

  private

    def rating_params
      params.require(:rating).permit(:vote, :post_id)
    end

    def set_avg
      # which holds total rating count of a post
      total = 0.0

      # calling post model since its in the relationship
      post = self.post

      # since a post has many ratings, we loop through each ratings and count the vote and add them to total
      post.ratings.each do | rate |
        total += rate.vote
      end

      # finally we update our attrbute
      post.update_attribute(:avg_rating, total)
    end
end
