<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table4.jsp</title>
<style type="text/css">
/* css주석 */
table{
	font-family: monospace; 
	font-size: 1em;   
	border-collapse: collapse;
}
h1{font-size : 40pt;} 

</style>
<script type="text/javascript">
/*
 * 자바스크립트 주석, 자바와 동일 //도 한줄 주석
 */
//window.onload..
  window.addEventListener('load', function() {
  	let table = document.querySelector('table');
  	let cnt = 0;
  	for(let i=0; i<20; i++){
  		//console.log(table.rows[i])
  		for(let j=0; j<40; j++){
 // 			console.log(++cnt);
 // 			console.log(table.rows[i].cells[j]);
  			let td = table.rows[i].cells[j];
  			if(td.innerHTML == 'A'){
  				setInterval(function(){
  				if(td.style.visibility=='hidden')
  				  td.style.visibility = 'visible';
  				else
  					td.style.visibility = 'hidden';
  				}, Math.random()*1000)
  			}
  		}
  	}
  });
</script>
<script type="text/javascript">

</script>
</head>
<body>
<h1>Table Tag연습</h1>
<hr>
<table>
	<tbody>
	<%-- jsp주석 --%>
	<%
		for(var i=0; i<20; i++){
	%>
		<tr>
		<%
			for(var j=0; j<40; j++){
				var a = new Alpha();
		%>
			<td style="color:<%=a.getFg() %>; background:<%=a.getBg()%>"><%=a.getCh()%></td>
		<%
			}
		%>		
		</tr>
		<%
		}
		%>
	</tbody>

</table>
</body>
</html>