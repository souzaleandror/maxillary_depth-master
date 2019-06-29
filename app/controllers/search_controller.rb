class SearchController < ApplicationController

  def index
    @q = params
    if ((@q[:field_patient].present?) && (@q[:field_patient] != '') && (@q[:field_value] != '')) then
      if @q[:field_patient] == 'name' then
        # Name (String)
        @result = Patient.where("lower(#{@q[:field_patient]}) LIKE ?", "%#{@q[:field_value]}%".downcase)
      else 
        # Date Birth (Date)
        myDate = Date.parse(@q[:field_value].to_datetime.strftime('%Y-%m-%d')) rescue nil
        @result = Patient.where("#{@q[:field_patient]} = ?", myDate)
      end
    elsif ((@q[:field_exam].present?) && (@q[:field_exam] != '') && (@q[:field_value] != '')) then
      if @q[:field_exam] == 'patient' then 
        # Patient.name (String)
        @result = Exam.joins(:patient).where("lower(patients.name) LIKE ?", "%#{@q[:field_value]}%".downcase)
      else
        # ID
        @result = Exam.where("#{@q[:field_exam]} = ?", @q[:field_value].to_i)
      end
    else
      flash[:error] = "Search Not Found !"
      redirect_to root_path
    end
  end

end
