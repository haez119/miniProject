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

.bo{
	width: 200px;
	background: rgb(56, 56, 56);
	border-style:none;
	color:white;
	
	}
#회원 {
 padding-top: 30px;
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
	
	
	
	$('#personnel').on('change',function(){
		$("#price").html(comma($('#personnel option:checked').val()*20000*(1-$('#sale').val())*$('#rankSale').val())+'원');
		$("#price2").val($('#personnel option:checked').val()*20000*(1-$('#sale').val())*$('#rankSale').val());
	});
	$('#person').change();
	
});
</script>
</head>
<body>
   <div>
      <div class="right-box">
      <c:if test="${nomember ne null}">
      <script>
        var result = confirm("비회원으로 예약 하시겠습니까?");
        
        if(result)
        {
            document.write("<h1> 실행합니다. </h1>")
        }
        else
        {
        	location.href="${pageContext.request.contextPath}/loginPage.do";
        }
     </script>
      <h2 style="color: white; padding-bottom: 15px" align="center" >비회원의 예약정보</h2>
      </c:if>
      <c:if test="${nomember eq null}">
      <h2 style="color: white; padding-bottom: 15px" align="center" >${name}님의 예약정보</h2>
      </c:if>
      <form id='frm' name='frm' method='post' action='reserveResult.do' >
      <table border="1" style=" background-color:  rgb(56, 56, 56); color: white;  padding: 15px;" class="table">
      
