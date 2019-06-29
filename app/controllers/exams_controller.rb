class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all.order(id: :desc)
    if params[:patient] && params[:patient] != "" then
     @exams = Exam.all.where(:patient_id => params[:patient]).order(id: :desc)
    end

    respond_to do |format|
      format.html { }
      format.js { }
      format.json { }
    end
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
    @patients = Patient.all.order(name: :asc)
    @types_exams = TypesExam.all.order(name: :asc).where(active: true)
    respond_to do |format|
      format.html { }
      format.js { @patient = @exam.patient }
      format.json { }
    end
  end

  # GET /exams/new
  def new
    @patients = Patient.all.order(name: :asc)
    @types_exams = TypesExam.all.order(name: :asc).where(active: true)
    if params[:id].present? then
      @patient = Patient.find(params[:id])
    end
    @exam = Exam.new

    respond_to do |format|
      format.html { }
      format.js { }
      format.json { }
    end
  end

  # GET /exams/1/edit
  def edit
    @patients = Patient.all
    @types_exams = TypesExam.all.order(name: :asc).where(active: true)
    respond_to do |format|
      format.html { }
      format.js { @patient = @exam.patient }
      format.json { }
    end
  end

  # POST /exams
  # POST /exams.json
  def create
    @patients = Patient.all.order(name: :asc)
    @types_exams = TypesExam.all.order(name: :asc).where(active: true)
    @exam = Exam.new(exam_params)

    respond_to do |format|
      if @exam.save
        format.js { @exams = @exam.patient.exams.order(id: :desc) }
        format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    @patients = Patient.all.order(name: :asc)
    @types_exams = TypesExam.all.order(name: :asc).where(active: true)
    respond_to do |format|
      if @exam.update(exam_params)
        format.js { @exams = @exam.patient.exams.order(id: :desc) }
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.js { }
      format.html { redirect_to exams_url, notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:patient_id, :types_exam_id, :point_n, :point_a, :point_po, :point_or).merge(point_n: Point.new(point_type: :point_n, x: params[:point_n_x].to_f, y: params[:point_n_y].to_f), point_a: Point.new(point_type: :point_a, x: params[:point_a_x].to_f, y: params[:point_a_y].to_f), point_po: Point.new(point_type: :point_po, x: params[:point_po_x].to_f, y: params[:point_po_y].to_f), point_or: Point.new(point_type: :point_or, x: params[:point_or_x].to_f, y: params[:point_or_y].to_f))
    end
end
