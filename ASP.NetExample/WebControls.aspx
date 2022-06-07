<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" Inherits="ASP.NetExample.WebControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Labeled" runat="server">User Name</asp:Label>
            <asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox> <%--"ToolTip" indicate what to show when user hover over it--%>
        </div>
        <p>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /> <%--"OnClick" indicate the method to execute when button is clicked--%>
        </p>
        <br />
    </form>
    <asp:Label ID="UserInput" runat="server"></asp:Label>   <%-- showing userName, entered in the text box--%>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</body>
</html>
