class MovieController < ApplicationController

  def new
    @movie = Movie.new
  end
  def create
    movie = Movie.create(params[:movie])
    redirect_to(movie)
  end
  def show
    name = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{name}"
    html = HTTParty.get(url)
    @movie = JSON(html)
  end
  def edit
    @movie = Movie.find(params[:id])
  end
  def update
    movie = Movie.find(params[:id])
    movie.update_attributes(params[:movie])
    redirect_to(movie)
  end
  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    redirect_to(movies_path)
  end

end