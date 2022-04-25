<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String operator = request.getParameter("operator");
    // 表示するメッセージ用の変数
    int num1Int = 0, num2Int = 0;
	String message = "数値を入力してください";
	
    if(num1 != null && num2 != null){
		
	// メッセージ作成
	
	    if(num1.isEmpty() && num2.isEmpty()){
	    	message = "数値が両方とも未入力です";
	    }else if(num1.isEmpty() || num2.isEmpty()){
	    	message = "数値を入力してください";
	    }else{
	    	num1Int = Integer.parseInt(num1);
			num2Int = Integer.parseInt(num2);
	    	switch(operator){
	    	case "add":
	    		message = num1 + "+" + num2 + "=" + (num1Int+num2Int);
	    		break;
	    	case "sub":
	    		message = num1 + "-" + num2 + "=" + (num1Int-num2Int);
	    		break;
	    	case "mul":
	    		message = num1 + "x" + num2 + "=" + (num1Int*num2Int);
	    		break;
	    	case "div":
	    		message = num1 + "÷" + num2 + "=" + (num1Int/num2Int);
	    		break;
	    	}
	    }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
	<% out.println(message); %>
  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> <input type="number" min="1" max="999999" class="number"
      name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>