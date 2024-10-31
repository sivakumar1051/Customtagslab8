<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.sivakumar.com/feed" prefix="feedTags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Custom Tag Feed List</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        header {
            background: linear-gradient(45deg, #3a80e2, #00bfff);
            color: #fff;
            padding: 25px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        header h1 {
            margin: 0;
            font-size: 1.8em;
            font-weight: bold;
            letter-spacing: 1px;
        }

        /* Container and layout */
        .container {
            display: flex;
            justify-content: center;
            padding: 30px 15px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .product-list {
            flex: 1;
            max-width: 900px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 25px;
        }

        /* Table styling */
        .table-container {
            width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px 20px;
            text-align: left;
            border-bottom: 1px solid #d0d0d0;
        }

        th {
            background-color: #3a80e2;
            color: #fff;
            font-weight: 600;
            font-size: 0.9em;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* Table row styling */
        tbody tr {
            transition: background 0.3s, transform 0.2s;
        }

        tbody tr:nth-child(odd) {
            background-color: #eaf3ff;
        }

        tbody tr:nth-child(even) {
            background-color: #ffffff;
        }

        tbody tr:hover {
            background-color: #cce5ff;
            transform: scale(1.02);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        /* Column widths */
        th:nth-child(1), td:nth-child(1) {
            width: 35%;
        }

        th:nth-child(2), td:nth-child(2) {
            width: 45%;
        }

        th:nth-child(3), td:nth-child(3) {
            width: 20%;
            text-align: center;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            th, td {
                padding: 10px;
            }

            header h1 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
<header>
    <h1>Custom Tag Feed List</h1>
</header>

<div class="container">
    <div class="product-list">
        <div class="table-container">
            <feedTags:feedList feedList="${feedList}"/>
        </div>
    </div>
</div>

</body>
</html>
