<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Sign_in.aspx.cs" Inherits="Proiect_MTP.Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .button-style {
            background-color: #6495ED; /* albastru */
            color: white; /* Culoare text alb */
            border: none; /* fara bordura vizibila */
            padding: 10px 15px; /* Padding pentru dimensiuni */
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer; /* Schimba cursorul cand este deasupra butonului */
        }
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        /* Clasa pentru mărimea textului */
        .text-mare {
            font-size: 30px;
        }
        .error-message {
            color: red;
            font-size: 16px;
            display: none; /* inițial ascuns */
            margin-top: 5px; /* spațiu între input și mesaj */
        }
        .logo {
            position: absolute;
            top: 10px;
            left: 15px; /* modifica pozitia logo-ului la stanga sus */
            width: 130px; /* ajusteaza dimensiunile logo-ului dupa nevoie */
            height: auto; /* asigura mentinerea proporțiilor */
        }
        .auto-style4 {
            width: 91%;
            height: 545px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
            margin: auto;
            padding: 20px;
        }
        .auto-style5 {
            width: 356px;
        }
        .auto-style6 {
            width: 12px;
        }
        .auto-style7 {
            width: 45px;
        }
        .auto-style8 {
            height: 26px;
            width: 45px;
        }
        .auto-style9 {
            width: 12px;
            height: 66px;
        }
        .auto-style10 {
            width: 356px;
            height: 66px;
        }
        .auto-style11 {
            height: 66px;
        }
        .auto-style12 {
            width: 45px;
            height: 66px;
        }
    </style>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {
            var nameId = '<%= TextBoxName.ClientID %>';
            var emailId = '<%= TextBoxEmail.ClientID %>';
            var passwordId = '<%= TextBoxPassword.ClientID %>';

            window.validateForm = function () {
                var isValid = true;
                var name = document.getElementById(nameId);
                var email = document.getElementById(emailId);
                var password = document.getElementById(passwordId);

                document.getElementById('NameError').style.display = 'none';
                document.getElementById('EmailError').style.display = 'none';
                document.getElementById('PasswordError').style.display = 'none';

                if (name.value.trim() === '') {
                    document.getElementById('NameError').style.display = 'block';
                    isValid = false;
                }
                if (email.value.trim() === '') {
                    document.getElementById('EmailError').style.display = 'block';
                    isValid = false;
                }
                if (password.value.trim() === '') {
                    document.getElementById('PasswordError').style.display = 'block';
                    isValid = false;
                }

                return isValid;
            };
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <header>
             <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
             <br />
             <br />
             <br />
       </header>
        <table class="auto-style4">
            <tr>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label2" runat="server" Text="Create an account" CssClass="text-mare" ForeColor="Black"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Username" CssClass="text-mare" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style11">
                   <asp:TextBox ID="TextBoxName" runat="server" Height="48px" Width="270px"></asp:TextBox>
                     <span class="error-message" id="NameError">Name is required.</span>
   
                    </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelEmail" runat="server" Text="Your email address" CssClass="text-mare" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style40">
                      <asp:TextBox ID="TextBoxEmail" runat="server" Height="48px" Width="270px"></asp:TextBox>
                      <span class="error-message" id="EmailError">Email is required.</span>
   
                    </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelPassword" runat="server" Text="Create a password" CssClass="text-mare" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style44">
                     <asp:TextBox ID="TextBoxPassword" runat="server" Height="48px" Width="271px"></asp:TextBox>
                     <span class="error-message" id="PasswordError">Password is required.</span>
                </td>
                <td class="auto-style45"></td>
                <td class="auto-style45"></td>
                <td class="auto-style45"></td>
                <td class="auto-style45"></td>
                <td class="auto-style45"></td>
                <td class="auto-style45"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblMsg1" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="lblMsg2" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style5"></td>
                <td class="auto-style26">
                    <!-- Am mărit lățimea butonului -->
                   <asp:Button ID="ButtonCreate" runat="server" CssClass="button-style" Text="Create your account" Width="366px" OnClientClick="return validateForm();" Height="98px" BackColor="#CCCCCC" ForeColor="Black" OnClick="ButtonCreate_Click1" />

                    </td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    </form>
    
   
    

</body>
</html>

