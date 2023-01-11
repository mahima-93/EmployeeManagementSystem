<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeInfo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Management System</title>
    <style type="text/css">
        body{
            background-image:url('images/aerial-view-business-team.jpg');
            text-align:center;
            background-size: cover;
            color:white;
        }
        .auto-style20 {
            height: 39px;
        }
        .auto-style22 {
            width: 132px;
            height: 39px;
        }
        .auto-style23 {
            height: 39px;
        }
        .auto-style25 {
            width: 132px;
            height: 39px;
        }
        .auto-style26 {
            height: 39px;
        }
        .auto-style28 {
            width: 132px;
            height: 39px;
        }
        .auto-style29 {
            height: 39px;
        }
        .auto-style30 {
            width: 132px;
            height: 39px;
        }
        .auto-style31 {
            height: 39px;
        }
        .auto-style32 {
            width: 132px;
            height: 39px;
        }
        .auto-style33 {
            height: 39px;
        }
        .auto-style34 {
            width: 132px;
            height: 39px;
        }
        .auto-style35 {
            height: 39px;
        }
        .auto-style36 {
            width: 132px;
            height: 39px;
        }
        .container{
            border-block:double;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Employee Management System</h1>
            <table class="container">
                <tr>
                    <td class="auto-style23">FirstName</td>
                    <td class="auto-style22"><asp:TextBox ID ="FirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style26">LastName</td>
                    <td class="auto-style25"><asp:TextBox ID ="LastName" runat="server" OnTextChanged="LastName_TextChanged"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style20">Department</td>
               
                    <td class="auto-style28"><asp:DropDownList ID="Department" runat="server"> 
                                <asp:ListItem Value="01">Select</asp:ListItem>
                                <asp:ListItem Value="01">IT</asp:ListItem>
                                <asp:ListItem Value="02">Finance</asp:ListItem> 
                                <asp:ListItem Value="03">Software</asp:ListItem> 
                                <asp:ListItem Value="04">Testing</asp:ListItem> 
                                <asp:ListItem Value="05">HR</asp:ListItem> 
                                <asp:ListItem Value="06">Data Management</asp:ListItem> 
                    </asp:DropDownList></td>
                </tr>




                <tr>
                    <td class="auto-style29">Designation</td>
                    <td class="auto-style30"><asp:TextBox ID ="Designation" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style20">Salary</td>
                    <td class="auto-style28"><asp:TextBox ID ="Salary" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style31">Address</td>
                    <td class="auto-style32"><asp:TextBox ID ="Address" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style33">EmailId</td>
                    <td class="auto-style34"><asp:TextBox ID ="EmailId" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style35">ContactNumber</td>
                    <td class="auto-style36"><asp:TextBox ID ="ContactNumber" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style35">JoiningDate</td>
                    <td class="auto-style36"><asp:TextBox ID ="JoiningDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style35">Update/Delete ID </td>
                    <td class="auto-style36"><asp:TextBox ID ="Update_Id" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="auto-style20">
                        <asp:Button ID="button1" runat="server" Text="Insert" OnClick="button1_Click" ></asp:Button>
                        <asp:Button  ID="button2" runat="server" Text="Delete" OnClick="button2_Click"></asp:Button>
                        <asp:Button  ID="button3" runat="server" Text="Update" OnClick="button3_Click"></asp:Button>
                        <asp:Button  ID="button4" runat="server" Text="View" OnClick="button4_Click1"></asp:Button>
                        <asp:Button  ID="button5" runat="server" Text="Erase" OnClick="button5_Click1"></asp:Button>
                    </td>
                </tr>
            </table>
            <br/>
            <br/>
            <asp:GridView ID="Gridview1" runat="server" Width="369px" backColor="#000000"></asp:GridView>
        </center>
        </div>
    </form>
</body>
</html>
