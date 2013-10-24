<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegExDemo.aspx.cs" Inherits="RegExDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
        <asp:Button ID="btnValidateName" runat="server" Text="Validate Name"/>
            <asp:RegularExpressionValidator ID="regexpName" runat="server"  ErrorMessage="This expression does not validate." ControlToValidate="txtboxName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" />
    </div>
    <div>
    <asp:TextBox ID="txtboxEmail" runat="server"></asp:TextBox>
        <asp:Button ID="btnValidateEmail" runat="server" Text="Validate Email"/>
            <asp:RegularExpressionValidator ID="regexpEmail" runat="server"  ErrorMessage="This expression does not validate." ControlToValidate="txtboxEmail" ValidationExpression="\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b" />
    </div>
    </form>
</body>
</html>
