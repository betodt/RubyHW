<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></title>
</head>
<body>
 <h1>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></h1>
           <p>You need to buy:</p>
           <ul>
             <% for @item in @items %>
               <li><%= h(@item) %></li>
             <% end %>
           </ul>
 </body>
 </html>
