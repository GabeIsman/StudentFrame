class AboutPagesController < ApplicationController
  # GET /about_pages
  # GET /about_pages.json
  def index
    @about_pages = AboutPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @about_pages }
    end
  end

  # GET /about_pages/1
  # GET /about_pages/1.json
  def show
    @about_page = AboutPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @about_page }
    end
  end

  # GET /about_pages/new
  # GET /about_pages/new.json
  def new
    @about_page = AboutPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @about_page }
    end
  end

  # GET /about_pages/1/edit
  def edit
    @about_page = AboutPage.find(params[:id])
  end

  # POST /about_pages
  # POST /about_pages.json
  def create
    @about_page = AboutPage.new(params[:about_page])

    respond_to do |format|
      if @about_page.save
        format.html { redirect_to @about_page, notice: 'About page was successfully created.' }
        format.json { render json: @about_page, status: :created, location: @about_page }
      else
        format.html { render action: "new" }
        format.json { render json: @about_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /about_pages/1
  # PUT /about_pages/1.json
  def update
    @about_page = AboutPage.find(params[:id])

    respond_to do |format|
      if @about_page.update_attributes(params[:about_page])
        format.html { redirect_to @about_page, notice: 'About page was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @about_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_pages/1
  # DELETE /about_pages/1.json
  def destroy
    @about_page = AboutPage.find(params[:id])
    @about_page.destroy

    respond_to do |format|
      format.html { redirect_to about_pages_url }
      format.json { head :ok }
    end
  end
end
