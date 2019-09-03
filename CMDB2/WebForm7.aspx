<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="CMDB2.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DDGroup" runat="server" DataSourceID="RemedyGroup" DataTextField="Support_Group_Name" DataValueField="Support_Group_Name"></asp:DropDownList>
        <asp:SqlDataSource ID="RemedyGroup" runat="server" ConnectionString="<%$ ConnectionStrings:ARSystem1ConnectionString %>" SelectCommand="SELECT [Support_Group_Name] FROM [CTM_Support_Group]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
