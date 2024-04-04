<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BulkWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                  <a href="#" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="index.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   

                    <li>
                        <a href="ui.html"><i class="fa fa-table "></i>UI Elements  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="blank.html"><i class="fa fa-edit "></i>Blank Page  <span class="badge">Included</span></a>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li>
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
               
                   
                
                   <h3>Add Missing Person</h3>
                 
            <table>

                    <tr>
                    <td>Name</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                     </tr>

                    <tr>
                        <td>Gender</td>
                        <td><asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>Age</td>
                        <td><asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
                    </tr>
                 
                    <tr>
                        <td>LastSeen</td>
                        <td><asp:TextBox ID="txtLastSeen" runat="server"></asp:TextBox></td>
                    </tr>
                    
                     
                    


                    <tr>
                        <td>Last Known Location</td>
                        <td><asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></td>
                    </tr>
 
                    <tr>
                        <td>Contact Info</td>
                        <td><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
                    </tr>   
                     <tr>
                        <td>Last seen Wearing</td>
                        <td><asp:TextBox ID="txtWearing" runat="server"></asp:TextBox></td>
                    </tr>                  
                   

                        <tr>
                        <td>Image</td>
                        <td><asp:FileUpload ID="Image" runat="server" /></td>
                    </tr>

                <tr>
                    <td colspan="2" align="center" >
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click"  />
                    </td>
                    <td>
                                    <asp:Button ID="SendSmsButton" BackColor="YellowGreen" runat="server" Text="Send SMS" OnClick="SendSmsButton_Click" />

                    </td>
                </tr>

            </table>
                 
                
                  
                
                     
                     
                 
                     
                     
                 
            
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
         
        </div>
          

    




    </form>
</body>
</html>
