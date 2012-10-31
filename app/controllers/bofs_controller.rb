class BofsController < ApplicationController
  # GET /bofs
  # GET /bofs.json
  def index
    @bofs = Bof.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bofs }
    end
  end

  # GET /bofs/1
  # GET /bofs/1.json
  def show
    @bof = Bof.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bof }
    end
  end

  # GET /bofs/new
  # GET /bofs/new.json
  def new
    @bof = Bof.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bof }
    end
  end

  # GET /bofs/1/edit
  def edit
    @bof = Bof.find(params[:id])
  end

  # POST /bofs
  # POST /bofs.json
  def create
    @bof = Bof.new(params[:bof])

    respond_to do |format|
      if @bof.save
        format.html { redirect_to @bof, notice: 'Bof was successfully created.' }
        format.json { render json: @bof, status: :created, location: @bof }
      else
        format.html { render action: "new" }
        format.json { render json: @bof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bofs/1
  # PUT /bofs/1.json
  def update
    @bof = Bof.find(params[:id])

    respond_to do |format|
      if @bof.update_attributes(params[:bof])
        format.html { redirect_to @bof, notice: 'Bof was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bofs/1
  # DELETE /bofs/1.json
  def destroy
    @bof = Bof.find(params[:id])
    @bof.destroy

    respond_to do |format|
      format.html { redirect_to bofs_url }
      format.json { head :no_content }
    end
  end
end
