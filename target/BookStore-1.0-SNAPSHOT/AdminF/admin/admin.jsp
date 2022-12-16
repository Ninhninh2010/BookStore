<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Apple_Store | Admin</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="${root}AdminF/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${root}AdminF/asset/css/logout.css">
    <link rel="stylesheet"
          href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="${root}AdminF/asset/dist/css/adminlte.min.css">
    <%-- <link rel="stylesheet" href="${root}asset/css/adminlte.min.css"> --%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Preloader -->
    <div
            class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__shake"
         
             height="60" width="60">
    </div>
    <!-- Navbar -->
    <%@include file="./ad_header.jsp" %>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <%@include file="./sidebar.jsp" %>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Danh sách đơn hàng mới</h1>
                    </div>
                    <!-- /.col -->
                    <!-- <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div> -->
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    
                   
                </div>
                <!-- /.row -->

                

                <div class="row">
                    <!-- Left col -->
                    <!-- TABLE: LATEST ORDERS -->
                    <div class="card col-md-12">
                        <div class="card-header border-transparent">
                            <h3 class="card-title">Đơn đặt hàng mới nhất</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool"
                                        data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool"
                                        data-card-widget="remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table m-0">
                                    <thead>
                                    <tr>
                                        <th>ID đặt hàng</th>
                                        <th>Khách hàng</th>
                                        <th>Trạng thái</th>
                                        <th>Thời gian</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:if  test="${size > 0}">
                                        <c:forEach var="i" begin="0" end="${size-1 }">
                                            <tr>
                                                <td>
                                                    <a href="admin/Ad_invoiceControl?maDH=${list[i].getMaDH()}">${list[i].getMaDH()}</a>
                                                </td>
                                                <td>${listName[i]}</td>
                                                <c:choose>
                                                    <c:when test="${list[i].getMaTrangThai()==1}">
                                                        <td><span class="badge badge-success">Chưa Xác Nhận</span></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td><span class="badge badge-success">Đã Xác Nhận</span></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td>
                                                    <div class="sparkbar" data-color="#00a65a"
                                                         data-height="20">${list[i].getThoiGian()}</div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:if>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer clearfix">
                            <a
                                    href="http://localhost:8080/BookStore/admin/AllOrder"
                                    class="btn btn-sm btn-secondary float-right">Xem tất cả</a>
                        </div>
                        <!-- /.card-footer -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- <aside class="control-sidebar control-sidebar-dark"> -->
    <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<script src="${root}AdminF/plugins/jquery/jquery.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<script src="${root}AdminF/asset/dist/js/adminlte.js"></script>
</body>
</html>
