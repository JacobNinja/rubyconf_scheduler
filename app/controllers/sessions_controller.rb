class SessionsController < ApplicationController
  # GET /sessions
  # GET /sessions.json
  def index
    @lightning_talks = LightningTalk.all
    @bofs = Bof.all

    respond_to do |format|
      format.html
    end
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
    @session = Session.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @session }
    end
  end

end
