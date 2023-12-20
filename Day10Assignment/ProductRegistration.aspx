<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Day10Assignment.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 578px;
        }
        .auto-style4 {
            width: 578px;
        }
        
        .auto-style5 {
            width: 578px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        
    </style>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2"><h2>Product Registration</h2></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageAlign="Middle" ImageUrl="~/Images/download (1).jpeg" Width="958px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Product Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtname" ErrorMessage="enter Product name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Category</td>
                    <td>
                        <asp:DropDownList ID="DropDownCategory" runat="server">
                            <asp:ListItem>Mobile</asp:ListItem>
                            <asp:ListItem>Headphones</asp:ListItem>
                            <asp:ListItem>Tv</asp:ListItem>
                            <asp:ListItem>SmartWatch</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownCategory" ErrorMessage="Choose Category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Price</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtPrice" ErrorMessage="enter amount in numbers" ForeColor="#3333FF" MaximumValue="10000000" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Description</td>
                    <td>
                        <textarea id="DescTextArea" cols="20" name="S1" rows="2" runat="server"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DescTextArea" ErrorMessage="Enter Discription" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Relese Date</td>
                    <td>
                        <asp:Calendar ID="RelDateCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
