<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="EditProfile.aspx.cs" Inherits="Proiect_MTP.EditProfile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 595px;
            margin-bottom: 238px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style12 {
            width: 524px;
        }
        .auto-style17 {
            width: 262px;
            height: 70px;
        }
        .auto-style18 {
            width: 524px;
            height: 70px;
        }
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        .logo {
            position: absolute;
            top: 10px;
            left: 15px; /* modifica pozitia logo-ului la stanga sus */
            width: 130px; /* ajusteaza dimensiunile logo-ului dupa nevoie */
            height: auto; /* asigura mentinerea proporțiilor */
        }
        .auto-style22 {
            width: 262px;
            height: 51px;
        }
        .auto-style23 {
            width: 524px;
            height: 51px;
        }
        .auto-style28 {
            width: 87px;
            height: 51px;
        }
        .auto-style29 {
            width: 87px;
            height: 70px;
        }
        .text-mare {
            font-size: 30px;
        }
        .auto-style38 {
            width: 250px;
        }
        .auto-style39 {
            width: 100%;
            height: 179px;
        }
        .auto-style40 {
            width: 326px;
        }
        .auto-style42 {
            width: 25px;
            height: 51px;
        }
        .auto-style43 {
            width: 25px;
            height: 70px;
        }
        .auto-style49 {
            width: 326px;
            height: 103px;
        }
        .auto-style50 {
            height: 103px;
        }
        .auto-style56 {
            width: 87px;
            height: 68px;
        }
        .auto-style57 {
            width: 25px;
            height: 68px;
        }
        .auto-style59 {
            width: 262px;
            height: 68px;
        }
        .auto-style60 {
            width: 524px;
            height: 68px;
        }
        .auto-style61 {
            width: 87px;
            height: 152px;
        }
        .auto-style62 {
            width: 25px;
            height: 152px;
        }
        .auto-style64 {
            width: 262px;
            height: 152px;
        }
        .auto-style65 {
            width: 524px;
            height: 152px;
        }
        .auto-style66 {
            width: 87px;
            height: 20px;
        }
        .auto-style67 {
            width: 25px;
            height: 20px;
        }
        .auto-style69 {
            width: 262px;
            height: 20px;
        }
        .auto-style70 {
            width: 524px;
            height: 20px;
        }
        .auto-style77 {
            width: 123px;
        }
        .auto-style91 {
            width: 25px;
        }
        .auto-style92 {
            width: 87px;
        }
        .auto-style100 {
            width: 71px;
            height: 70px;
        }
        .auto-style101 {
            width: 71px;
            height: 51px;
        }
        .auto-style102 {
            width: 71px;
            height: 68px;
        }
        .auto-style103 {
            width: 71px;
            height: 20px;
        }
        .auto-style104 {
            width: 71px;
            height: 152px;
        }
        .auto-style105 {
            width: 71px;
        }
        .auto-style106 {
            width: 262px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <header>
             <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
         </header>
        <div style="text-align:center;">
            <h1 style="font-size: 36px;">Edit profile</h1>
        </div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style77">
                    &nbsp;</td>
                <td class="auto-style38">
                     <asp:Image ID="Image2" runat="server" Height="177px" Width="178px" CssClass="img-thumbnail" data-toggle="modal" data-target="#imageModal" style="margin-left: 43px" />
                    <br />
                    <br />
                </td>
                <td>
                    <table class="auto-style39">
                        <tr>
                            <td class="auto-style49">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Biografie:</td>
                            <td class="auto-style50"><asp:TextBox ID="txtBiography" runat="server" Height="85px" Width="302px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gen:</td>
                            <td><asp:DropDownList ID="ddlGender" runat="server" Height="41px" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" Width="216px">
                        <asp:ListItem Text="Masculin" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Feminin" Value="F"></asp:ListItem>
                        <asp:ListItem Text="Altul" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style100"></td>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Height="35px" Width="214px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style42"></td>
                <td class="auto-style101">&nbsp;</td>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nou E-mail:</td>
                <td class="auto-style23"><asp:TextBox ID="txtNewEmail" runat="server" Height="35px" Width="214px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style43"></td>
                <td class="auto-style100">&nbsp;</td>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Noua Parolă:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" Height="35px" Width="214px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57"></td>
                <td class="auto-style102"></td>
                <td class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Noul Numar :</td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtNewPassword0" runat="server" TextMode="Password" Height="35px" Width="214px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style66"></td>
                <td class="auto-style67"></td>
                <td class="auto-style103"></td>
                <td class="auto-style69"></td>
                <td class="auto-style70"></td>
            </tr>
            <tr>
                <td class="auto-style61"></td>
                <td class="auto-style62"></td>
                <td class="auto-style104"></td>
                <td class="auto-style64">&nbsp;</td>
                <td class="auto-style65"><asp:Button ID="btnSave" runat="server" Text="Salvează" OnClick="btnSave_Click" BackColor="#996633" Height="70px" Width="247px" /></td>
            </tr>
            <tr>
                <td class="auto-style92">&nbsp;</td>
                <td class="auto-style91">&nbsp;</td>
                <td class="auto-style105">&nbsp;</td>
                <td class="auto-style106">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

