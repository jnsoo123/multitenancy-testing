class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
