<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebControls.aspx.cs" Inherits="ASP.NetExample.WebControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2 style="color:darkred">Registration Form</h2>
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
            <asp:Calendar ID="Calendar1" runat="server" SelectedDate="1998-09-23" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </div>
        <div>
            <h2>select courses:
            </h2>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="AP" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="DS" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="OS" />
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

    <%--  <p>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
    </p>--%>


    <p>
        <asp:Label ID="ShowDate" runat="server"></asp:Label>
    </p>

    <p>
        <asp:Label ID="ShowCourses" runat="server"></asp:Label>
    </p>
</body>
</html>
