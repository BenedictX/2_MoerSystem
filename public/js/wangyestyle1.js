


//��ҳһ��һ��ɫ
function altRows(id){    
     if(document.getElementsByTagName){         
         var table = document.getElementById(id);  
         var rows = table.getElementsByTagName("tr"); 
         for(i = 0; i < rows.length; i++){         
         if(i % 2 == 0){
             rows[i].className = "evenrowcolor";
         }else{
            rows[i].className = "oddrowcolor";
     }        
    }
  }
 }
 
window.onload=function(){
   altRows('alternatecolor');
}
//��ҳһ��һ��ɫ

$(function(){
$(".tableSel").on("mouseover","td",function(event){

$(event.target).closest("tr").css("background-color","#EBEFF5");

});

$(".tableSel").on("mouseout","td",function(event){

$(event.target).closest("tr").css("background-color","white");

});
});

function userChanger(t){
var r=confirm("ɾ��������¼");
if (r==true)
  {
 window.location.href=t;
return true;
  }
else
  {
return false;
  }
}

function getValue(str)
{
   var input1=window.document.getElementById("neirong");
    input1.value=str;
}

function getValue2(str)
{

   var input2=window.document.getElementById("neirong2");
    input2.value=str;
}

function getValue3(str)
{

   var input3=window.document.getElementById("neirong3");
    input3.value=str;
}

<!--Ϊÿһ��table����һ���¼�-->
function changColor(obj){
obj.style.backgroundColor="6D98FB";
}
function changColor2(obj){
if(obj.style.backgroundColor="6D98FB"){
obj.style.backgroundColor="";
}else{
obj.style.backgroundColor="6D98FB";
}
}

(function(){
	var oTable=document.getElementById("alternatecolor");
	for (var i=0;i<oTable.rows.length;i++){
      oTable.rows[i].setAttribute("onmouseover", "changColor(this)");
	  oTable.rows[i].setAttribute("onmouseout", "changColor2(this)");
   }   
}());

