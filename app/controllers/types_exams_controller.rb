class TypesExamsController < ApplicationController
  before_action :set_types_exam, only: [:show, :edit, :update, :destroy]

  # GET /types_exams
  # GET /types_exams.json
  def index
    @types_exams = TypesExam.all.order(name: :desc)
  end

  # GET /types_exams/1
  # GET /types_exams/1.json
  def show
  end

  # GET /types_exams/new
  def new
    @types_exam = TypesExam.new
  end

  # GET /types_exams/1/edit
  def edit
  end

  # POST /types_exams
  # POST /types_exams.json
  def create
    @types_exam = TypesExam.new(types_exam_params)

    respond_to do |format|
      if @types_exam.save
        format.html { redirect_to @types_exam, notice: 'Types exam was successfully created.' }
        format.json { render :show, status: :created, location: @types_exam }
      else
        format.html { render :new }
        format.json { render json: @types_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /types_exams/1
  # PATCH/PUT /types_exams/1.json
  def update
    respond_to do |format|
      if @types_exam.update(types_exam_params)
        format.html { redirect_to @types_exam, notice: 'Types exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @types_exam }
      else
        format.html { render :edit }
        format.json { render json: @types_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /types_exams/1
  # DELETE /types_exams/1.json
  def destroy
    @types_exam.destroy
    respond_to do |format|
      format.html { redirect_to types_exams_url, notice: 'Types exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_types_exam
      @types_exam = TypesExam.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def types_exam_params
      params.require(:types_exam).permit(:name, :active)
    end
end
