<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.lang.*" errorPage="" %>

<%
//取得傳入參數
//String cusNo=request.getParameter("cusNo").trim();

Connection con;

//設定連結物件, 連到 MySQL north 資料庫
try{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "mysql"); 
}catch(Exception e){
    System.out.println("資料庫連接錯誤");
    return;
}


//建立一個 PreparedStatement, 用以執行SQL

PreparedStatement stmt = con.prepareStatement("select * from student");
//stmt.setString(1, cusNo);

//執行stmt中的SQL命令, 用rs存放執行SQL指令後的結果
ResultSet rs=null;

try{ 	
    rs=stmt.executeQuery(); 	 
}catch(Exception e){
    System.out.println("SQL命令執行錯誤");
    return;
}	


//將rs指向第一筆記錄, 如果沒有資料, 結束此次查詢
if(!rs.next()){ 
   out.println("[]"); 
   out.flush();
   rs.close(); 
   stmt.close(); 
   con.close(); 
   return; 
} 


//使用迴圈將rs內容逐筆讀
String result="[";

do{
   result+="{\"stuName\":"; 
   result+=("\"" + rs.getString("stuName") + "\"");
   result+=", \"gender\":";
   result+=("\"" + rs.getString("gender") + "\"");
   result+="},";
}while(rs.next()); 

result=result.substring(0, result.length()-1);
result+="]";

out.println(result);
out.flush();


//關閉使用的記憶體
rs.close(); 
stmt.close(); 
con.close(); 
%> 