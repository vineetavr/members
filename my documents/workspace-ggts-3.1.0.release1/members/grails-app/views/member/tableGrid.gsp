<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>table</title>
</head>
<body>
  <div class="body">
  
  <style>
			
label
{
background-color:#ff0000;
cursor: pointer;
	display: inline-block;
	margin: 0 0.25em 0 0;
}			


			
table,th,td
{
border:1px solid black;
width:400px;
margin-left:40px;
}

input, select, textarea {
	background-color: #800000;
	cursor: pointer;
	border: 1px solid #cccccc;
	font-size: 1em;
	padding: 0.2em 0.4em;
}
			</style>
			<table border="2">
			
			
			<caption>Purchase Order Entry (Line Item Details)</caption><br>
			
			<ul>
		
		<g:submitButton name="search" value="search for product" color="808080"/>
			
			</ul><br>
			
			
	<label for="product">Enter a product and order quality and click on to add the product</label>		<br>
			
			<br>
			
			
			<thead border="normal">
			<tr>
			<th>Product code</th>
			<th>Product Description</th>
			<th>Image</th>
			<th>Price per Unit</th>
			<th>Units</th>
			</tr>
			</thead>
			
			
			
			<tbody border="normal">
			<tr>
			
			
			
			
			<td bgcolor="808080" >

			
			Autocomplete</td>
			<td bgcolor="808080">Autocomplete</td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			</tr>
			
			
			
			</tbody>
			</table><br>
			<br>
			<br>
			
			<table dir="ltr">
			<thead>
			<tr>
			<th>Product code</th>
			<th>Product Description</th>
			<th>Image</th>
			<th>Price per Unit</th>
			<th>Units</th>
			<th>Line Total</th>
			</tr>
			</thead>
			
			<tbody>
			<tr  height="80px">
			
			
			<td ></td>
			<td>product description<br>
			<br>
			
			<p style="color:gray">

			
			open order qty:###<br>
			unpaid pl qty:###<br>
			paid pl qty:###<br>
			invoiced in 7 days:###<br></p>
			
			</td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			<td ></td>
			</tr>
			
			<tr border="1">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			<td></td>
			</tr>
			
			<tr border="1">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			<td></td>
			</tr>
			
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			<td ></td>
			</tr>
			
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td bgcolor="808080"></td>
			<td ></td>
			</tr>
			
			
			<tr>
			<td></td>
			<td></td>
			</tr>
			
			
			</tbody>
			
			
			</table><br>
			
			<br>
			
			<g:submitButton name="cancel" value="cancel order"/>
			<g:submitButton name="back" value="Back"/>
			<g:submitButton name="next" value="Next"/>
			
  
  </div>
</body>
</html>