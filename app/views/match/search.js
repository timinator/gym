$('#results').empty();
$('#results').append("<%=j render :partial => 'results', :locals => {:users => @users} %>");