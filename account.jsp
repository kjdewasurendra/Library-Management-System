

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");

    HttpSession session2 = request.getSession(false);
    String type = (String) session2.getAttribute("type");

    HttpSession session3 = request.getSession(false);
    String admin = (String) session3.getAttribute("name");

    HttpSession session1 = request.getSession(false);
    String name = (String) session1.getAttribute("id");
    if (session1.getAttribute("id") != null && "user".equals(type)) {

    } else {

        response.sendRedirect("./Auth/login.jsp");
    }


%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="shortcut icon" href="img/fav.png">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Library</title>

        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,500" rel="stylesheet">
        <!--
                        CSS
                        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Password</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form action="./updatePw" method="POST">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Old Password</label>
                                <input type="password" class="form-control"  minlength="6" id="exampleInputEmail1" aria-describedby="emailHelp" name="op" placeholder="Enter Current Password">
                                <input type="hidden" name="user" value="<%=name%>">
                                <small id="emailHelp"   class="form-text text-muted">Enter Your Old Password.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">New Password</label>
                                <input type="password" minlength="6"  class="form-control" id="exampleInputPassword1"  name="np" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword2">Confirm Password</label>
                                <input type="password"  minlength="6"  class="form-control" id="exampleInputPassword2" name="cp" placeholder="Confirm Password">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-danger">Update Password</button>

                            </div>
                        </form>    
                    </div> 
                </div>
            </div>
        </div>
        <!-- Start Header Area -->
        <header class="default-header">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="index.jsp">
                        <h2 style="color: white;">LIBRARY</h2>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="fa fa-bars"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li><a  href="index.jsp">Home</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                    Library
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="books.jsp">Books</a>
                                    <a class="dropdown-item" href="passpapers.jsp">Pass Papers</a>
                                    <a class="dropdown-item" href="magazines.jsp">Magazines</a>
                                    <a class="dropdown-item" href="otherpapers.jsp">Other Papers</a>
                                </div>
                            </li>
                            <li><a href="contact.jsp">Contact</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle active" href="#" id="navbardrop" data-toggle="dropdown">
                                    My Account
                                </a>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item" data-toggle="modal" data-target="#exampleModal">Update   Password</a>
                                    <a class="dropdown-item" href="./LogOut">Log Out</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End Header Area -->

        <!-- Start Banner Area -->
        <section class="banner-area relative">
            <div class="overlay overlay-bg"></div>
            <div class="container">
                <div class="row justify-content-between align-items-center text-center banner-content">
                    <div class="col-lg-12">
                        <h1 class="text-white">Member Account</h1>

                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->

        <!-- Start top-category-widget Area -->
        <section class="top-category-widget-area section-gap">
            <center>	<h2 class="modal-title">Current Book/s</h2></center>
            <div class="col-10 offset-1">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Book Title</th>
                            <th scope="col">Book Publisher</th>
                            <th scope="col">Get On</th>
                            <th scope="col">Last Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
                                statement = connection.createStatement();
                                String sql = "select * from bookissue where memberId = '" + session1.getAttribute("id") + "'  ";

                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %> 
                        <tr>
                            <th scope="row"><%=resultSet.getString(2)%></th>
                            <td><%=resultSet.getString(3)%></td>
                            <td><%=resultSet.getString(6)%></td>
                            <td><%=resultSet.getString(7)%></td>
                        </tr>
                        <%
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- End top-category-widget Area -->


        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/parallax.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>


