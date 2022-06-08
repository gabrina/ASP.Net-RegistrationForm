<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadMultiplFiles.aspx.cs" Inherits="ASP.NetExample.UploadMultiplFiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Upload Multipe Files</h3>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
        </div>

        <%--File Upload Button--%>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Upload File" OnClick="UploadMultipleFiles"/>
            </p>
    </form>

    <%--Upload Multiple Files status--%>
    <p>
        <asp:Label ID="Status" runat="server"></asp:Label>
    </p>
   
</body>
</html>
