<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Search.aspx.cs" Inherits="Proiect_MTP.Search" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caută un film</title>
    <style>
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }
    </style>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center mb-4">Caută un Film</h2>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Introdu numele filmului" AutoPostBack="true" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnSearch" runat="server" Text="Caută" CssClass="btn btn-primary btn-block" OnClick="btnSearch_Click" />
                </div>
            </div>
            <hr />
            <div id="searchResults" class="mt-4">
                <asp:Repeater ID="rptResults" runat="server">
                    <ItemTemplate>
                        <div class="card mb-3">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <a href="DetaliiFilm.aspx?id=<%# Eval("Id") %>">
                                        <img src='<%# Eval("ImageUrl") %>' class="card-img" alt="Film Image">
                                    </a>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("Title") %></h5>
                                        <p class="card-text"><%# Eval("Description") %></p>
                                        <a href="DetaliiFilm.aspx?id=<%# Eval("Id") %>" class="btn btn-primary">Vezi Detalii</a>
                                    </div>
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
