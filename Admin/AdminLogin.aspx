<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="janmatbharat.Admin.AdminLogin" %>
<!DOCTYPE html>
<html lang="hi">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login — जन-मत भारत</title>
    <link rel="stylesheet" href="../Content/Site.css" />
</head>
<body class="admin-login-body">
<form id="frmAdminLogin" runat="server">

    <!-- Soft light glows in background -->
    <div class="admin-bg-glow glow-top-right"></div>
    <div class="admin-bg-glow glow-bottom-left"></div>

    <div class="admin-login-container">
        <!-- Centered white card (420px, 16px radius, thin green line on top) -->
        <div class="admin-card">
            
            <h1 class="admin-brand-title">जन-मत भारत</h1>

            <!-- Round 60px image (Images/admin-avatar.png, grey circle if missing) -->
            <div class="admin-avatar-circle" role="img" aria-label="Admin Avatar">&#x1F464;</div>

            <!-- Small spaced uppercase text -->
            <div class="admin-portal-subtitle">JAN-MAT BHARAT ADMIN PORTAL</div>

            <!-- Email input with ✉ icon -->
            <div class="admin-input-group">
                <span class="admin-input-icon">&#x2709;</span>
                <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="admin-input-field" TextMode="Email" placeholder="Email" MaxLength="150" />
                <asp:RequiredFieldValidator ID="rfvAdminEmail" runat="server" ControlToValidate="txtAdminEmail" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Email is required" />
                <asp:RegularExpressionValidator ID="revAdminEmail" runat="server" ControlToValidate="txtAdminEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid email address" />
            </div>

            <!-- Password input with 🔒 icon and 👁 icon on the right -->
            <div class="admin-input-group">
                <span class="admin-input-icon">&#x1F512;</span>
                <asp:TextBox ID="txtAdminPassword" runat="server" CssClass="admin-input-field" TextMode="Password" placeholder="Password" MaxLength="50" />
                <span class="admin-eye-icon">&#x1F441;</span>
                <asp:RequiredFieldValidator ID="rfvAdminPassword" runat="server" ControlToValidate="txtAdminPassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Password is required" />
            </div>

            <!-- Remember me checkbox on the left only (NO Forgot Password) -->
            <div class="admin-remember-row">
                <label class="admin-remember-label">
                    <asp:CheckBox ID="chkRememberMe" runat="server" />
                    <span>Remember me</span>
                </label>
            </div>

            <!-- Full-width navy-to-indigo gradient button "Login to Admin" -->
            <asp:Button ID="btnAdminLogin" runat="server" CssClass="btn-admin-gradient" Text="Login to Admin" CausesValidation="true" OnClick="btnAdminLogin_Click" />

        </div>

        <!-- Below the card: ← Back to Main Site link to Login.aspx -->
        <div class="admin-back-wrap">
            <a href='<%=ResolveUrl("~/Login.aspx")%>' class="admin-back-link" id="lnkBackMain">&larr; Back to Main Site</a>
        </div>
    </div>

</form>
</body>
</html>
