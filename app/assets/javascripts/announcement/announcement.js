$(document).ready(function(){
  set_select_event();
});

function set_select_event(){
  $("#announcement_category_id").change(function(){
    var data = $("#announcement_category_id").val();

    $.ajax({
            type: "GET",
            dataType: "json",
            data: {"id": data},
            url: "/sub_categories/fetch",
            success: function(data){
              clearSelect(getSubCategorySelectElement());
              addSubCategory(data);
             }
    });
  });
}

function clearSelect(select) {
  while (select.options.length) {
    select.remove(0);
  }
}

function addSubCategory(data){
  subCategorySelect = getSubCategorySelectElement();
  for (var i in data) {
    var option = document.createElement('option');
    option.value = data[i].id;
    option.innerHTML = data[i].sub_category_name;
    subCategorySelect.appendChild(option);
  }
}

function getSubCategorySelectElement() {
  return document.getElementById("announcement_sub_category_id");
}
