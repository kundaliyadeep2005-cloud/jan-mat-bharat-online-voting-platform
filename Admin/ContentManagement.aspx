<%@ Page Title="Content Management" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ContentManagement.aspx.cs" Inherits="janmatbharat.Admin.ContentManagement" ValidateRequest="false" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Content Management</h1>
            <p class="adm-page-subtitle">Edit and optimize public-facing information directly from the database.</p>
        </div>
        <!-- Right: Public Data Interface pill -->
        <div>
            <span class="adm-summary-pill" style="border-color:#BFDBFE;color:#1D4ED8;background:#EFF6FF;cursor:default;">
                &#x1F310; Public Data Interface
            </span>
        </div>
    </div>

    <!-- ══ 3 CARDS: HOME PAGE, ABOUT PAGE, CONTACT PAGE ══ -->

    <!-- Card 1: HOME PAGE -->
    <details class="adm-content-card">
        <summary class="adm-content-summary">
            <div style="display:flex;align-items:center;gap:12px;">
                <span style="font-size:1.3rem;">&#x1F4C4;</span>
                <div>
                    <strong style="color:var(--navy-dk);font-size:1rem;display:block;">HOME PAGE</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">Last Modified: 21 Apr, 2026</span>
                </div>
            </div>
            <span class="adm-content-btn">Edit Content</span>
        </summary>
        <div class="adm-content-body">
            <div style="margin-bottom:14px;">
                <label class="adm-setting-label">INTERNAL TITLE</label>
                <input type="text" class="adm-setting-input" value="Jan-Mat Bharat | National Voting Portal" />
            </div>
            <div style="margin-bottom:10px;">
                <label class="adm-setting-label">DYNAMIC CONTENT (HTML SUPPORTED)</label>
                <textarea class="support-textarea" style="font-family:Consolas,monospace;font-size:0.85rem;" rows="5">&lt;div class="hero-section"&gt;&lt;h1&gt;जन-मत भारत&lt;/h1&gt;&lt;p&gt;मतदान राष्ट्र सेवा का पहला कदम है&lt;/p&gt;&lt;/div&gt;</textarea>
            </div>
            <div style="font-size:0.75rem;color:#9CA3AF;">Tip: Valid HTML markup is accepted and sanitized automatically.</div>
        </div>
    </details>

    <!-- Card 2: ABOUT PAGE -->
    <details class="adm-content-card">
        <summary class="adm-content-summary">
            <div style="display:flex;align-items:center;gap:12px;">
                <span style="font-size:1.3rem;">&#x1F4C4;</span>
                <div>
                    <strong style="color:var(--navy-dk);font-size:1rem;display:block;">ABOUT PAGE</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">Last Modified: 21 Apr, 2026</span>
                </div>
            </div>
            <span class="adm-content-btn">Edit Content</span>
        </summary>
        <div class="adm-content-body">
            <div style="margin-bottom:14px;">
                <label class="adm-setting-label">INTERNAL TITLE</label>
                <input type="text" class="adm-setting-input" value="About Jan-Mat Bharat &bull; Our Mission" />
            </div>
            <div style="margin-bottom:10px;">
                <label class="adm-setting-label">DYNAMIC CONTENT (HTML SUPPORTED)</label>
                <textarea class="support-textarea" style="font-family:Consolas,monospace;font-size:0.85rem;" rows="5">&lt;div class="mission-wrap"&gt;&lt;h2&gt;Our Mission&lt;/h2&gt;&lt;p&gt;Democratizing digital governance for every Indian.&lt;/p&gt;&lt;/div&gt;</textarea>
            </div>
            <div style="font-size:0.75rem;color:#9CA3AF;">Tip: Valid HTML markup is accepted and sanitized automatically.</div>
        </div>
    </details>

    <!-- Card 3: CONTACT PAGE (Rendered OPEN) -->
    <details class="adm-content-card" open="open">
        <summary class="adm-content-summary">
            <div style="display:flex;align-items:center;gap:12px;">
                <span style="font-size:1.3rem;">&#x1F4C4;</span>
                <div>
                    <strong style="color:var(--navy-dk);font-size:1rem;display:block;">CONTACT PAGE</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">Last Modified: 21 Apr, 2026</span>
                </div>
            </div>
            <span class="adm-content-btn">Edit Content</span>
        </summary>
        <div class="adm-content-body">
            <!-- Internal Title input -->
            <div style="margin-bottom:14px;">
                <label class="adm-setting-label">INTERNAL TITLE</label>
                <asp:TextBox ID="txtInternalTitle" runat="server" CssClass="adm-setting-input" Text="Contact Jan-Mat Bharat" MaxLength="150" />
                <asp:RequiredFieldValidator ID="rfvInternalTitle" runat="server" ControlToValidate="txtInternalTitle" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Internal title is required" />
            </div>
            <!-- Dynamic Content monospace textarea -->
            <div style="margin-bottom:10px;">
                <label class="adm-setting-label">DYNAMIC CONTENT (HTML SUPPORTED)</label>
                <asp:TextBox ID="txtHtmlContent" runat="server" CssClass="support-textarea" TextMode="MultiLine" Rows="6"
                    style="font-family:Consolas,monospace;font-size:0.85rem;"
                    Text='<div class="info-card"><h2>Get In Touch</h2><p>We are here to help and answer any question you might have.</p></div>' />
                <asp:RequiredFieldValidator ID="rfvHtmlContent" runat="server" ControlToValidate="txtHtmlContent" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="HTML content is required" />
            </div>
            <div style="font-size:0.75rem;color:#9CA3AF;margin-bottom:16px;">
                &#x24D8; HTML tags, attributes and styled blocks are dynamically rendered in the public contact view.
            </div>
        </div>
    </details>

    <!-- Right-aligned Save Page Data button -->
    <div style="display:flex;justify-content:flex-end;margin-top:20px;">
        <asp:Button ID="btnSavePageData" runat="server" CssClass="adm-save-btn" Text="Save Page Data ✓" CausesValidation="true" OnClick="btnSavePageData_Click" />
    </div>

</asp:Content>
