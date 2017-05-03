class CommentsController < ApplicationController
	def create
		@product=Product.find(params[:product_id])
		@comment=@product.comments.create(params[:comment].permit(:body))
		redirect_to product_path(@product)
	end

	def destroy
		@product=Product.find(params[:product_id])
		@comment=@product.comments.find(params[:id])
		@comment.destroy
		redirect_to product_path(@product)
	end
end
