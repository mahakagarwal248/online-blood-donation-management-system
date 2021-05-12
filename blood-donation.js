$(document).ready(function() {
    function loaddata(type, category_id){
        $.ajax({
            url: "bd.php",
            type: "POST",
            data: {type: type, id: category_id},
            success: function(data){
                if(type == "cityData"){
                    $("#city").html(data);
                }else if(type == "stateData"){
                    $("#state").html(data);
                }else {
                    $("#country").append(data); 
                }
                
            }
        });
    }
    loaddata();

    $('#country').on("change",function(){
        var country = $("#country").val();

        loaddata("stateData",country);
    })
    $('#state').on("change",function(){
        var state = $("#state").val();

        loaddata("cityData",state);
    })
    
});