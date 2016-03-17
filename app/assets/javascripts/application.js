// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
window.onload = function () {

            
        // requisição ajax
     	$.ajax({ 
           type: "GET", 
           url: "http://localhost:3000/api/colaboradors",
           dataType: "json", 
           success: function(data){ 
              
              trataDados(data);
             
            }

          });
     	   
       
           
      //função que pega os dados da requisição para ser tratados
      function trataDados(data){
         var total= data.length;
         var Checked=0;
         var noChecked=0;

      
      	for(var i=0; i < data.length; i++){
           if(data[i].checkin == "sim"){
           	Checked++;
           }else{
              noChecked++;
           }
      	}

     
             //grafico canvasJs necessario colocalar a div <div id="chartContainer" style="height: 300px; width: 100%;"></div>
					               var chart = new CanvasJS.Chart("chartContainer", {
											theme: "theme3",//theme1
											title:{
												text: "Estatistica de convidados"              
											},
											animationEnabled: true,   // change to true
											data: [              
											{
												// Change type to "bar", "area", "spline", "pie",etc.
												type: "column",
												dataPoints: [
													{ label: "total",  y: total },
													{ label: "Checked", y: Checked },
													{ label: "no check in", y: noChecked  },
												
												]
											}
											]
						          });

						         chart.render();
						       //fim do grafico  
           
      }
              
      trataDados();

           

	
}
  

  