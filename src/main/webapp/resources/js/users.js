$(function() {
	var table1 = $("#example1").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table2 = $("#example2").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table3 = $("#example3").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table4 = $("#example4").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table5 = $("#example5").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table6 = $("#example6").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table7 = $("#example7").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table8 = $("#example8").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table9 = $("#example9").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});
	var table10 = $("#example10").DataTable({
		responsive : true,
		buttons : [ 'copy', 'excel', 'pdf' ]
	});

	table1.buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	table2.buttons().container().appendTo('#example2_wrapper .col-md-6:eq(0)');
	table3.buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');
	table4.buttons().container().appendTo('#example4_wrapper .col-md-6:eq(0)');
	table5.buttons().container().appendTo('#example5_wrapper .col-md-6:eq(0)');
	table6.buttons().container().appendTo('#example6_wrapper .col-md-6:eq(0)');
	table7.buttons().container().appendTo('#example7_wrapper .col-md-6:eq(0)');
	table8.buttons().container().appendTo('#example8_wrapper .col-md-6:eq(0)');
	table9.buttons().container().appendTo('#example9_wrapper .col-md-6:eq(0)');
	table10.buttons().container()
			.appendTo('#example10_wrapper .col-md-6:eq(0)');

	$('.dropify').dropify({
		messages : {
			'default' : 'Arraste o arquivo para aqui ou clique para pesquisá-lo',
			'replace' : 'Arraste o arquivo para aqui ou clique para pesquisá-lo',
			'remove' : 'Remover',
			'error' : 'Ooops, aldo deu errado.'
		},
		error : {
			'fileSize' : 'O arquivo é muito grande (Max: 1M).'
		}
	});
});
