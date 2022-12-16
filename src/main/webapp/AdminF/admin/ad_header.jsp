<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="${root}" class="nav-link">Shop</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="${root}admin" class="nav-link">Admin</a>
        </li>

    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
       
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
        <form action="logoutad" method="POST">
            <li class="js-logout-btn logout-admin">
                <button type="submit">
                    Đăng xuất
                </button>
            </li>
        </form>
    </ul>
</nav>
