<%@ Page Title="Global Settings" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="janmatbharat.Admin.Settings" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Global Settings</h1>
            <p class="adm-page-subtitle">Define system-wide configurations and identity parameters.</p>
        </div>
        <!-- Right: Root Administrator Session -->
        <div>
            <span style="font-size:0.78rem;color:#6B7280;font-weight:600;">Root Administrator Session</span>
        </div>
    </div>

    <!-- ══ WHITE CARD: ENVIRONMENT CONTROL ══ -->
    <div class="adm-card">
        <h2 class="adm-card-title">Environment Control</h2>

        <!-- 1. SITE NAME -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtSiteName.ClientID%>">SITE NAME</label>
            <asp:TextBox ID="txtSiteName" runat="server" CssClass="adm-setting-input" Text="जन-मत भारत" MaxLength="100" />
            <asp:RequiredFieldValidator ID="rfvSiteName" runat="server" ControlToValidate="txtSiteName" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Site name is required" />
            <div class="adm-setting-id">Config Identifier: site_name</div>
        </div>

        <!-- 2. SITE TAGLINE -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtSiteTagline.ClientID%>">SITE TAGLINE</label>
            <asp:TextBox ID="txtSiteTagline" runat="server" CssClass="adm-setting-input" Text="आपका वोट &bull; आपका अधिकार &bull; आपका भविष्य" MaxLength="150" />
            <asp:RequiredFieldValidator ID="rfvSiteTagline" runat="server" ControlToValidate="txtSiteTagline" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Site tagline is required" />
            <div class="adm-setting-id">Config Identifier: site_tagline</div>
        </div>

        <!-- 3. FOOTER CREDIT -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtFooterCredit.ClientID%>">FOOTER CREDIT</label>
            <asp:TextBox ID="txtFooterCredit" runat="server" CssClass="adm-setting-input" Text="Developed by Student Name" MaxLength="150" />
            <asp:RequiredFieldValidator ID="rfvFooterCredit" runat="server" ControlToValidate="txtFooterCredit" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Footer credit is required" />
            <div class="adm-setting-id">Config Identifier: footer_credit</div>
        </div>

        <!-- 4. CONTACT EMAIL -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtContactEmail.ClientID%>">CONTACT EMAIL</label>
            <asp:TextBox ID="txtContactEmail" runat="server" CssClass="adm-setting-input" TextMode="Email" Text="support@janmatbharat.in" MaxLength="150" />
            <asp:RequiredFieldValidator ID="rfvContactEmail" runat="server" ControlToValidate="txtContactEmail" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Contact email is required" />
            <asp:RegularExpressionValidator ID="revContactEmail" runat="server" ControlToValidate="txtContactEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid email address" />
            <div class="adm-setting-id">Config Identifier: contact_email</div>
        </div>

        <!-- 5. CONTACT PHONE -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtContactPhone.ClientID%>">CONTACT PHONE</label>
            <asp:TextBox ID="txtContactPhone" runat="server" CssClass="adm-setting-input" Text="1800-XXX-XXXX (Toll-Free)" MaxLength="50" />
            <asp:RequiredFieldValidator ID="rfvContactPhone" runat="server" ControlToValidate="txtContactPhone" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Contact phone is required" />
            <div class="adm-setting-id">Config Identifier: contact_phone</div>
        </div>

        <!-- 6. FACEBOOK URL -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtFacebook.ClientID%>">FACEBOOK URL</label>
            <asp:TextBox ID="txtFacebook" runat="server" CssClass="adm-setting-input" Text="https://facebook.com" MaxLength="200" />
            <asp:RequiredFieldValidator ID="rfvFacebook" runat="server" ControlToValidate="txtFacebook" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Facebook URL is required" />
            <asp:RegularExpressionValidator ID="revFacebook" runat="server" ControlToValidate="txtFacebook" ValidationExpression="^https?://.+" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid URL starting with http:// or https://" />
            <div class="adm-setting-id">Config Identifier: url_facebook</div>
        </div>

        <!-- 7. TWITTER URL -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtTwitter.ClientID%>">TWITTER URL</label>
            <asp:TextBox ID="txtTwitter" runat="server" CssClass="adm-setting-input" Text="https://twitter.com" MaxLength="200" />
            <asp:RequiredFieldValidator ID="rfvTwitter" runat="server" ControlToValidate="txtTwitter" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Twitter URL is required" />
            <asp:RegularExpressionValidator ID="revTwitter" runat="server" ControlToValidate="txtTwitter" ValidationExpression="^https?://.+" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid URL starting with http:// or https://" />
            <div class="adm-setting-id">Config Identifier: url_twitter</div>
        </div>

        <!-- 8. INSTAGRAM URL -->
        <div class="adm-setting-field">
            <label class="adm-setting-label" for="<%=txtInstagram.ClientID%>">INSTAGRAM URL</label>
            <asp:TextBox ID="txtInstagram" runat="server" CssClass="adm-setting-input" Text="https://instagram.com" MaxLength="200" />
            <asp:RequiredFieldValidator ID="rfvInstagram" runat="server" ControlToValidate="txtInstagram" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Instagram URL is required" />
            <asp:RegularExpressionValidator ID="revInstagram" runat="server" ControlToValidate="txtInstagram" ValidationExpression="^https?://.+" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter a valid URL starting with http:// or https://" />
            <div class="adm-setting-id">Config Identifier: url_instagram</div>
        </div>

        <!-- 9. ABOUT US -->
        <div class="adm-setting-field" style="margin-bottom:0;">
            <label class="adm-setting-label" for="<%=txtAboutUs.ClientID%>">ABOUT US</label>
            <asp:TextBox ID="txtAboutUs" runat="server" CssClass="adm-setting-input" Text="Digital voting and consensus platform for Bharat." MaxLength="250" />
            <asp:RequiredFieldValidator ID="rfvAboutUs" runat="server" ControlToValidate="txtAboutUs" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="About us text is required" />
            <div class="adm-setting-id">Config Identifier: site_about_text</div>
        </div>

        <!-- Full-width blue button: ☁ Deploy System Changes -->
        <asp:Button ID="btnDeploySettings" runat="server" CssClass="adm-deploy-btn" Text="☁ Deploy System Changes" CausesValidation="true" OnClick="btnDeploySettings_Click" />

    </div>

    <!-- ══ LIGHT YELLOW WARNING CONTAINER ══ -->
    <div class="adm-warning-box">
        &#x26A0;&#xFE0F; <strong>Warning Container:</strong> Changes here affect the public-facing identity of Jan Mat Bharat immediately. Ensure all configuration values are audited before deployment.
    </div>

</asp:Content>
