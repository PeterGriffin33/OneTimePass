<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OneTimePass.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>One Time Usable Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <table>
                <tr>
                    <td>Utilizator:</td>
                    <td>
                        <asp:Label ID="txtNume" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Data generarii parolei:</td>
                    <td>
                        <asp:Label ID="txtDataGenerare" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Parola:</td>
                    <td>
                        <asp:Label ID="txtPass" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>Parola expira in:</td>
                    <td>
                        <asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="1" />

                        <asp:UpdatePanel ID="updPanTimeLeft" runat="server" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" />
                            </Triggers>
                            <ContentTemplate>
                                
                                <asp:Label ID="txtTimeLeft" runat="server"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
