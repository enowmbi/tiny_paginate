class RecordingsController < ApplicationController
  before_action :set_recording, only: %i[ show edit update destroy ]

  # GET /recordings
  def index
    debugger
    @recordings = set_page_and_extract_portion_from(collection: Recording.all)
  end

  # GET /recordings/1
  def show
  end

  # GET /recordings/new
  def new
    @recording = Recording.new
  end

  # GET /recordings/1/edit
  def edit
  end

  # POST /recordings
  def create
    @recording = Recording.new(recording_params)

    if @recording.save
      redirect_to @recording, notice: "Recording was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /recordings/1
  def update
    if @recording.update(recording_params)
      redirect_to @recording, notice: "Recording was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /recordings/1
  def destroy
    @recording.destroy!
    redirect_to recordings_path, notice: "Recording was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recording
      @recording = Recording.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def recording_params
      params.fetch(:recording, {})
    end
end
