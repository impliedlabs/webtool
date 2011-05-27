// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function () {  
  $('#indivs th a, #orgs th a, #indivs .pagination a, #orgs .pagination a').live('click', function () {  
    $.getScript(this.href);  
    return false;  
  });  
  
   $('#indivs_search').submit(function () {  
    $.get(this.action, $(this).serialize(), null, 'script');  
    return false;  
  }); 
  
    $('#orgs_search').submit(function () {  
    $.get(this.action, $(this).serialize(), null, 'script');  
    return false;  
  }); 
  
  
})

