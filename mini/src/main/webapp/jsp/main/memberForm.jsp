<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<body>
    <form  name="frm" action="${pageContext.request.contextPath}/memberInsert.do" method="post">
        <table align="center">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id" /></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" /></td>
            </tr>
            
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="password" /></td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td><input type="text"name="phone">
                 </td>
               </tr>
               <tr>
                <td id="title">이메일</td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
           
        </table>
            
            <p align="center"><input type="submit" name="submit" value="등록" />
            <input type="reset" name="reset" value="취소" /></p>
        </tr>
    </form>
</body>
</html>