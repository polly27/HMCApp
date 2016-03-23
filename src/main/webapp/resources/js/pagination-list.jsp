<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

var currentPage = 1;

$(document).ready(function () {
    toggleItems(currentPage);
    toggleCurrentClassPage(currentPage);
    setSpanFromTo();
});

function showPage(page) {
    toggleItems(currentPage);
    toggleItems(page);
    toggleCurrentClassPage(currentPage);
    toggleCurrentClassPage(page);
    currentPage = page;
    setSpanFromTo();
}

function toggleItems(page) {
    for (i = (page-1)*itemsPerPage + 1; i <= itemsNum && i <= page*itemsPerPage; i++) {
        $('#item' + i).toggle();
    }
}

function toggleCurrentClassPage(page) {
    $('#page'+page).toggleClass("current");
}

function setSpanFromTo() {
    var from = (currentPage - 1) * itemsPerPage + 1;
    var to = currentPage * itemsPerPage;
    if(to > itemsNum) {
        to = itemsNum;
    }
    $('#showFromTo').text( function() {
        if(from == to)
            return from.toString() + 'th result';
        return from.toString() + '-' + to.toString() + 'of ' + itemsNum + ' results';
    });
}

