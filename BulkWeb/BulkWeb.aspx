<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulkWeb.aspx.cs" Inherits="BulkWeb.BulkWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <div class="row" id="ads">
                <!-- Category Card -->
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="card rounded">
                                <div class="card-image">
                                    <img class="img-fluid" src='<%# Eval("Image") %>' alt="Missing Person" />
                                </div>
                                <div class="card-image-overlay m-auto">
                                    <span class="card-detail-badge">Gender: <%#Eval("Gender") %></span>
                                    <span class="card-detail-badge">Age: <%# Eval("Age") %></span>
                                    <span class="card-detail-badge">Contact: <%# Eval("ContactInfo") %></span>
                                </div>
                                <div class="card-body text-center">
                                    <div class="ad-title m-auto">
                                        <h5><%# Eval("Name") %></h5>
                                    </div>
                                    <div>
                                        <!-- Add any additional information here -->
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <asp:Button ID="SendSmsButton" runat="server" Text="Send SMS" CssClass="btn btn-success btn-block" OnClick="SendSmsButton_Click" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
