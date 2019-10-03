<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="CMDB2.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />


        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="222222222222" OnClick="Button3_Click" />


        <asp:gridview ID="Gridview1" runat="server" ShowFooter="true"

            AutoGenerateColumns="false" onrowcreated="Gridview1_RowCreated">

            <Columns>

            <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />

            <asp:TemplateField HeaderText="Header 1">

                <ItemTemplate>

                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                </ItemTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Header 2">

                <ItemTemplate>

                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                </ItemTemplate>

            </asp:TemplateField>

            <asp:TemplateField HeaderText="Header 3">

                <ItemTemplate>

                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                </ItemTemplate>

                <FooterStyle HorizontalAlign="Right" />

                <FooterTemplate>

                 <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row"

                        onclick="ButtonAdd_Click" />

                </FooterTemplate>

            </asp:TemplateField>

                 <asp:TemplateField>

                <ItemTemplate>

                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Remove</asp:LinkButton>

                </ItemTemplate>

            </asp:TemplateField>

            </Columns>

        </asp:gridview>


        <br />

        
       
         </div>
    </form>
</body>
</html>
