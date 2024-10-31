<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSTL Feed List</title>
    <style>
        /* Body styling */
        body {
            font-family: 'Helvetica Neue', sans-serif;
            background-color: #f5f6fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        header {
            background-color: #4a90e2;
            color: #fff;
            padding: 25px;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        header h1 {
            margin: 0;
            font-size: 2em;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        /* Main container styling */
        .container {
            display: flex;
            justify-content: center;
            padding: 40px 15px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .product-list {
            flex: 1;
            max-width: 900px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
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
        }

        th, td {
            padding: 16px 20px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #4a90e2;
            color: #fff;
            font-weight: 700;
            font-size: 0.9em;
            text-transform: uppercase;
        }

        /* Table row styling */
        tbody tr {
            transition: background 0.3s, transform 0.2s;
        }

        tbody tr:nth-child(odd) {
            background-color: #f7f9fc;
        }

        tbody tr:nth-child(even) {
            background-color: #ffffff;
        }

        tbody tr:hover {
            background-color: #eaf2fd;
            transform: scale(1.02);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        }

        /* Column widths */
        th:nth-child(1), td:nth-child(1) {
            width: 30%;
        }

        th:nth-child(2), td:nth-child(2) {
            width: 50%;
        }

        th:nth-child(3), td:nth-child(3) {
            width: 20%;
            text-align: center;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            th, td {
                padding: 12px 10px;
                font-size: 0.9em;
            }

            header h1 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Feed List</h1>
    </header>
    
    <div class="container">
        <div class="product-list">
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="feed" items="${feedList}">
                            <tr>
                                <td>${feed.title}</td>
                                <td>${feed.description}</td>
                                <td>${feed.date}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
