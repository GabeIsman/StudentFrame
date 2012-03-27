class FrontPagesController < ApplicationController
  
  def front_page
    @front_pages = FrontPage.all
    @front_pages.each do |page|
      page.text = add_p_tags( page.text )
    end
    render :partial => "front_page"
  end
  
  def initial_front_page
    @front_pages = FrontPage.all
    @front_pages.each do |page|
      page.text = add_p_tags( page.text )
    end
  end
  
  
  # GET /front_pages
  # GET /front_pages.json
  def index
    @front_pages = FrontPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @front_pages }
    end
  end

  # GET /front_pages/new
  # GET /front_pages/new.json
  def new
    @front_page = FrontPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @front_page }
    end
  end

  # GET /front_pages/1/edit
  def edit
    @front_page = FrontPage.find(params[:id])
  end

  # POST /front_pages
  # POST /front_pages.json
  def create
    @front_pages = FrontPage.all
    @front_page = FrontPage.new(params[:front_page])

    respond_to do |format|
      if @front_page.save
        format.html { render action: "index", notice: 'Front page was successfully created.' }
        format.json { render json: @front_page, status: :created, location: @front_page }
      else
        format.html { render action: "new" }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /front_pages/1
  # PUT /front_pages/1.json
  def update
    @front_page = FrontPage.find(params[:id])

    respond_to do |format|
      if @front_page.update_attributes(params[:front_page])
        format.html { redirect_to @front_page, notice: 'Front page was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @front_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /front_pages/1
  # DELETE /front_pages/1.json
  def destroy
    @front_page = FrontPage.find(params[:id])
    @front_page.destroy

    respond_to do |format|
      format.html { redirect_to front_pages_url }
      format.json { head :ok }
    end
  end
end
