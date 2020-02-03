<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="HoungBNB.ModalDetail.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID ="textboxx" TextMode="MultiLine" ></asp:TextBox>
        <asp:Button runat="server" Text="check" OnClick="Unnamed2_Click" />

        <br />
        <asp:ListView runat="server" ID="lv" >
            <ItemTemplate>
                    <%# Eval("msg") %>
            </ItemTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
