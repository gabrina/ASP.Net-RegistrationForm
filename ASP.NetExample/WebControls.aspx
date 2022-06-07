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
            <asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox>
            <%--"ToolTip" indicate what to show when user hover over it--%>
            <p>
                <asp:RadioButton ID="RadioButton1"
                    GroupName="gender"
                    Text="Male"
                    runat="server" />
                <asp:RadioButton ID="RadioButton2"
                    GroupName="gender"
                    Text="Female"
                    runat="server" />
            </p>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Enter Your Birthday:"></asp:Label>
            <br />
            <asp:Calendar ID="Calendar1" runat="server" SelectedDate="1998-09-23"></asp:Calendar>
        </div>
        
        <p>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <%--"OnClick" indicate the method to execute when button is clicked--%>
        </p>
        <br />
        
    </form>
    <div>
        <asp:Label ID="UserInput" runat="server"></asp:Label>
        <%-- showing userName, entered in the text box--%>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>


    <p>
        <asp:Label ID="ShowDate" runat="server"></asp:Label>
    </p>
</body>
</html>
