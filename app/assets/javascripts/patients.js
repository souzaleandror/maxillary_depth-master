$(document).ready(function() {
	if ($('#t-patient-exams').length) {
		$.ajax({
			type: 'GET',
			url: '/exams.json',
			data: { patient: $('#patient_patient_id').val() },
			dataType: 'json',
			success: function(data) {
				$('#t-patient-exams').dataTable({
					createdRow: function(row, data, dataIndex) {
						$(row).attr('id', 'rowIndex' + data.id);
					},
					aaSorting: [ [ 0, 'desc' ] ],
					data: data,
					"autoWidth": false,
					columns: [
            { data: 'id' },
            { data: 'types_exam' },
						{ data: 'point_n' },
						{ data: 'point_a' },
						{ data: 'point_po' },
						{ data: 'point_or' },
						{ data: 'angle' },
						{ data: 'action' }
					]
				});
			}
		});
	}
});
