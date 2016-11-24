class OsReleasesController < ApplicationController
  # GET /os_releases
  # GET /os_releases.json
  def index
    @os_releases = OsRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @os_releases }
    end
  end

  # GET /os_releases/1
  # GET /os_releases/1.json
  def show
    @os_release = OsRelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @os_release }
    end
  end

  # GET /os_releases/new
  # GET /os_releases/new.json
  def new
    @os_release = OsRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @os_release }
    end
  end

  # GET /os_releases/1/edit
  def edit
    @os_release = OsRelease.find(params[:id])
  end

  # POST /os_releases
  # POST /os_releases.json
  def create
    @os_release = OsRelease.new(params[:os_release])

    respond_to do |format|
      if @os_release.save
        format.html { redirect_to @os_release, notice: 'Os release was successfully created.' }
        format.json { render json: @os_release, status: :created, location: @os_release }
      else
        format.html { render action: "new" }
        format.json { render json: @os_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /os_releases/1
  # PUT /os_releases/1.json
  def update
    @os_release = OsRelease.find(params[:id])

    respond_to do |format|
      if @os_release.update_attributes(params[:os_release])
        format.html { redirect_to @os_release, notice: 'Os release was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @os_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_releases/1
  # DELETE /os_releases/1.json
  def destroy
    @os_release = OsRelease.find(params[:id])
    @os_release.destroy

    respond_to do |format|
      format.html { redirect_to os_releases_url }
      format.json { head :no_content }
    end
  end
end
