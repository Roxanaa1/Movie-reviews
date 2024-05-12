<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Login.aspx.cs" Inherits="Proiect_MTP.Autentificare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .button-style {
            background-color: #6495ED;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: larger; /* Mărimea textului mai mare pentru butonul de autentificare */
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
        .error {
            border-color: red;
        }
        .error-message {
            color: red;
            font-size: 16px;
            display: none; /* Inițial mesajele sunt ascunse */
            margin-top: 5px; /* Adaugă spațiu între input și mesajul de eroare */
        }

        
        .text-mare {
            font-size: 30px;
        }
        .auto-style1 {
            border-radius: 8px;
            padding: 20px;
            margin: auto;
            width: 62%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: background-color 0.3s;
            height: 545px;
        }
        .auto-style3 {
            width: 358px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            width: 358px;
            height: 48px;
        }
    </style>
</head>
<body style="height: 347px">
    <form id="form1" runat="server">
         <header>
             <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
         </header>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style37"></td>
                <td>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:Label ID="LabelAut" runat="server" Text="Authentication" CssClass="text-mare" ForeColor="Black" Height="75px" Width="217px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style37">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="LabelUser" runat="server" Text="Username" CssClass="text-mare" ForeColor="Black"></asp:Label>
                    </td>
                <td class="auto-style33">
                     <asp:TextBox ID="TextBoxUsername" runat="server" Height="44px" Width="250px"></asp:TextBox>
                      <span class="error-message" id="UsernameError">The Username field is required.</span>
        <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style37">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="LabelPassword" runat="server" Text="Password" CssClass="text-mare" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style33">
                     <asp:TextBox ID="TextBoxPassword" runat="server" Height="45px" Width="249px"></asp:TextBox>
                     <span class="error-message" id="PasswordError">The Password field is required.</span>
        
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style37">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style33">
                  <asp:Button ID="ButtonAutentification" runat="server" Text="Authentication" Width="255px" CssClass="button-style" OnClientClick="return validateForm();" Height="80px" BackColor="#CCCCCC" ForeColor="Black" />

                    </td>
                
            
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4">
                    </td>
                <td class="auto-style4">
                    </td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="You don't have an account?" CssClass="text-mare" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSignIn" runat="server" Height="79px" CssClass="button-style" OnClick="ButtonSignIn_Click" Text="Create an account" Width="255px" BackColor="#CCCCCC" ForeColor="Black" />
                </td>
        </table>
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        function validateForm() {
            var isValid = true;
            $('#TextBoxUsername, #TextBoxPassword').removeClass('error');
            $('#UsernameError, #PasswordError').hide();

            if ($('#TextBoxUsername').val().trim() === '') {
                $('#TextBoxUsername').addClass('error');

                $('#UsernameError').show();
                isValid = false;
            }
            if ($('#TextBoxPassword').val().trim() === '') {
                $('#TextBoxPassword').addClass('error');
                $('#PasswordError').show();
                isValid = false;
            }

            return isValid; // return the status of the validation
        }
    </script>

</body>
</html>
