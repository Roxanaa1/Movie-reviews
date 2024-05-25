<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="DetaliiFilm.aspx.cs" Inherits="Proiect_MTP.DetaliiFilm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalii Film</title>
    <style>
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: white;
        }
        .film-container {
            max-width: 1100px;
            margin: 80px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
        }
        .film-details {
            display: flex;
            align-items: flex-start;
        }
        .film-details img {
            margin-right: 20px;
            max-width: 300px;
            border-radius: 10px;
        }
        .film-info {
            max-width: 600px;
        }
        .film-description {
            font-size: 18px;
            margin-top: 10px;
        }
        .actions {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
        }
        .actions button {
            background-color: #6495ED;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
            margin-bottom: 10px;
            flex: 1 1 calc(50% - 20px);
        }
        .actions button:hover {
            background-color: #4169E1;
        }
        h2 {
            margin-top: 0;
        }
        .review-section {
            margin-top: 20px;
        }
        .status-label {
            display: block;
            margin-top: 20px;
            font-size: 16px;
            color: #FFD700; /* Galben auriu */
        }
        .auto-style1 {
            display: block;
            margin-top: 20px;
            font-size: 16px;
            color: #FFD700;
            margin-left: 367px;
        }
        .auto-style2 {
            margin-left: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="film-container">
            <div class="film-details">
                <asp:Literal ID="FilmImage" runat="server" />
                <div class="film-info">
                    <h2>Title: <asp:Label ID="FilmTitle" runat="server" /></h2>
                    <p class="film-description">Description: <asp:Label ID="FilmDescription" runat="server" /></p>
                    <div class="actions">
                        <asp:Button ID="btnAddReview" runat="server" Text="Adaugă o recenzie" OnClick="AddReview_Click" />
                        <asp:Button ID="btnAddFavorite" runat="server" Text="Adaugă la favorite" OnClick="AddFavorite_Click" />
                        <asp:Button ID="btnEditReview" runat="server" Text="Editează recenzia" OnClick="EditReview_Click" />
                        <asp:Button ID="btnDeleteReview" runat="server" Text="Șterge recenzia" OnClick="DeleteReview_Click" />
                    </div>
                    <div class="review-section">
                        <asp:TextBox ID="txtRecenzie" runat="server" TextMode="MultiLine" Rows="4" Columns="50" Placeholder="Scrie recenzia aici..." Visible="false"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmitReview" runat="server" Text="Adaugă Recenzie" OnClick="SubmitReview_Click" Visible="false" CssClass="auto-style2" />
                    </div>
                </div>
            </div>
            <asp:DropDownList ID="ddlStars" runat="server" Visible="true" Height="45px" Width="114px">
                <asp:ListItem Text="1 Stea" Value="1"></asp:ListItem>
                <asp:ListItem Text="2 Stele" Value="2"></asp:ListItem>
                <asp:ListItem Text="3 Stele" Value="3"></asp:ListItem>
                <asp:ListItem Text="4 Stele" Value="4"></asp:ListItem>
                <asp:ListItem Text="5 Stele" Value="5"></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblStatus" runat="server" CssClass="auto-style1"></asp:Label>
            <asp:Repeater ID="rptRecenzii" runat="server">
                <ItemTemplate>
                    <div>
                        <strong>Recenzie:</strong> <%# Eval("Text") %> - <%# Eval("Data") %> (<%# Eval("Stars") %> Stele)
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
