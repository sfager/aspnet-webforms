<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FocusBehaviorTest.aspx.cs" Inherits="ScriptableUserControlsDemo.FocusBahaviorTest" %>
<%@ Register TagPrefix="demo" Namespace="ScriptableUserControlsDemo.ServerControls" Assembly="ScriptableUserControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET AJAX Behavior Sample</title>
    <style type="text/css">
    .LowLight
    {
        background-color:#EEEEEE;
    }

    .HighLight
    {
        background-color:#FFFFF0;
    }
    .LowLightButton
    {
        font-weight:normal;
        width:100px;
    }

    .HighLightButton
    {
        font-weight:bold;
        width:100px;
    }

    .green {
        background-color: green;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <table border="0" cellpadding="2">
              <tr>
                <td><asp:Label runat="server" ID="Label1" AssociatedControlID="TextBox1">Name</asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" /></td>
              </tr>
              <tr>
                <td><asp:Label runat="server" ID="Label2" AssociatedControlID="TextBox2">Phone</asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" /></td>
              </tr>
              <tr>
                <td><asp:Label runat="server" ID="Label3" AssociatedControlID="TextBox3">E-mail</asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" /></td>
              </tr>
            </table>

            <asp:Button runat="server" ID="Button1" Text="Submit Form" />
            
            <demo:FocusExtender ID="FocusExtender1" runat="server"
                                  NoHighlightCssClass="LowLight"
                                  HighlightCssClass="HighLight"
                                  TargetControlID="TextBox1" />
            <demo:FocusExtender ID="FocusExtender2" runat="server"
                                  NoHighlightCssClass="LowLight"
                                  HighlightCssClass="HighLight"
                                  TargetControlID="TextBox2" />
            <demo:FocusExtender ID="FocusExtender3" runat="server"
                                  NoHighlightCssClass="LowLight"
                                  HighlightCssClass="HighLight"
                                  TargetControlID="TextBox3" />
            <demo:FocusExtender ID="FocusExtender4" runat="server"
                                  NoHighlightCssClass="LowLightButton"
                                  HighlightCssClass="HighLightButton"
                                  TargetControlID="Button1" />
            
        </div>
    </form>
</body>
</html>

