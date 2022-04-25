<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
  // ※必要な処理を実装してください

  // 入力値取得
  request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String bloodType = request.getParameter("bloodType");
	String message1="", message2="", message3="";
	int defAge = 0;
  // ロボットからの返信用メッセージ作成
  // 1行目-返信用メッセージ作成-
  if(name.isEmpty()){
    message1 ="こんにちは、名無しさん！";
  }else if(name.equals("ロボット")){
    message1 ="こんにちは、ロボットさん！私と同じ名前ですね！";
  }else{
    message1 ="こんにちは、"+ name +"さん";
  }
 	// 2行目-返信用メッセージ作成-
  if(age.isEmpty()){
    age = "0";
  }
  int ageInt = Integer.parseInt(age);
  if(ageInt > 20){
    defAge = ageInt - 20;
    message2 = "私よりも"+ defAge +"歳\"年上ですね。";
  }else if(ageInt < 20){
    defAge = 20 - ageInt;
    message2 = "私よりも"+ defAge +"歳\"年下ですね。";
  }else{
    message2 ="私と同い年なんですね！";
  }
  // 3行目-返信用メッセージ作成-
  switch(bloodType){
  case "typeA":
    message3="私もA型です！";
    break;
  case "typeB":
    message3="B型の人と話すのは初めてです。";
    break;
  case "typeAB":
    message3="私の母がAB型です。";
    break;
  case "typeO":
    message3="私の父がO型です。";
    break;
  }

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p><% out.println(message1); %></p>
    <p><% out.println(message2); %></p>
    <p><% out.println(message3); %></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>