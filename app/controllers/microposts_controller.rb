class MicropostsController < ApplicationController

    def index
      @microposts = Micropost.all
    end

    def show
      @micropost = Micropost.find(params[:id])
    end

    def new
      @micropost = Micropost.new
    end

    def create
      @micropost = Micropost.new(micropost_params)
      @micropost.save
      redirect_to @micropost
    end

    def edit
      @micropost = Micropost.find(params[:id])
    end

    def update
      @micropost = Micropost.find(params[:id])

      if @micropost.save
        redirect_to @micropost
      else
        render 'edit'
      end
    end

    def destroy
      @micropost = Micropost.find(params[:id])
      @micropost.destroy

      redirect_to microposts_path
    end

    private
    def micropost_params
      params.require(:micropost).permit(:content, :user_id)
    end


end
