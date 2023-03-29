class Public::ItemCommentsController < ApplicationController
  before_action :authenticate_customer!, except: [:top]
  
  def create
    item = Item.find(params[:item_id])
    comment = current_customer.item_comments.new(item_comment_params)
    comment.item_id = item.id
    comment.save
    redirect_to public_item_path(item)
  end
  
  def destroy
    ItemComment.find(params[:id]).destroy
    redirect_to public_item_path(params[:item_id])
  end

  private

  def item_comment_params
    params.require(:item_comment).permit(:comment)
  end
  
end
