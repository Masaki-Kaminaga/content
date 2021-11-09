class MoviesController < ApplicationController
    
    def index
        @movies = Movie.all
    end
    
    def new
        @movie = Movie.new
    end
    
    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to memus_path
        else
            render "new"
        end
    end
    
    def edit
        @movie  = Movie.find(params[:id])
    end
    
    
    private
    
    def movie_params
        params.require(:movie).permit(:title, :body, :password, :post_url, :started_at, :finished_at)
    end
    
end
