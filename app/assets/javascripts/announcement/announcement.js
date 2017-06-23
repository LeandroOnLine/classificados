$(document).ready(function(){
  // alert('carregado!');
  set_select_event();
});

function set_select_event(){
  $("#announcement_category_id").change(function(){
    alert('Selecionado!');

    var data = $("#announcement_category_id").val();

    $.ajax({
            type: "GET",
            dataType: "json",
            data: {"id": data},
            url: "/sub_categories/fetch",
            success: function(data){
              alert(data);
            }
        });
  });
}
