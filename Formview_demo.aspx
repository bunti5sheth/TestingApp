<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Formview_demo.aspx.cs" Inherits="Formview_demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" AllowPaging="True" Width="213px" 
            onitemcommand="FormView1_ItemCommand" onitemdeleting="FormView1_ItemDeleting" 
            onitemupdating="FormView1_ItemUpdating" onmodechanging="FormView1_ModeChanging" 
            onpageindexchanging="FormView1_PageIndexChanging" 
            oniteminserting="FormView1_ItemInserting">
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
        <table>
        <tr>
        <td>
        Eid:
        </td>
        <td>
            <asp:Label ID="lbleid" runat="server" Text='<%# bind("eid") %>'></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        Ename:
        </td>
        <td>
            <asp:Label ID="lblename" runat="server" Text='<%#bind("ename") %>'></asp:Label>
        </td>
        </tr>

        <tr>
        <td>
        EGender:
        </td>
        <td>
            <asp:Label ID="lblegender" runat="server" Text='<%# bind("egender") %>'></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        Ebdate:
        </td>
        <td>
            <asp:Label ID="lblebdate" runat="server" Text='<%# bind("ebdate") %>'></asp:Label>
        </td>
        </tr>

        <tr>
        <td>
        Emno:
        </td>
        <td>
            <asp:Label ID="lblemno" runat="server" Text='<%# bind("emno") %>'></asp:Label>
        </td>
        </tr>

        <tr>
        <td>
        EAddress:
        </td>
        <td>
            <asp:Label ID="lbleaddress" runat="server" Text='<%# bind("eaddress") %>'></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        Ecity:
        </td>
        <td>
            <asp:Label ID="lblecity" runat="server" Text='<%# bind("ecity") %>'></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        Elang:
        </td>
        <td>
            <asp:Label ID="lbllang" runat="server" Text='<%# bind("elang") %>'></asp:Label>
        </td>
        </tr>
        <td>
        </td>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
            <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
            <asp:Button ID="btnnew" runat="server" Text="New" CommandName="New" />

             </td>
        </tr>
        </table>
        </ItemTemplate>
        <EditItemTemplate>
        <table>
        <tr>
        <td>
        Eid:
        </td>
        <td>
            <asp:Label ID="lbleid1" runat="server" Text='<%# bind("eid") %>'></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        Ename:
        </td>
        <td>
            <asp:TextBox ID="txtename" runat="server" Text='<%#bind("ename") %>'></asp:TextBox>
           
        </td>
        </tr>

        <tr>
        <td>
        EGender:
        </td>
        <td>
            <asp:TextBox ID="txtegender" runat="server" Text='<%# bind("egender") %>'></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Ebdate:
        </td>
        <td>
        <asp:TextBox ID="txtebdate" runat="server" Text='<%# bind("ebdate") %>'></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td>
        Emno:
        </td>
        <td>
            <asp:TextBox ID="txtemno" runat="server" Text='<%# bind("emno") %>'></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td>
        EAddress:
        </td>
        <td>
            <asp:TextBox ID="txteaddress" runat="server" Text='<%# bind("eaddress") %>'></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Ecity:
        </td>
        <td>
            <asp:TextBox ID="txtecity" runat="server" Text='<%# bind("ecity") %>'></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Elang:
        </td>
        <td>
            <asp:TextBox ID="txtelang" runat="server" Text='<%# bind("elang") %>'></asp:TextBox>
        </td>
        </tr>
        <td>
        </td>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />

             </td>
        </tr>
        </table>
        </EditItemTemplate>
        <InsertItemTemplate>
        
        <table>
        <tr>
        <td>
        Eid:
        </td>
        <td>
            <asp:TextBox ID="txteid1" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Ename:
        </td>
        <td>
            <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
           
        </td>
        </tr>

        <tr>
        <td>
        EGender:
        </td>
        <td>
            <asp:TextBox ID="txtegender" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Ebdate:
        </td>
        <td>
        <asp:TextBox ID="txtebdate" runat="server"> </asp:TextBox>
        </td>
        </tr>

        <tr>
        <td>
        Emno:
        </td>
        <td>
            <asp:TextBox ID="txtemno" runat="server"></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td>
        EAddress:
        </td>
        <td>
            <asp:TextBox ID="txteaddress" runat="server" ></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Ecity:
        </td>
        <td>
            <asp:TextBox ID="txtecity" runat="server" ></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td>
        Elang:
        </td>
        <td>
            <asp:TextBox ID="txtelang" runat="server"></asp:TextBox>
        </td>
        </tr>
        <td>
        </td>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btninsert" runat="server" Text="Insert" CommandName="Insert" />
            <asp:Button ID="btncancel1" runat="server" Text="Cancel" CommandName="Cancel" />

             </td>
        </tr>
        </table>
        </InsertItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
    </center>
    </div>
    </form>
</body>
</html>
