<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function listFrm(){
	location.href="board.do";
}

function formCheck() {
	var title = document.forms[0].title.value;
	var writer = document.forms[0].writer.value;
	var content = document.forms[0].content.value;
	
	if(title == null || title == ""){
		alert('제목을 입력하세요.');
		document.forms[0].title.focus();
		return false;
	}
	if(writer == null || writer == ""){
		alert('작성자를 입력하세요.');
		document.forms[0].writer.focus();
		return false;
	}
	if(content == null || content == ""){
		alert('내용을 입력하세요.');
		document.forms[0].content.focus();
		return false;
	}
}
//&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</script>
<body>
<form name="frm" id="frm" method="post" action="boardInsert.do"  >
      <table width="700" border="3" bordercolor="lightgray" align="center">
         <tr>
            <td id="title">공지번호</td>
            <td><input name="no" type="text" value=""></td>
         </tr>
         <tr>
            <td id="title">제목</td>
            <td><input name="title" type="text" size="70"
               maxlength="100" value="" /></td>
         </tr>
         <tr>
            <td id="title">날짜</td>
            <td><input name="Date" type="date" value=""></td>
         </tr>
         <tr>
            <td id="title">카테고리</td>
            <td><select name="category">
                  <option value="공지사항">공지사항</option>
                  <option value="이벤트">이벤트</option>
            </select></td>
            
         </tr>
         <tr>
            <td id="title">내 용</td>
            <td><textarea name="info_Cont" cols="70" rows="10"></textarea>
            </td>
         </tr>

         <tr>
            <td align="center" colspan="3">
            <button type="submit" onclick="return addFrm()">등록</button>
            <input type="button" value="작성취소" onclick="listFrm()">
            </td>
         </tr>
         
      </table>
   </form>

</body>
</html>