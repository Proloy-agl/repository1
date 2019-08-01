<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CMDB2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CI_Name" HeaderText="CI_Name" SortExpression="CI_Name" />
            <asp:BoundField DataField="System_Env" HeaderText="System_Env" SortExpression="System_Env" />
            <asp:BoundField DataField="Primary_Cap" HeaderText="Primary_Cap" SortExpression="Primary_Cap" />
            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
            <asp:BoundField DataField="Supported_By" HeaderText="Supported_By" SortExpression="Supported_By" />
            <asp:BoundField DataField="System_Role" HeaderText="System_Role" SortExpression="System_Role" />
            <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
            <asp:BoundField DataField="OEM_Supported" HeaderText="OEM_Supported" SortExpression="OEM_Supported" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Infra_Att]"></asp:SqlDataSource>
    </div>

        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CR_Number" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="CR_Number" HeaderText="CR_Number" ReadOnly="True" SortExpression="CR_Number" />
                    <asp:BoundField DataField="CI_Name" HeaderText="CI_Name" SortExpression="CI_Name" />
                    <asp:BoundField DataField="System_Environment" HeaderText="System_Environment" SortExpression="System_Environment" />
                    <asp:BoundField DataField="Primary_Capability" HeaderText="Primary_Capability" SortExpression="Primary_Capability" />
                    <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                    <asp:BoundField DataField="Supported_By" HeaderText="Supported_By" SortExpression="Supported_By" />
                    <asp:BoundField DataField="System_Role" HeaderText="System_Role" SortExpression="System_Role" />
                    <asp:BoundField DataField="I_Site" HeaderText="I_Site" SortExpression="I_Site" />
                    <asp:BoundField DataField="OEM_Supported" HeaderText="OEM_Supported" SortExpression="OEM_Supported" />
                    <asp:BoundField DataField="Transaction_ID" HeaderText="Transaction_ID" SortExpression="Transaction_ID" />
                    <asp:BoundField DataField="Data_Id" HeaderText="Data_Id" SortExpression="Data_Id" />
                    <asp:BoundField DataField="Transaction_Timestamp" HeaderText="Transaction_Timestamp" SortExpression="Transaction_Timestamp" />
                    <asp:BoundField DataField="Transaction_Status" HeaderText="Transaction_Status" SortExpression="Transaction_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CMDB_DB_DEVConnectionString %>" SelectCommand="SELECT * FROM [Audit_Infrastructure_CI]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
