class ReviewsController < ApplicationController
  before_filter  :user_validate

  def create
    @product = Product.find_by(id: params[:product_id])
    @review = @product.reviews.create(review_params)
    @review.user = current_user

    if @review.save!
      redirect_to :back, notice: "Thanks for your feedback!"
    else
      redirect_to :back, notice: "Failed to save feedback!"
    end
  end


  def destroy
    @product = Product.find params[:product_id]
    @review = Review.find params[:id]
    @review.destroy!
    redirect_to :back
  end

 
  def review_params
    params.require(:review).permit(
    :description,  
    :rating
    )
  end
  
  def user_validate
    unless current_user
      flash[:error] = "Login required before access if permited"
      redirect_to '/login'
    end
  end
  
end
