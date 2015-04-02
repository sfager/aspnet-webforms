<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScriptableUserControlsDemo.Default" %>

<%@ Register src="UserControls/ScriptableUserControl.ascx" tagname="ScriptableUserControl" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <uc1:ScriptableUserControl ID="ScriptableUserControl1" runat="server" />
    </div>
    </form>
</body>
</html>
