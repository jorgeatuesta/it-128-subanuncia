class HistoryAnnouncementsController < ApplicationController
  before_action :set_history_announcement, only: [:show, :edit, :update, :destroy]

  # GET /history_announcements
  # GET /history_announcements.json
  def index
    @history_announcements = HistoryAnnouncement.all
  end

  # GET /history_announcements/1
  # GET /history_announcements/1.json
  def show
  end

  # GET /history_announcements/new
  def new
    @history_announcement = HistoryAnnouncement.new
  end

  # GET /history_announcements/1/edit
  def edit
  end

  # POST /history_announcements
  # POST /history_announcements.json
  def create
    @history_announcement = HistoryAnnouncement.new(history_announcement_params)

    respond_to do |format|
      if @history_announcement.save
        format.html { redirect_to @history_announcement, notice: 'History announcement was successfully created.' }
        format.json { render :show, status: :created, location: @history_announcement }
      else
        format.html { render :new }
        format.json { render json: @history_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_announcements/1
  # PATCH/PUT /history_announcements/1.json
  def update
    respond_to do |format|
      if @history_announcement.update(history_announcement_params)
        format.html { redirect_to @history_announcement, notice: 'History announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @history_announcement }
      else
        format.html { render :edit }
        format.json { render json: @history_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_announcements/1
  # DELETE /history_announcements/1.json
  def destroy
    @history_announcement.destroy
    respond_to do |format|
      format.html { redirect_to history_announcements_url, notice: 'History announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_announcement
      @history_announcement = HistoryAnnouncement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_announcement_params
      params.require(:history_announcement).permit(:title, :body, :image, :status, :cause, :publication, :category_id)
    end
end
