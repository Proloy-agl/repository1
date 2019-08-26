<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rough.aspx.cs" Inherits="CMDB2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="AutoList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Support_Group_Name" DataValueField="Support_Group_Name"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARSystem1ConnectionString %>" SelectCommand="SELECT [Support_Group_Name] FROM [CTM_Support_Group]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
