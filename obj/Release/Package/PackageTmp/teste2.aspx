<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="teste2.aspx.vb" Inherits="PortalCT.teste2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="table-responsive">
                <asp:GridView ID="grdcompras" CssClass=" table table-striped table-bordered table-hover" runat="server" Style="max-width: 100%" AllowPaging="True" Font-Size="10pt" AutoGenerateColumns="False"">
                </asp:GridView>

            </div>
    </form>
</body>
</html>
