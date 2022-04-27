<%@ page import="util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String widthStr = request.getParameter("width");
    String heightStr = request.getParameter("height");
    String btn = request.getParameter("btn");

    double result = 0;

    if ("triangle".equals(btn)){
    	result = Utility.getTriangleArea(widthStr, heightStr);
    }
    else if ("rectangle".equals(btn)){
    	result = Utility.getRectangleArea(widthStr, heightStr);
    }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5</title>
</head>
<body>
  <h1>Java基礎 - 演習問題5</h1>

  <h2>計算結果</h2>
  <p>
    面積：<%=result%><br>
  </p>
  <a href="javaBasic5_input.jsp">戻る</a>
</body>
</html>