#json.extract! exam, :id, :patient_id, :types_exam_id, :point_n, :point_a, :point_po, :point_or, :created_at, :updated_at
#json.url exam_url(exam, format: :json)
json.id exam.id
json.types_exam (exam.types_exam.present? ? exam.types_exam.name : "N/A")
json.point_n "X => #{exam.point_n.x.to_s}, <br> Y => #{exam.point_n.y.to_s}".html_safe
json.point_a "X => #{exam.point_a.x.to_s}, <br> Y => #{exam.point_a.y.to_s}".html_safe
json.point_po "X => #{exam.point_po.x.to_s}, <br> Y => #{exam.point_po.y.to_s}".html_safe
json.point_or "X => #{exam.point_or.x.to_s}, <br> Y => #{exam.point_or.y.to_s}".html_safe
json.angle exam.maxillary_depth_angle
json.action raw("<div class='float-right'><a class='btn btn-sm btn-info' data-remote='true' href='/exams/"+exam.id.to_s+"'> Show </a> <a class='btn btn-sm btn-warning' data-remote='true' href='/exams/"+exam.id.to_s+"/edit'> Edit </a> <a data-confirm='Are you sure?' class='btn btn-sm btn-danger delete-exam' data-remote='true' rel='nofollow' data-method='delete' href='/exams/"+exam.id.to_s+"'> Destroy </a> </div>")