class AgendasController < ApplicationController

  before_filter :require_login, :except => [:show, :current_agenda]

  # GET /agendas
  # GET /agendas.json
  def index
    @agendas = Agenda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendas }
    end
  end

  def current_agenda
    raw_agenda = Agenda.find_by_current( true )
    raw_agenda.articles.each{ |article| article.text = add_p_tags( article.text ) }
    raw_agenda.blogs.each do |blog|
      blog.posts.each{ |post| post.text = add_p_tags(post.text) }
    end
    raw_agenda.pitch = add_p_tags( raw_agenda.pitch )
    @agenda = raw_agenda
    render :partial => "current_agenda", :locals => { :agenda => @agenda }
  end

  # GET /agendas/1
  # GET /agendas/1.json
  def show
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agenda }
    end
  end

  # GET /agendas/new
  # GET /agendas/new.json
  def new
    @agenda = Agenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agenda }
    end
  end

  # GET /agendas/1/edit
  def edit
    @agenda = Agenda.find(params[:id])
  end

  # POST /agendas
  # POST /agendas.json
  def create
    @agenda = Agenda.new(params[:agenda])

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to @agenda, notice: 'Agenda was successfully created.' }
        format.json { render json: @agenda, status: :created, location: @agenda }
      else
        format.html { render action: "new" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agendas/1
  # PUT /agendas/1.json
  def update
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      if @agenda.update_attributes(params[:agenda])
        format.html { redirect_to @agenda, notice: 'Agenda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendas/1
  # DELETE /agendas/1.json
  def destroy
    @agenda = Agenda.find(params[:id])
    @agenda.destroy

    respond_to do |format|
      format.html { redirect_to agendas_url }
      format.json { head :ok }
    end
  end
end
