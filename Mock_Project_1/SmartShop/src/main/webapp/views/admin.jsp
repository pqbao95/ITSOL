<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SmartShop : Admin Page</title>
   
    <link href="../css/bootstrap.css" rel="stylesheet" />
   
    <link href="../css/font-awesome1.css" rel="stylesheet" />
   
    <link href="../css/custom.css" rel="stylesheet" />
  
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><i class="fa fa-square-o "></i>&nbsp;ADMIN PAGE</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Logout</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">
                        <img src="../images/icon/find_user.png" class="img-responsive" />
                     
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-table "></i>THÔNG TIN TÀI KHOẢN</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>DANH SÁCH THÀNH VIÊN<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Customer</a>
                            </li>
                            <li>
                                <a href="#">Sale</a>
                            </li>
                            <li>
                                <a href="#">Marketing</a>
                            </li>
                        </ul>
                    </li>
					<li>
                        <a href="#"><i class="fa fa-edit "></i>DANH SÁCH SẢN PHẦM<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Ô tô</a>
                            </li>
                            <li>
                                <a href="#">Điện Thoại</a>
                            </li>
                            <li>
                                <a href="#">Máy Tính</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-table "></i>DANH SÁCH ĐƠN HÀNG</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>TIN TỨC </a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin</h2>
                    </div>
                </div>
                
                
                <hr />
                <div class="row">
                    <div class="col-md-6">
                        <h5>Table  Information</h5>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    
                </div> 
                </div>
               
                <hr/>
             
            </div>
          
        </div>
       
    </div>
    
    <script src="../js/jquery-1.10.2.js"></script>
    
    <script src="../js/bootstrap.min1.js"></script>
  
    <script src="../js/jquery.metisMenu.js"></script>
    
    <script src="../js/custom.js"></script>

</body>
</html>
