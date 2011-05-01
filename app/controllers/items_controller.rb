class ItemsController < ApplicationController
  
  def index
    @items = Item.find(:all)
  end
  
  def all
    items = Item.find(:all)
  end

  def abailable
  end

  def remaining
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(params[:item])
    
    respond_to do |format|
      if @item.save
        format.html { redirect_to(@item, :notice => 'Item was saved successfully created.') }
      else
        format.html { render :action => 'new' }
      end
    end
  end
  
  def show
    @item = Item.find(params[:id])
  end
end
