<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 17/10/2022
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | DataTables</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${root}AdminF/plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${root}AdminF/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="${root}AdminF/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="${root}plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${root}AdminF/asset/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="${root}AdminF/asset/dist/css/style.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <%@include file="./ad_header.jsp" %>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <%@include file="./sidebar.jsp" %>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>DataTables</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="../../admin.jsp">Home</a></li>
                            <li class="breadcrumb-item active">Danh mục</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Thêm danh mục mới</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="${root}Ad_AddCategory" method="post">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Danh mục cha</label>
                                        <select class="custom-select form-control-border" id="exampleSelectBorder"
                                                name="maLoai">
                                            <c:forEach items="${listlsp}" var="l">
                                                <option value="${l.maLoai}" ${danhMuc.maLoai == l.maLoai ? 'selected' : ''} >${l.tenLoai}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Tên danh mục</label>
                                        <input type="text" class="form-control" id="exampleInputName1" name="tendanhmuc"
                                               value="${danhMuc.tenDM}"/>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <input type="hidden" value="${danhMuc.maDM}" name="maDM">
                                    <button type="submit" class="btn btn-primary">${note}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>    <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%@include file="./ad_footer.jsp" %>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<%@include file="./jqueryScript.jsp" %>
</body>
</html>