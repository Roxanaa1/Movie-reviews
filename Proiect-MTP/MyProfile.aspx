<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="MyProfile.aspx.cs" Inherits="Proiect_MTP.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <system.webServer>
         <directoryBrowse enabled="true" />
    </system.webServer>
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 222px;
        }
        textarea {
            width: 90%; 
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; 
            margin-top: 5px;
            margin-bottom: 20px;
        }
        .auto-style3 {
            width: 65%;
            height: 100px;
            margin-left: 5px;
        }
        .auto-style6 {
            width: 49px;
            height: 41px;
        }
        .auto-style7 {
            width: 553px;
            height: 41px;
        }
        .auto-style8 {
            width: 122px;
            height: 41px;
        }
        .auto-style9 {
            width: 122px;
            height: 100px;
        }
        .auto-style10 {
            width: 49px;
            height: 100px;
        }
        .auto-style12 {
            height: 100px;
        }
        .auto-style13 {
            width: 553px;
            height: 100px;
        }
        .auto-style14 {
            height: 41px;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style18 {
            width: 175px;
        }
        .auto-style23 {
            height: 59px;
        }
        .auto-style24 {
            height: 26px;
        }
        .auto-style25 {
            width: 100%;
            height: 213px;
        }
        .auto-style26 {
            height: 240px;
        }
        .auto-style27 {
            width: 100%;
            height: 447px;
        }
        .auto-style32 {
            width: 261px;
            height: 100px;
        }
        .auto-style33 {
            width: 261px;
            height: 41px;
        }
        .logo {
            position: absolute;
            top: 10px;
            left: 15px; /* modifica pozitia logo-ului la stanga sus */
            width: 130px; /* ajusteaza dimensiunile logo-ului dupa nevoie */
            height: auto; /* asigura mentinerea proportiilor */
        }
        .auto-style34 {
            margin-top: 0px;
        }
        .auto-style35 {
            height: 115px;
        }
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        .auto-style36 {
            width: 276px;
            height: 100px;
        }
        .auto-style37 {
            width: 276px;
            height: 41px;
        }
        .auto-style38 {
            width: 362px;
            height: 100px;
        }
        .auto-style39 {
            width: 362px;
            height: 41px;
        }
        .auto-style40 {
            height: 5px;
        }
        .favorite-item img {
            width: 100px;
            height: 150px;
            object-fit: cover;
            margin-right: 10px;
        }
        .favorite-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            var fileUpload = document.getElementById("<%= FileUpload1.ClientID %>");
        var image = document.getElementById("<%= Image2.ClientID %>");
            fileUpload.onchange = function () {
                if (typeof (FileReader) != "undefined") {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        image.src = e.target.result;
                    }
                    reader.readAsDataURL(fileUpload.files[0]);
                } else {
                    alert("This browser does not support FileReader.");
                }
            };
        };
    </script>

</head>
<body>
    <form runat="server">
         <header>
             <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
             <div style="text-align:center;">
                 <h1 style="font-size: 36px;">My profile</h1>
             </div>
         </header>

        <table class="auto-style1">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style32">
                     <asp:Image ID="Image2" runat="server" Height="152px" Width="172px" CssClass="img-thumbnail" data-toggle="modal" data-target="#imageModal" style="margin-left: 43px" />
                </td>
                <td class="auto-style36">
                    <div class="auto-style35">
                        <h5 class="modal-title" id="imageModalLabel">Opțiuni imagine</h5>
                          <asp:FileUpload ID="FileUpload1" runat="server" />
                          <asp:Button ID="ButtonAddPicture" runat="server" Text="Add a picture" OnClick="ButtonAddPicture_Click" BackColor="#996633" />

                        <br />
                        <asp:Button ID="ButtonDeletePicture" runat="server" Height="44px" Text="Delete the picture" Width="197px" OnClick="ButtonDeletePicture_Click" CssClass="auto-style34" BackColor="#996633" />
                        </div>
                </td>
                <td class="auto-style38">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;<br />
                    <asp:Button ID="Button1" runat="server" Height="46px" Text="Edit the profile" Width="209px" OnClick="Button1_Click1" BackColor="#996633" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style13">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style24">
                            </td>
                            <td class="auto-style24"></td>
                            <td class="auto-style24"></td>
                            <td class="auto-style24"></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"></td>
                            <td class="auto-style24"></td>
                            <td class="auto-style24"></td>
                            <td class="auto-style24"></td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style23"></td>
                            <td class="auto-style23"></td>
                            <td class="auto-style23"></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style6"></td>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="About you"></asp:Label>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style39">
                    <br />
                    <br />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style14"></td>
            </tr>
        </table>
        <table class="auto-style25">
            <tr>
                <td class="auto-style18">
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <textarea id="profileDescription" name="profileDescription" rows="1" cols="20" class="auto-style3" readonly></textarea><br />
                    <table class="auto-style16">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <br />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <br />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Favorite movies/series"></asp:Label>
                    <br />
                    <asp:Repeater ID="rptFavorites" runat="server">
                        <ItemTemplate>
                            <div class="favorite-item">
                                <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Title") %>' />
                                <div>
                                    <h5><%# Eval("Title") %></h5>
                                    <p><%# Eval("Description") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <table class="auto-style27">
                        <tr>
                            <td class="auto-style40">
                                <br />
                            </td>
                            <td class="auto-style40"></td>
                        </tr>
                        <tr>
                            <td class="auto-style26">
                                <br />
                                <br />
                                <table class="auto-style16">
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td
                                        ><td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td
                                        ></tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style26"></td>
                        </tr>
                    </table
                    >
                </td>
            </tr>
        </table>

         <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                </div>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
