<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailsview_demo.aspx.cs" Inherits="Detailsview_demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="280px" 
            AutoGenerateRows="False" AllowPaging="True" CellPadding="4" 
            ForeColor="#333333" GridLines="None" onitemdeleting="DetailsView1_ItemDeleting" 
            onitemupdating="DetailsView1_ItemUpdating" 
            onmodechanging="DetailsView1_ModeChanging" 
            onpageindexchanging="DetailsView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:TemplateField HeaderText="Eid:">
                <EditItemTemplate>
                        <asp:Label ID="lbleid1" runat="server" Text='<%# bind("eid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbleid" runat="server" Text='<%# bind("eid") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ename:">
                <EditItemTemplate>
                        <asp:TextBox ID="txtename" runat="server" Text='<%# bind("ename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblename" runat="server" Text='<%# bind("ename") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Egender:">
                <EditItemTemplate>
                        <asp:TextBox ID="txtegender" runat="server" Text='<%# bind("egender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblegender" runat="server" Text='<%# bind("egender") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ebdate:">
                <EditItemTemplate>
                        <asp:TextBox ID="txtebdate" runat="server" Text='<%# bind("ebdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblebdate" runat="server" Text='<%# bind("ebdate") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMno:">
                <EditItemTemplate>
                        <asp:TextBox ID="txtemno" runat="server" Text='<%# bind("emno") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblemno" runat="server" Text='<%# bind("emno") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Eaddress:">
                <EditItemTemplate>
                        <asp:TextBox ID="txteaddress" runat="server" Text='<%# bind("eaddress") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbleaddress" runat="server" Text='<%# bind("eaddress") %>'></asp:Label>
                    </ItemTemplate>
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ecity:">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtecity" runat="server" Text='<%# bind("ecity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblecity" runat="server" Text='<%# bind("ecity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ELanguage:">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtelang" runat="server" Text='<%# bind("elang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblelang" runat="server" Text='<%# bind("elang") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </center>
    </div>
    </form>
</body>
</html>
