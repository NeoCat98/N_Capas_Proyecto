
var a=(document).getElementById('opc').value;
let carga='#';
let procesar='#';


switch(a){
	case "1":
		carga="./cargarUsuario";
		procesar='./editarUsuario?id=';
		break;
	case "2":
		carga="./cargarMateria";
		procesar='./editarMateria?id=';
		break;
	case "3":
		carga="./cargarCentro";
		procesar='./editarCentro?id=';
		break;
	case "4":
		carga="/materiasCursadas";
		procesar="/editarMateriaCursada";
	default:
		carga='#';
		procesar='#';

}

$(document).ready(function(){
	
	    var table = $('#tabla').DataTable( {
	        "ordering": false,
	        "processing": true,
	        "serverSide": true,
	        "ajax": carga,
	        "language": {
	            "url": "//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"
	        },
	        "paging": false,
	        "info": false,
	        "searching": false,
	        "columnDefs": [ {
	            "targets": 0,
	            "data": null,
	            "searchable": false,
	            "defaultContent": "<button class='btn btn-info' title='Editar' id='i'><i class='fa fa-pencil-alt'></i></button>"
	        }]
	    });
	    $('#tabla tbody').on( 'click', '#i', function () {
	        var data = table.row( $(this).parents('tr') ).data();
	            location.href = procesar + data[0];
	    } );
	});


