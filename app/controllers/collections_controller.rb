class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end
  def new
    @collection = Collection.new
  end
  def create
    collection = Collection.create(params[:collection])
    redirect_to(collection)
  end
  def show
    @collection = Collection.find(params[:id])
  end
  def edit
    @collection = Collection.find(params[:id])
  end
  def update
    collection = Collection.find(params[:id])
    collection.update_attributes(params[:collection])
    redirect_to(collection)
  end
  def destroy
    collection = Collection.find(params[:id])
    collection.delete
    redirect_to(collections_path)
  end
end