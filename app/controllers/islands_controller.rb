class IslandsController < ApplicationController
  def index
    @islands = Island.page(params[:page]).per(10)

    render("islands/index.html.erb")
  end

  def show
    @beach = Beach.new
    @island = Island.find(params[:id])

    render("islands/show.html.erb")
  end

  def new
    @island = Island.new

    render("islands/new.html.erb")
  end

  def create
    @island = Island.new

    @island.island_name = params[:island_name]
    @island.location = params[:location]

    save_status = @island.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/islands/new", "/create_island"
        redirect_to("/islands")
      else
        redirect_back(:fallback_location => "/", :notice => "Island created successfully.")
      end
    else
      render("islands/new.html.erb")
    end
  end

  def edit
    @island = Island.find(params[:id])

    render("islands/edit.html.erb")
  end

  def update
    @island = Island.find(params[:id])

    @island.island_name = params[:island_name]
    @island.location = params[:location]

    save_status = @island.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/islands/#{@island.id}/edit", "/update_island"
        redirect_to("/islands/#{@island.id}", :notice => "Island updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Island updated successfully.")
      end
    else
      render("islands/edit.html.erb")
    end
  end

  def destroy
    @island = Island.find(params[:id])

    @island.destroy

    if URI(request.referer).path == "/islands/#{@island.id}"
      redirect_to("/", :notice => "Island deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Island deleted.")
    end
  end
end
