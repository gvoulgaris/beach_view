class BeachesController < ApplicationController
  def index
    @beaches = Beach.all

    render("beaches/index.html.erb")
  end

  def show
    @comment = Comment.new
    @photo = Photo.new
    @beach = Beach.find(params[:id])

    render("beaches/show.html.erb")
  end

  def new
    @beach = Beach.new

    render("beaches/new.html.erb")
  end

  def create
    @beach = Beach.new

    @beach.beach_name = params[:beach_name]
    @beach.location = params[:location]
    @beach.weather = params[:weather]
    @beach.sunset = params[:sunset]
    @beach.tides = params[:tides]
    @beach.wave_height = params[:wave_height]
    @beach.entrance_fee = params[:entrance_fee]
    @beach.umbrella_fee = params[:umbrella_fee]
    @beach.terrain = params[:terrain]
    @beach.terrain_color = params[:terrain_color]
    @beach.water_type = params[:water_type]
    @beach.shark_attacks = params[:shark_attacks]
    @beach.island_id = params[:island_id]

    save_status = @beach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/beaches/new", "/create_beach"
        redirect_to("/beaches")
      else
        redirect_back(:fallback_location => "/", :notice => "Beach created successfully.")
      end
    else
      render("beaches/new.html.erb")
    end
  end

  def edit
    @beach = Beach.find(params[:id])

    render("beaches/edit.html.erb")
  end

  def update
    @beach = Beach.find(params[:id])

    @beach.beach_name = params[:beach_name]
    @beach.location = params[:location]
    @beach.weather = params[:weather]
    @beach.sunset = params[:sunset]
    @beach.tides = params[:tides]
    @beach.wave_height = params[:wave_height]
    @beach.entrance_fee = params[:entrance_fee]
    @beach.umbrella_fee = params[:umbrella_fee]
    @beach.terrain = params[:terrain]
    @beach.terrain_color = params[:terrain_color]
    @beach.water_type = params[:water_type]
    @beach.shark_attacks = params[:shark_attacks]
    @beach.island_id = params[:island_id]

    save_status = @beach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/beaches/#{@beach.id}/edit", "/update_beach"
        redirect_to("/beaches/#{@beach.id}", :notice => "Beach updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Beach updated successfully.")
      end
    else
      render("beaches/edit.html.erb")
    end
  end

  def destroy
    @beach = Beach.find(params[:id])

    @beach.destroy

    if URI(request.referer).path == "/beaches/#{@beach.id}"
      redirect_to("/", :notice => "Beach deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Beach deleted.")
    end
  end
end
