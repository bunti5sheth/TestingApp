<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function validate() {






            var msg = "";


            if (document.getElementById("txtid").value == "") {
                msg+="Please enter the name";
                document.getElementById("txtid").focus();
                
            }  

            if (document.getElementById("txtid").value == "") {
                alert( "enter the id");
            }
            else {
                var exp = /[-0-9]+/;
            if(exp.test(document.getElementById("txtid").value)==false) {
                msg += "enter only interger value";
            }
        }
        if (document.getElementById("txtname").value == "") {
            msg += "enter the name";
            document.getElementById("txtname").focus();
        }
        else {
            var exp = /^[a-zA-Z]/;
            if (exp.test(document.getElementById("txtname").value) == false) {
                msg += "enter proper name";
            }
        }

        


        if (document.getElementById("txtbdate").value == "") {
            msg += "enter the Birthdate\n";
        }

        if (document.getElementById("txtmno").value == "") {
            msg += "Enter Mobile no\n";
        }
        else {
            var exp = /^[-0-9]{10}$/;
            if (exp.test(document.getElementById("txtmno").value) == false) {
                msg += "Invalid Mobile no\n";
            }
        }

            if (document.getElementById("txtaddress").value == "") {
            msg += "Enter your address\n";
        }
        


        if (msg == "") {
            alert("successful");
            return true; 
            
        }
        else {
            alert(msg);
            return false;
            
        }
        }


    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 322px;
        }
        .style4
        {
        }
        .Cal_Container
        {
            background-color:red;
            border:2px solid Aqua;
        }
        .Cal_Header
        {
            background-color:Blue;
            margin-bottom:4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
        
            <tr>
                <td class="style3">
                    Id</td>
                <td class="style2">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtid" Display="Dynamic" ErrorMessage="enter value" 
                        ValidationGroup="a"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Gender</td>
                <td>
                    <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Bdate</td>

                <td>
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="Cal_Container" Enabled="true"
                    TargetControlID="txtbdate">
                    </cc1:CalendarExtender>
                    
                    
                    
                   
                </td>
            </tr>
            <tr>
                <td class="style4">
                    M.Number</td>
                <td>
                    <asp:TextBox ID="txtmno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Address</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    city</td>
                <td>
                    <asp:DropDownList ID="ddlcity" runat="server">
                        <asp:ListItem>Baroda</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Dahod</asp:ListItem>
                        <asp:ListItem>Anand</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Language known</td>
                <td>
                    <asp:CheckBoxList ID="cbllang" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Gujrati</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
           
            <tr>
                <td align="center" class="style4" colspan="2">
                    <asp:Button ID="btnins" runat="server" Text="Insert" onclick="btnins_Click" ValidationGroup="a" OnClientClick="return validate()" 
                         />
                    <asp:Button ID="btnins0" runat="server" Text="GridView" 
                        onclick="btnins0_Click" />
                    <asp:Button ID="btnins1" runat="server" Text="FormView" />
                    <asp:Button ID="btnins2" runat="server" Text="DetailsView" />
                    <asp:Button ID="btnins3" runat="server" Text="DataList" />
                    
                </td>
            </tr>
            
        </table>
        

    </div>
    </form>
</body>
</html>
