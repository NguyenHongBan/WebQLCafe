<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fDoanhThu.aspx.cs" Inherits="WebQLCafe.fDoanhThu" %>

<!DOCTYPE html>
<html>
<head>
  <title>Doanh thu</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    
    header {
      background-color: #ccc;
      color: #00ffff;
      padding: 5px;
    }
    
    label {
      display: block;
      margin-top: 10px;
    }
    
    input {
      width: 200px;
      padding: 5px;
      margin-top: 5px;
    }
    
    button {
      padding: 10px 20px;
      background-color: #808080;
      color: #fff;
      border: none;
      cursor: pointer;
      margin-top: 10px;
    }
    
    table {
      border-collapse: collapse;
      width: 100%;
      margin-top: 20px;
    }
    
    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ccc;
    }
    
    th {
      background-color: #333;
      color: #fff;
    }
  </style>
</head>
<body>
  <header>
    <h1>Doanh thu</h1>
  </header>
  
  <label for="search">Tìm kiếm trong ngày:</label>
  <input type="text" id="search" name="search">
  
  <label for="total">Tổng tiền:</label>
  <input type="text" id="total" name="total"><br />
    <br />
  <button type="button" id="close">Đóng </button>
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
      </tr>
    </thead>
    <tbody>
      <!-- Dữ liệu sẽ được thêm vào đây -->
    </tbody>
  </table>
</body>
</html>

