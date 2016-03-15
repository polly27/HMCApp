$(document).ready(function() {
    if(sessionStorage.length == 0) {
        loadSlider('year',1990,2016,1,"");
        loadSlider('price',1000,20000,500,"");
        loadSlider('x-motion',200,1500,100,"");
        loadSlider('y-motion',200,1500,100,"");
        loadSlider('z-motion',200,1500,100,"");
        loadSlider('x-table',200,1500,100,"");
        loadSlider('y-table',200,1500,100,"");
    } else {
        loadSettings();
    }
});

function submitFilter() {
    saveSettings();
    $('#filterForm').submit();
}

function loadSettings() {
    loadCheckbox('brand',sessionStorage.brand);
    loadSlider('year',1990,2016,1,sessionStorage.year);
    loadSlider('price',1000,20000,100,sessionStorage.price);
    loadCheckbox('location',sessionStorage.location);
    loadSlider('x-motion',200,1500,100,sessionStorage.xMotion);
    loadSlider('y-motion',200,1500,100,sessionStorage.yMotion);
    loadSlider('z-motion',200,1500,100,sessionStorage.zMotion);
    loadSlider('x-table',200,1500,100,sessionStorage.xTable);
    loadSlider('y-table',200,1500,100,sessionStorage.yTable);
}

function loadCheckbox(name,data) {
    var i = 0;
    $('input[name=' + name + ']').each(function(){
        $(this).prop('checked',data.charAt(i++) == '1');
    });
}

function loadSlider(nameVal,minVal,maxVal,stepVal,valueVal) {
    valueVal = (valueVal == "") ? [minVal,maxVal] : valueVal.split(",").map(Number);
    $('#'+nameVal+'-slider').slider({min:minVal, max:maxVal, step:stepVal , value:valueVal});
}

function saveSettings() {
    sessionStorage.brand = saveCheckbox('brand');
    sessionStorage.location = saveCheckbox('location');
    sessionStorage.year = saveSlider('year');
    sessionStorage.price = saveSlider('price');
    sessionStorage.xMotion = saveSlider('x-motion');
    sessionStorage.yMotion = saveSlider('y-motion');
    sessionStorage.zMotion = saveSlider('z-motion');
    sessionStorage.xTable = saveSlider('x-table');
    sessionStorage.yTable = saveSlider('y-table');
}

function saveCheckbox(name) {
    var data = "";
    $('input[name=' + name + ']').each(function(){
        data += this.checked ? "1" : "0";
    });
    return data;
}

function saveSlider(name) {
    return $('#' + name + '-slider').val();
}
