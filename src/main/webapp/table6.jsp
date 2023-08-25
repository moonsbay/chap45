<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table6.jsp</title>
<style type="text/css">
/* css주석 */
table{
	font-family: monospace; 
	font-size: 2em;   
	border-collapse: collapse;
}
h1{font-size : 40pt;} 

</style>
<script type="text/javascript">

class Blink{
    
	tid = [];  // ';' 생략이 가능하다 이하 똑같다
	
	run(){
//		console.log("run..."+ Math.random())    테스트용 출력
		let table = document.querySelector('table')
//		for(let i=0; i<20; i++)     전통적 for문
	    for(let tr of table.rows){   //향상된 for문
	    	for(let td of tr.cells){
	    		
	    		if(td.innerHTML=='A'){
	    		let id = setInterval(function() {
	    			if(td.style.visibility == 'hidden')
	    				td.style.visibility = 'visible'
	    			else
	    				td.style.visibility = 'hidden'
	    			}, Math.random()*500 + 10);
	    		this.tid.push(id)
	    		}
	    	}
	    }    
	    	




	}
	
	clear(){
//		console.log(this.tid)      테스트
		for(let id of this.tid)
			clearInterval(id)
	}
	
}



window.onload = function(){
	let start = document.querySelectorAll('button')[0]
	let stop = document.querySelectorAll('button')[1]
	
	start.disabled = false;
	stop.disabled = true;            //버튼 비활성
	
	let blink;
	
	start.onclick = function(){
		start.disabled = true;
		stop.disabled = false;
		blink = new Blink();
		blink.run();
	}
	stop.onclick = function(){
		start.disabled = false;
		stop.disabled = true;
		blink.clear();
	}
}
/*
 * 자바스크립트 주석, 자바와 동일 //도 한줄 주석
 */
//window.onload..
/*  window.addEventListener('load', function() {
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
  });*/
</script>
<script type="text/javascript">

</script>
</head>
<body>
<h1>Table Tag연습</h1>
<button>start</button>
<button>stop</button>
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