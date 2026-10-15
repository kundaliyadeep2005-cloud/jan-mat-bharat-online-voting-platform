<%@ Page Title="Support Inbox" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SupportInbox.aspx.cs" Inherits="janmatbharat.Admin.SupportInbox" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Support Inbox</h1>
            <p class="adm-page-subtitle">Review and manage citizen inquiries.</p>
        </div>
        <!-- Search box -->
        <div class="adm-search-wrap">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="adm-search-input" placeholder="Search messages..." />
            <button type="button" class="adm-search-btn" aria-label="Search">&#x1F50D;</button>
        </div>
    </div>

    <!-- ══ TABLE CARD (5 rows) ══ -->
    <div class="adm-card">
        <table class="adm-table">
            <thead>
                <tr>
                    <th>FROM</th>
                    <th>SUBJECT &amp; MESSAGE</th>
                    <th>DATE</th>
                    <th>STATUS</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1: Rahul Gandhi -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle" style="background:#E0E7FF;color:#3730A3;">R</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Rahul Gandhi</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">rahul@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <strong style="color:var(--navy-dk);display:block;">Voter ID card verification pending</strong>
                        <span style="font-size:0.78rem;color:#6B7280;">I submitted my voter ID 3 days ago but haven't received confirmation...</span>
                    </td>
                    <td style="color:#4B5563;white-space:nowrap;">14 Oct, 2026</td>
                    <td><span class="adm-pill-replied">REPLIED</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Action &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item">View Full Message</button>
                                <button type="button" class="adm-menu-item green">Mark as Read</button>
                                <button type="button" class="adm-menu-item red">Delete</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 2: Priya Sharma -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle" style="background:#E0E7FF;color:#3730A3;">P</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Priya Sharma</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">priya@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <strong style="color:var(--navy-dk);display:block;">Password reset request</strong>
                        <span style="font-size:0.78rem;color:#6B7280;">Unable to log in with my credentials on the voter portal...</span>
                    </td>
                    <td style="color:#4B5563;white-space:nowrap;">13 Oct, 2026</td>
                    <td><span class="adm-pill-replied">REPLIED</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Action &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item">View Full Message</button>
                                <button type="button" class="adm-menu-item green">Mark as Read</button>
                                <button type="button" class="adm-menu-item red">Delete</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 3: Amit Kumar -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle" style="background:#E0E7FF;color:#3730A3;">A</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Amit Kumar</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">amit@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <strong style="color:var(--navy-dk);display:block;">Polling booth constituency query</strong>
                        <span style="font-size:0.78rem;color:#6B7280;">Need clarification on constituency boundary for Amethi...</span>
                    </td>
                    <td style="color:#4B5563;white-space:nowrap;">12 Oct, 2026</td>
                    <td><span class="adm-pill-replied">REPLIED</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Action &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item">View Full Message</button>
                                <button type="button" class="adm-menu-item green">Mark as Read</button>
                                <button type="button" class="adm-menu-item red">Delete</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 4: Sunita Devi (Rendered OPEN) -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle" style="background:#E0E7FF;color:#3730A3;">S</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Sunita Devi</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">sunita@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <strong style="color:var(--navy-dk);display:block;">Correction in registered name</strong>
                        <span style="font-size:0.78rem;color:#6B7280;">My name is spelled incorrectly on the registered voter list...</span>
                    </td>
                    <td style="color:#4B5563;white-space:nowrap;">11 Oct, 2026</td>
                    <td><span class="adm-pill-replied">REPLIED</span></td>
                    <td>
                        <details class="adm-details" open="open">
                            <summary class="adm-summary-pill">Action &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item">View Full Message</button>
                                <button type="button" class="adm-menu-item green">Mark as Read</button>
                                <button type="button" class="adm-menu-item red">Delete</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 5: Mohammed Raza -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle" style="background:#E0E7FF;color:#3730A3;">M</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Mohammed Raza</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">mraza@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <strong style="color:var(--navy-dk);display:block;">Technical feedback on digital EVM</strong>
                        <span style="font-size:0.78rem;color:#6B7280;">The EVM interface works smoothly on mobile browsers. Thank you...</span>
                    </td>
                    <td style="color:#4B5563;white-space:nowrap;">10 Oct, 2026</td>
                    <td><span class="adm-pill-replied">REPLIED</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Action &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item">View Full Message</button>
                                <button type="button" class="adm-menu-item green">Mark as Read</button>
                                <button type="button" class="adm-menu-item red">Delete</button>
                            </div>
                        </details>
                    </td>
                </tr>

            </tbody>
        </table>
    </div>

</asp:Content>
