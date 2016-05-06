<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Book Description for <%= @title %></title>
</head>
<body>
 <h1><%= @title %> (<%= @isbn %>)</h1>
           <p>by <%= @author %></p>
           <ul>
             <% for @item in @description %>
               <li><%= @item %></li>
             <% end %>
           </ul>
           <p>Only <%= @price %>!!!</p>
 </body>
 </html>