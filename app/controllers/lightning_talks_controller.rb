class LightningTalksController < ApplicationController

  def now
    @lightning_talks = LightningTalk.sorted.incomplete
  end

  # GET /lightning_talks
  # GET /lightning_talks.json
  def index
    @lightning_talks = LightningTalk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lightning_talks }
    end
  end

  # GET /lightning_talks/1
  # GET /lightning_talks/1.json
  def show
    @lightning_talk = LightningTalk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lightning_talk }
    end
  end

  # GET /lightning_talks/new
  # GET /lightning_talks/new.json
  def new
    @lightning_talk = LightningTalk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lightning_talk }
    end
  end

  # GET /lightning_talks/1/edit
  def edit
    @lightning_talk = LightningTalk.find(params[:id])
  end

  # POST /lightning_talks
  # POST /lightning_talks.json
  def create
    @lightning_talk = LightningTalk.new(params[:lightning_talk])

    respond_to do |format|
      if @lightning_talk.save
        format.html { redirect_to @lightning_talk, notice: 'Lightning talk was successfully created.' }
        format.json { render json: @lightning_talk, status: :created, location: @lightning_talk }
      else
        format.html { render action: "new" }
        format.json { render json: @lightning_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lightning_talks/1
  # PUT /lightning_talks/1.json
  def update
    @lightning_talk = LightningTalk.find(params[:id])

    respond_to do |format|
      if @lightning_talk.update_attributes(params[:lightning_talk])
        format.html { redirect_to @lightning_talk, notice: 'Lightning talk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lightning_talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lightning_talks/1
  # DELETE /lightning_talks/1.json
  def destroy
    @lightning_talk = LightningTalk.find(params[:id])
    @lightning_talk.destroy

    respond_to do |format|
      format.html { redirect_to lightning_talks_url }
      format.json { head :no_content }
    end
  end
end
