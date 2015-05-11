<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="comp2007_lesson2_5_11_2015.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
            <asp:Literal ID="ltlFirstName" runat="server"></asp:Literal>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Click Me" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblX" runat="server" Visible="false"></asp:Label>
    </div>
    <div>
        <asp:DropDownList runat="server" ID="ddlCountry">
            <asp:ListItem Value="1" Text="Canada"></asp:ListItem>
            <asp:ListItem Value="2" Text="United States"></asp:ListItem>
            <asp:ListItem Value="3" Text="Brazil"></asp:ListItem>
        </asp:DropDownList>

        <asp:Literal ID="ltlToppings" runat="server"></asp:Literal>

        <asp:CheckBoxList runat="server" ID="cblToppings">
            <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
            <asp:ListItem Value="2" Text="Mushrooms"></asp:ListItem>
            <asp:ListItem Value="3" Text="Green Peppers"></asp:ListItem>
        </asp:CheckBoxList>

        <asp:Button runat="server" ID="btnSelections" Text="Show Selections" OnClick="btnSelections_Click" />
            
    </div>
    </form>
</body>
</html>
