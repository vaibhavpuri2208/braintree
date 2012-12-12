class TweetboxesController < ApplicationController
  # GET /tweetboxes
  # GET /tweetboxes.json
  def index
    @tweetboxes = Tweetbox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweetboxes }
    end
  end

  # GET /tweetboxes/1
  # GET /tweetboxes/1.json
  def show
    @tweetbox = Tweetbox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweetbox }
    end
  end

  # GET /tweetboxes/new
  # GET /tweetboxes/new.json
  def new
    @tweetbox = Tweetbox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tweetbox }
    end
  end

  # GET /tweetboxes/1/edit
  def edit
    @tweetbox = Tweetbox.find(params[:id])
  end

  # POST /tweetboxes
  # POST /tweetboxes.json
  def create
    @tweetbox = Tweetbox.new(params[:tweetbox])

    respond_to do |format|
      if @tweetbox.save
        format.html { redirect_to @tweetbox, notice: 'Tweetbox was successfully created.' }
        format.json { render json: @tweetbox, status: :created, location: @tweetbox }
      else
        format.html { render action: "new" }
        format.json { render json: @tweetbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tweetboxes/1
  # PUT /tweetboxes/1.json
  def update
    @tweetbox = Tweetbox.find(params[:id])

    respond_to do |format|
      if @tweetbox.update_attributes(params[:tweetbox])
        format.html { redirect_to @tweetbox, notice: 'Tweetbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tweetbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweetboxes/1
  # DELETE /tweetboxes/1.json
  def destroy
    @tweetbox = Tweetbox.find(params[:id])
    @tweetbox.destroy

    respond_to do |format|
      format.html { redirect_to tweetboxes_url }
      format.json { head :no_content }
    end
  end
end
