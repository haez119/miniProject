<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
<style>


.left-box {
  color: black;
  padding-top: 59px;
  float: left;
  width: 50%;
  height: 50%;
  
}
.right-box {
  
  color: black;
  padding-top: 30px;
  float: right;
  width: 50%;
  height: 80%;
}

input{
	width: 200px;
	background: rgb(56, 56, 56);
	border-style:none;
	color:white;
	
	}

</style>

<script src="http://code.jquery.com/jquery-3.5.1.js" 
integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">
</script>
<script>
$(()=>{
	
	function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    }
	
	$('#person').on('change',function(){
		$("#price").html(comma($('#person option:checked').val()*20000*$('#rankSale').val())+'원');
		$("#price2").val($('#person option:checked').val()*20000*$('#rankSale').val());
	});
	
	
});
</script>
</head>
<body>
   <div>
      <div class="right-box">
      <h2 style="color: white; padding-bottom: 15px" align="center" >${name}님의 예약정보</h2>
      <form id='frm' name='frm' method='post' action='reserveResult.do' >
      <table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
      
<!-- 상세정보 -->   
  
          <tr>
             <th>지점명 &nbsp;</th>
             <td><input type="text" name ="branch_name" value="${thVO.branch_name}" readonly="readonly"> </td>
          </tr>
         <tr>
             <th>예약일자 &nbsp;</th>
             <td><input type="text"name="date" value= "${param.date}" readonly="readonly"> </td>
          </tr>
         <tr>
             <th>예약시간</th>
             <td><input type="text" value="${fn:substring(param.time,0,2)}:${fn:substring(param.time,2,4)}">
             <input type="hidden"name="time" value="${param.time}" readonly="readonly"></td>
          </tr>
          <tr>
             <th>테마명 &nbsp;</th>
             <td><input type="text" name="thema_name" value="${thVO.thema_name}" readonly="readonly"></td>
          </tr>
         <tr>
             <th>예약자 &nbsp;</th>
             <td><input type="text" name="name" value="${name}" readonly="readonly"></td>
          </tr>
          <tr>
             <th>회원등급 &nbsp;</th>
             <td>
             <input type="text" name="rank" value="${meVo.rank}" readonly="readonly">
             <c:choose>
             <c:when test="${meVo.rank=='Silver'}">
             <input type="hidden" id="rankSale" value=0.95>
             </c:when>
             <c:when test="${meVo.rank=='Gold'}">
             <input type="hidden" id="rankSale" value=0.90>
             </c:when>
             <c:when test="${meVo.rank=='VIP'}">
             <input type="hidden" id="rankSale" value=0.85>
             </c:when>
              <c:otherwise>
              <input type="hidden" id="rankSale" value=1>
              </c:otherwise>
             </c:choose>
             </td>
          </tr>
          <tr>
             <th>연락처 &nbsp;</th>
             <td><input type="text" name="phone" value="${meVo.phone}" readonly="readonly"></td>
          </tr>
         <tr>
             <th>인원 &nbsp;</th>
             <td> 
             <select id="person" name="person">
              <c:forEach var="i" begin="1" end='${thVO.max_per}'>
        	 <option value='${i}'>${i}명</option>
       		 </c:forEach>
             </select>
             </td>
          </tr>   
         <tr>
             <th>가격 &nbsp;</th>
            
             <c:choose>
             <c:when test="${meVo.rank=='Silver'}">
             <td id='price' name="price">19,000원</td>
             </c:when>
             <c:when test="${meVo.rank=='Gold'}">
             <td id='price' name="price">18,000원</td>
             </c:when>
             <c:when test="${meVo.rank=='VIP'}">
              <td id='price' name="price">17,000원</td>
             </c:when>
             <c:otherwise>
             <td id='price' name="price">20,000원</td>
             </c:otherwise>
             </c:choose>
            
             <c:choose>
             <c:when test="${meVo.rank=='Silver'}">
           	 <input type='hidden'name='price' id='price2' value="19000">
             </c:when>
             <c:when test="${meVo.rank=='Gold'}">
             <input type='hidden'name='price' id='price2' value="18000">
             </c:when>
             <c:when test="${meVo.rank=='VIP'}">
             <input type='hidden'name='price' id='price2' value="17000">
             </c:when>
             <c:otherwise>
             <input type='hidden'name='price' id='price2' value="20000">
             </c:otherwise>
             </c:choose>	
            
             <input type='hidden' name='thema_no'value='${thVO.thema_no }' readonly="readonly">
             
         	 </tr>   
        	 <tr>
             <th>결제여부 &nbsp;</th>
             <td><input type="text" name='payment'value="미결" readonly="readonly"></td>
              
  
       </table>
       <div align="right">
       <button type='submit'>예약하기</button>
       <button type='reset'>취소하기</button>
       
       </div>
       </form>
       </div>
      
      
      <div class="left-box">
      <div style="background-color: black; padding: 30px;">
   
         <img src='${pageContext.request.contextPath}/img/${thVO.thema_img}' height='400px' width='300px'><br>
  		 <c:forEach var="i" begin="1" end='${thVO.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  	     </c:forEach>
      </div>
      </div>
   </div>
   
    <div align="center"><img src='${pageContext.request.contextPath}/img/회원정보.png' height='400px' width='800px'></div>
</body>
</html>