class TaglinesController < ApplicationController
  # GET /taglines
  # GET /taglines.json
  def index
    @taglines = Tagline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taglines }
    end
  end

  # GET /taglines/1
  # GET /taglines/1.json
  def show
    @tagline = Tagline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tagline }
    end
  end

  # GET /taglines/new
  # GET /taglines/new.json
  def new
    @tagline = Tagline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tagline }
    end
  end

  # GET /taglines/1/edit
  def edit
    @tagline = Tagline.find(params[:id])
  end

  # POST /taglines
  # POST /taglines.json
  def create
    @tagline = Tagline.new(params[:tagline])

    respond_to do |format|
      if @tagline.save
        format.html { redirect_to @tagline, notice: 'Tagline was successfully created, You Rock!' }
        format.json { render json: @tagline, status: :created, location: @tagline }
      else
        format.html { render action: "new" }
        format.json { render json: @tagline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taglines/1
  # PUT /taglines/1.json
  def update
    @tagline = Tagline.find(params[:id])

    respond_to do |format|
      if @tagline.update_attributes(params[:tagline])
        format.html { redirect_to @tagline, notice: 'Tagline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tagline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taglines/1
  # DELETE /taglines/1.json
  def destroy
    @tagline = Tagline.find(params[:id])
    @tagline.destroy

    respond_to do |format|
      format.html { redirect_to taglines_url }
      format.json { head :no_content }
    end
  
  end
end
