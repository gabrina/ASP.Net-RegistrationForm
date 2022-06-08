<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinkButton.aspx.cs" Inherits="ASP.NetExample.LinkButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>This is a hyperlink style button</p>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnLoad="LinkButton1_Click" >Javapoint</asp:LinkButton>
        <br>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebControls.aspx">Registeration Form</asp:HyperLink>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
    </form>
</body>
</html>