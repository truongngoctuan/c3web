﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuenMatKhau.ascx.cs" Inherits="CTLH_C3.Guest.QuenMatKhau" %>
<div id="QuenMatKhau" >
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
        onsendingmail="PasswordRecovery1_SendingMail">
    </asp:PasswordRecovery>
</div>
