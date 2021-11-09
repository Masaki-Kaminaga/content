class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
    end
    
    def new
        @movie = Movie.new
    end
    
    def create
        @movie = Movie.new(movie_params)
    end
    
    private
    
    def movie_params
        params.require(:movie).permit(:title, :body, :password, :post_url, :started_at, :finished_at)
    end
    
end
