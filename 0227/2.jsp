<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>無標題文件</title>
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background: #42413C;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ 元素/標籤選取器 ~~ */
ul, ol, dl { /* 由於瀏覽器之間的差異，最佳作法是在清單中使用零寬度的欄位間隔及邊界。為了保持一致，您可以在這裡指定所要的量，或在清單包含的清單項目 (LI、DT、DD) 上指定所要的量。請記住，除非您寫入較為特定的選取器，否則在此執行的作業將重疊顯示到 .nav 清單。 */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* 移除上方邊界可以解決邊界可能從其包含的 Div 逸出的問題。剩餘的下方邊界可以保持 Div 不與接在後面的元素接觸。 */
	padding-right: 15px;
	padding-left: 15px; /* 將欄位間隔加入至 Div 內元素的兩側 (而不是 Div 本身)，即可不需執行任何方塊模型的計算作業。具有側邊欄位間隔的巢狀 Div 也可當做替代方法。 */
}
a img { /* 這個選取器會移除某些瀏覽器在影像由連結所圍繞時，影像周圍所顯示的預設藍色邊框 */
	border: none;
}
/* ~~ 網站連結的樣式設定必須保持此順序，包括建立滑過 (Hover) 效果的選取器群組在內。~~ */
a:link {
	color: #42413C;
	text-decoration: underline; /* 除非您要設定非常獨特的連結樣式，否則最好提供底線，以便快速看出 */
}
a:visited {
	color: #6E6C64;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* 這個選取器群組可以讓使用鍵盤導覽的使用者，也和使用滑鼠的使用者一樣擁有相同的滑過體驗。 */
	text-decoration: none;
}

/* ~~ 這個固定寬度的容器環繞著其他 Div ~~ */
.container {
	width: 960px;
	background: #FFF;
	margin: 0 auto; /* 兩側的自動值與寬度結合後，版面便會置中對齊 */
}

/* ~~ 頁首沒有指定的寬度，而會橫跨版面的整個寬度。頁首包含影像預留位置，必須由您自己的連結商標加以取代 ~~ */
.header {
	background: #ADB96E;
}

/* ~~ 這是版面資訊。~~ 

1) 欄位間隔只會置於 Div 的頂端或底部。此 Div 內的元素在兩側會有欄位間隔，可讓您不需進行「方塊模型計算」。請記住，如果對 Div 本身加入任何側邊的欄位間隔或邊框，在計算「總」寬度時，就會將這些加入您定義的寬度。您也可以選擇移除 Div 中元素的欄位間隔，然後在其中放置沒有寬度的第二個 Div，並依設計所需放置欄位間隔。

*/

.content {

	padding: 10px 0;
}

/* ~~ 頁尾 ~~ */
.footer {
	padding: 10px 0;
	background: #CCC49F;
}

/* ~~ 其他 float/clear 類別 ~~ */
.fltrt {  /* 這個類別可用來讓元素在頁面中浮動，浮動的元素必須位於頁面上相鄰的元素之前。 */
	float: right;
	margin-left: 8px;
}
.fltlft { /* 這個類別可用來讓元素在頁面左方浮動，浮動的元素必須位於頁面上相鄰的元素之前。 */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* 這個類別可放置在 <br /> 或空白的 Div 上，當做接在 #container 內最後一個浮動 Div 後方的最後一個元素 (如果從 #container 移除或取出 #footer) */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}

.myDiv{
	margin: 10px;
	padding: 10px;
	height: 350px;
	width: 278px;
	border: 1px solid #333;
	float: left;
}

.myPic{
	border: 2px solid #FFF;
	box-shadow:0px 0px 2px 2px #666666;
}

-->
</style></head>

<body>

<div class="container">
  <div class="header"><a href="#"><img src="" alt="在這裡插入商標" name="Insert_logo" width="180" height="90" id="Insert_logo" style="background: #C6D580; display:block;" /></a> 
    <!-- end .header --></div>
  <div class="content">
    <h1>說明</h1>
    <p>請注意，這些版面的 CSS 都有詳細的註解。如果您是在「設計」檢視中進行大部分的作業，可以看一下程式碼來取得有關使用固定版面 CSS 的提示。您可以在啟動您的網站之前，將這些註解移除。有關這些 CSS 版面所使用的技巧之詳細資訊，請至 Adobe 開發人員中心閱讀本文 - <a href=http://www.adobe.com/go/adc_css_layouts">http://www.adobe.com/go/adc_css_layouts</a>。您可以在啟動您的網站之前，將這些註解移除。有關這些 CSS 版面所使用的技巧之詳細資訊，請至 Adobe 開發人員中心閱讀本文 - <a href=http://www.adobe.com/go/adc_css_layouts">http://www.adobe.com/go/adc_css_layouts</a></p>

<div class="myDiv"><img src="nine.jpg" width="275" height="122" class="myPic">  身懷絕症的新聞主播朴宣友（李陣郁 飾演）獲得可以回到二十年前的九炷香後，於現在和過去來回穿梭而展開的故事。透過時間旅行改變過去，試圖來挽回現實中無法解決的問題，但是改變之後所產生的不穩定因素卻使現實變得更加複雜，隱藏不少反轉的趣味在其中。</div>

<div class="myDiv"><img src="mine.jpg" width="275" height="118" class="myPic">由李國毅、任容萱、是元介、翁滋蔓領銜主演。本劇劇情以90年代校園生活為故事背景，主要取景地為國立中央大學與國立宜蘭大學。</div>

<div class="myDiv"><img src="star.jpg" width="275" height="118" class="myPic">以《朝鮮王朝實錄》中1609年（光海君1年）的不明飛行物相關紀錄為基礎發揮荒誕的想像，講述從外星來到朝鮮時代的神祕男人就此生活到400年之後的現代，遇見著名女演員並墜入愛河的浪漫喜劇。</div>

<div style="clear:both">
</div>

</div>
  <div class="footer">
    <p>頁尾</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>