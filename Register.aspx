<%@ Page Title="Register" Language="C#" MasterPageFile="~/Auth.Master"
    AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="janmatbharat.Register" %>

<%-- ── TOPBAR RIGHT: "Already have an account? Login →" ── --%>
<asp:Content ID="topBarLink" ContentPlaceHolderID="TopBarLink" runat="server">
    <span class="auth-topbar-text">Already have an account?</span>
    <a href="Login.aspx" id="lnkTopLogin" class="auth-toplink">Login &rarr;</a>
</asp:Content>

<%-- ── MAIN CONTENT: Register Screen ── --%>
<asp:Content ID="mainContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="auth-card auth-card-wide" id="registerCard">

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
        <div class="auth-brand-tagline">आपका वोट &bull; हमारी आवाज</div>

        <!-- Round Photo Circle (90px, orange 2px border, grey background, 👤 icon) -->
        <div class="reg-photo-wrap">
            <div class="reg-photo-circle">
                &#x1F464;
            </div>
            <button type="button" class="btn-upload-dp">Upload Photo (DP)</button>
        </div>

        <!-- 1. Full Name -->
        <div class="reg-field-group">
            <asp:TextBox ID="txtFullName" runat="server" CssClass="auth-input-field" placeholder="Full Name" MaxLength="100" />
            <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Full name is required" />
            <asp:RegularExpressionValidator ID="revFullName" runat="server" ControlToValidate="txtFullName" ValidationExpression="^[A-Za-z ]{3,100}$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid name (letters only)" />
        </div>

        <!-- 2. Email -->
        <div class="reg-field-group">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auth-input-field" TextMode="Email" placeholder="Email" MaxLength="150" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Email is required" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid email address" />
        </div>

        <!-- 3. Voter ID Number with Hint -->
        <div class="reg-field-group">
            <asp:TextBox ID="txtVoterId" runat="server" CssClass="auth-input-field" placeholder="Voter ID Number (Example: ABC1234567)" MaxLength="20" />
            <div class="reg-hint">Found on your Election ID card.</div>
            <asp:RequiredFieldValidator ID="rfvVoterId" runat="server" ControlToValidate="txtVoterId" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Voter ID is required" />
            <asp:RegularExpressionValidator ID="revVoterId" runat="server" ControlToValidate="txtVoterId" ValidationExpression="^[A-Za-z]{3}[0-9]{7}$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Format: 3 letters + 7 digits (ABC1234567)" />
        </div>

        <!-- 4. Date of Birth (18+) -->
        <div class="reg-field-group">
            <label class="reg-label-bold">Date of Birth (18+)</label>
            <asp:TextBox ID="txtDob" runat="server" CssClass="auth-input-field" TextMode="Date" placeholder="mm/dd/yyyy" />
            <asp:RequiredFieldValidator ID="rfvDob" runat="server" ControlToValidate="txtDob" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Date of birth is required" />
            <asp:CustomValidator ID="cvDob" runat="server" ControlToValidate="txtDob" Display="Dynamic" EnableClientScript="false" CssClass="field-error" OnServerValidate="cvDob_ServerValidate" ErrorMessage="You must be 18 or older" />
        </div>

        <!-- 5. State dropdown with Select State and 6 sample states -->
        <div class="reg-field-group">
            <asp:DropDownList ID="ddlState" runat="server" CssClass="auth-input-field reg-select">
                <asp:ListItem Text="Select State" Value="" Selected="True" />
                <asp:ListItem Text="Andhra Pradesh" Value="AP" />
                <asp:ListItem Text="Delhi" Value="DL" />
                <asp:ListItem Text="Gujarat" Value="GJ" />
                <asp:ListItem Text="Maharashtra" Value="MH" />
                <asp:ListItem Text="Rajasthan" Value="RJ" />
                <asp:ListItem Text="Uttar Pradesh" Value="UP" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" InitialValue="" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Please select your state" />
        </div>

        <!-- 6. Password -->
        <div class="reg-field-group">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="auth-input-field" TextMode="Password" placeholder="Password" MaxLength="50" />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Password is required" />
            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^.{6,50}$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Password must be at least 6 characters" />
        </div>

        <!-- 7. Confirm Password -->
        <div class="reg-field-group">
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="auth-input-field" TextMode="Password" placeholder="Confirm Password" MaxLength="50" />
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Please confirm your password" />
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Passwords do not match" />
        </div>

        <!-- Register Button -->
        <asp:Button ID="btnRegister" runat="server" CssClass="btn-auth-submit" Text="Register" CausesValidation="true" OnClick="btnRegister_Click" />

        <!-- Switch to Login -->
        <div class="auth-switch-text">
            Already have an account? <a href="Login.aspx" class="auth-link-green-bold">Login here</a>
        </div>

    </div>

</asp:Content>
