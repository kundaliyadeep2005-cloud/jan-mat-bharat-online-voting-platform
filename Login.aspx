<%@ Page Title="Login" Language="C#" MasterPageFile="~/Auth.Master"
    AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="janmatbharat.Login" %>

<%-- ── TOPBAR RIGHT: "Don't have an account? Register →" ── --%>
<asp:Content ID="topBarLink" ContentPlaceHolderID="TopBarLink" runat="server">
    <span class="auth-topbar-text">Don't have an account?</span>
    <a href="Register.aspx" id="lnkTopRegister" class="auth-toplink">Register &rarr;</a>
</asp:Content>

<%-- ── MAIN CONTENT: Login Screen ── --%>
<asp:Content ID="mainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="login-page-wrap">
        <!-- Pure CSS giant faint Ashoka Chakra watermark behind the card on the left -->
        <div class="login-bg-chakra" aria-hidden="true"></div>

        <!-- Login Card -->
        <div class="auth-card" id="loginCard">

            <!-- Logo block -->
            <h1 class="auth-brand-green">जन-मत भारत</h1>
            <div class="auth-chakra-wrap">
                <svg class="auth-chakra-icon" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="46" stroke="#0a2266" stroke-width="4"/>
                    <circle cx="50" cy="50" r="8" fill="#0a2266"/>
                    <g stroke="#0a2266" stroke-width="2">
                        <line x1="50" y1="4" x2="50" y2="96"/>
                        <line x1="4" y1="50" x2="96" y2="50"/>
                        <line x1="17.48" y1="17.48" x2="82.52" y2="82.52"/>
                        <line x1="17.48" y1="82.52" x2="82.52" y2="17.48"/>
                        <line x1="27.05" y1="9.55" x2="72.95" y2="90.45"/>
                        <line x1="9.55" y1="27.05" x2="90.45" y2="72.95"/>
                        <line x1="9.55" y1="72.95" x2="90.45" y2="27.05"/>
                        <line x1="27.05" y1="90.45" x2="72.95" y2="9.55"/>
                        <line x1="38.35" y1="5.46" x2="61.65" y2="94.54"/>
                        <line x1="5.46" y1="38.35" x2="94.54" y2="61.65"/>
                        <line x1="5.46" y1="61.65" x2="94.54" y2="38.35"/>
                        <line x1="38.35" y1="94.54" x2="61.65" y2="5.46"/>
                    </g>
                </svg>
            </div>
            <div class="auth-brand-tagline">लोकतंत्र की शक्ति</div>

            <!-- Email -->
            <div class="reg-field-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input-field" TextMode="Email" placeholder="Email" MaxLength="150" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Email is required" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid email address" />
            </div>

            <!-- Password -->
            <div class="reg-field-group">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="auth-input-field" TextMode="Password" placeholder="Password" MaxLength="50" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Password is required" />
            </div>

            <!-- Login Button -->
            <asp:Button ID="btnLogin" runat="server" CssClass="btn-auth-submit" Text="Login" CausesValidation="true" OnClick="btnLogin_Click" />

            <!-- New voter? Register here -->
            <div class="auth-switch-text">
                New voter? <a href="Register.aspx" class="auth-link-green-bold">Register here</a>
            </div>

            <!-- Small grey text link: Admin Login → -->
            <div class="auth-admin-link-wrap">
                <a href="Admin/AdminLogin.aspx" class="auth-admin-link" id="lnkAdminLogin">Admin Login &rarr;</a>
            </div>

        </div>
    </div>

</asp:Content>