<!-- 상세정보 -->   
  
          <tr>
             <th>지점명 &nbsp;</th>
             <td><input  class="bo" type="text" name ="branch_name" value="${thVO.branch_name}" readonly="readonly"> </td>
          </tr>
         <tr>
             <th>예약일자 &nbsp;</th>
             <td><input class="bo"  type="text"name="date" value= "${param.date}" readonly="readonly"> </td>
          </tr>
         <tr>
             <th>예약시간</th>
             <td><input class="bo"  type="text" value="${fn:substring(param.time,0,2)}:${fn:substring(param.time,2,4)}">
             <input type="hidden"name="time" value="${param.time}" readonly="readonly"></td>
          </tr>
          <tr>
             <th>테마명 &nbsp;</th>
             <td><input class="bo"  type="text" name="thema_name" value="${thVO.thema_name}" readonly="readonly"></td>
          </tr>
         <tr>
             <th>예약자 &nbsp;</th>
             <td>
             
             <c:if test="${nomember ne null}">
             <input type="text" name="name" placeholder="이름을 입력하세요">
             </c:if>
             <c:if test="${nomember eq null}">
             <input class="bo" type="text" name="name" value="${name}" readonly="readonly">
             </c:if>
             </td>
          </tr>
          <tr>
          	<c:if test="${nomember eq null}">
             <th>회원등급 &nbsp;</th>
             <td>
             <input class="bo"  type="text" name="rank" value="${meVo.rank}" readonly="readonly">
             
             <c:if test="${meVo.rank eq 'Silver'}">
             <input type="hidden" id="rankSale" value=0.95>
             </c:if>
             <c:choose>
             <c:when test="${meVo.rank eq 'Gold'}">
             <input type="hidden" id="rankSale" value=0.90>
             </c:when>
             <c:when test="${meVo.rank eq 'VIP'}">
             <input type="hidden" id="rankSale" value=0.85>
             </c:when>
              <c:otherwise>
              <input type="hidden" id="rankSale" value=1>
              </c:otherwise>
             </c:choose>
             </td>
             </c:if>
             
             <c:if test="${nomember ne null}">
             <th>비밀번호 &nbsp;</th>
             <td>
             <c:if test="${meVo.rank eq 'Silver'}">
             <input type="hidden" id="rankSale" value=0.95>
             </c:if>
             <c:choose>
             <c:when test="${meVo.rank eq 'Gold'}">
             <input type="hidden" id="rankSale" value=0.90>
             </c:when>
             <c:when test="${meVo.rank eq 'VIP'}">
             <input type="hidden" id="rankSale" value=0.85>
             </c:when>
              <c:otherwise>
              <input type="hidden" id="rankSale" value=1>
              </c:otherwise>
             </c:choose>
             <input type="text" id="password" name="password" placeholder="비밀번호를 입력하세요"></td>
             </c:if>
          </tr>
          <tr>
             <th>연락처 &nbsp;</th>
             <td>
             <c:if test="${nomember ne null}">
              <input type="text" name="phone"  placeholder="전화번호 입력 하세요">
             </c:if>
             <c:if test="${nomember eq null}">
             <input  class="bo" type="text" name="phone" value="${meVo.phone}" readonly="readonly">
             </c:if>
             </td>
          </tr>
         <tr>
             <th>인원 &nbsp;</th>
             <td> 
             <select id="personnel" name="personnel">
              <c:forEach var="i" begin="1" end='${thVO.max_per}'>
        	 <option value='${i}'>${i}명</option>
       		 </c:forEach>
             </select>
             </td>
          </tr>
          <tr>
          
          	<td>진행중인 이벤트</td><td>${eventvo.event_name} ${eventvo.sale}% 할인
          	<c:if test = "${eventvo.sale ne 0}">
          	<input type="hidden" id="sale" name="sale" value="0.${eventvo.sale}">
          	</c:if>
          	<c:if test = "${eventvo.sale eq 0}">
          	<input type="hidden" id="sale" name="sale" value="0">
          	</c:if>
          	
          	</td>
          	
          </tr>
         
         <tr>
             <th>가격 &nbsp;</th>
 			 
 			 <c:if test = "${eventvo.sale eq 0}">
             <c:choose>
             <c:when test="${meVo.rank eq 'Silver'}">
             <td id='price' name="price">19,000원</td>
             </c:when>
             <c:when test="${meVo.rank eq 'Gold'}">
             <td id='price' name="price">18,000원</td>
             </c:when>
             <c:when test="${meVo.rank eq 'VIP'}">
              <td id='price' name="price">17,000원</td>
             </c:when>
             <c:otherwise>
             <td id='price' name="price">20,000원</td>
             </c:otherwise>
             </c:choose>
             </c:if>
             
             <c:if test = "${eventvo.sale ne 0}">
             <c:choose>
             <c:when test="${meVo.rank eq 'Silver'}">
             <td id='price' name="price" onload="loadfucntion()">19000</td>
             </c:when>
             <c:when test="${meVo.rank eq 'Gold'}">
             <td id='price' name="price" onload="loadfucntion()">18000</td>
             </c:when>
             <c:when test="${meVo.rank eq 'VIP'}">
              <td id='price' name="price" onload="loadfucntion()">17000</td>
             </c:when>
             <c:otherwise>
             <td id='price' name="price" onload="loadfucntion()">20000</td>
             </c:otherwise>
             </c:choose>
             </c:if>
             
             <c:choose>
             <c:when test="${meVo.rank eq Silver}">
           	 <input type='hidden'name='price' id='price2' value="19000">
             </c:when>
             <c:when test="${meVo.rank eq Gold}">
             <input type='hidden'name='price' id='price2' value="18000">
             </c:when>
             <c:when test="${meVo.rank eq VIP}">
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
             <td><input class="bo"  type="text" name='payment'value="미결" readonly="readonly"></td>
              
  
       </table>
       <div align="right">
       <button type='submit'>예약하기</button>
       <button type='reset'>취소하기</button>
       
       </div>
       <img id='회원' src='${pageContext.request.contextPath}/img/회원정보.PNG' height='200px' width='100%' >
       </form>
       </div>
      
      
      <div class="left-box">
      <div style="background-color: black; padding: 30px;">
   
         <img src='${pageContext.request.contextPath}/img/${thVO.thema_img}' height='700px' width='400px'><br>
  		 <c:forEach var="i" begin="1" end='${thVO.level2}'>
  			<img src='${pageContext.request.contextPath}/img/kEY.png' width='20px'>
  	     </c:forEach>
      </div>
      </div>
   </div>
   
    
</body>
</html>