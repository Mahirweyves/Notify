class CommentsController < ApplicationController

  def create
      @product = Product.find(params[:product_id])
        @comment = @product.comments.create(params[:comment].permit(:name, :comment))
      redirect_to product_path(@product)    
  end

  def destroy
      @product = Product.find(params[:product_id])
      @comment = @product.comments.find(params[:id])
      @comment.destroy
      redirect_to product_path(@product)
  end

  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @Commemt = Commemt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:name, :commen)
    end


end
