
  class BarmanController < ApplicationController


    def new
      @barmen = Barmen.new
    end

    def create
      @barmen = Barmen.new(barman_params)
      if barman.save?
        flash[:success] = 'Your account has been created'
        redirect_to recipes_path
      else
        render 'new'
      end
    end

    def edit
    end

    def update
    end

    private
    def barman_params
      params.require(:barmen).permit(:barmenname, :email, :password)
    end

  end
