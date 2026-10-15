<%@ Page Title="Control Center" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="janmatbharat.Admin.Dashboard" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Control Center</h1>
            <div class="adm-page-subtitle">
                <span>Governance dashboard for electoral oversight.</span>
                <span class="adm-badge-in">IN</span>
            </div>
        </div>
    </div>

    <!-- ══ 3 STATS CARDS ══ -->
    <div class="adm-stats-grid">

        <!-- Card 1: TOTAL REGISTERED CITIZENS -->
        <div class="adm-stat-card">
            <div class="adm-stat-header">
                <span style="color:#2563EB;">&#x1F465;</span>
                <span>TOTAL REGISTERED CITIZENS</span>
            </div>
            <div class="adm-stat-val">10</div>
            <div class="adm-stat-footer">
                <span class="text-green">&#x25B2; Growing Base</span>
            </div>
        </div>

        <!-- Card 2: ELECTRONIC BALLOTS CAST -->
        <div class="adm-stat-card">
            <div class="adm-stat-header">
                <span style="color:#EAB308;">&#x2714;</span>
                <span>ELECTRONIC BALLOTS CAST</span>
            </div>
            <div class="adm-stat-val">21</div>
            <div class="adm-stat-footer">
                <span class="text-blue">Total Recorded</span>
            </div>
        </div>

        <!-- Card 3: SUPPORT INQUIRIES -->
        <div class="adm-stat-card">
            <div class="adm-stat-header">
                <span style="color:#138808;">&#x1F4AC;</span>
                <span>SUPPORT INQUIRIES</span>
            </div>
            <div class="adm-stat-val">0</div>
            <div class="adm-stat-footer">
                <span style="color:#6B7280;">Unread</span>
                <a href='<%=ResolveUrl("~/Admin/SupportInbox.aspx")%>' class="adm-stat-link">View Inbox &rarr;</a>
            </div>
        </div>

    </div>

    <!-- ══ TWO CARDS: RECENT USER ONBOARDING + LIVE VOTE STREAM ══ -->
    <div class="adm-two-cards-grid">

        <!-- Card 1: Recent User Onboarding -->
        <div class="adm-card">
            <h2 class="adm-card-title">Recent User Onboarding</h2>
            <table class="adm-table">
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>VOTER ID</th>
                        <th>JOINED AT</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">Rahul Gandhi</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">rahul@example.com</span>
                        </td>
                        <td><span class="adm-chip-pink">ABC1234567</span></td>
                        <td style="color:#4B5563;">12 Oct, 2026</td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">Priya Sharma</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">priya@example.com</span>
                        </td>
                        <td><span class="adm-chip-pink">DEF2345678</span></td>
                        <td style="color:#4B5563;">11 Oct, 2026</td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">Amit Kumar</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">amit@example.com</span>
                        </td>
                        <td><span class="adm-chip-pink">GHI3456789</span></td>
                        <td style="color:#4B5563;">10 Oct, 2026</td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">Sunita Devi</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">sunita@example.com</span>
                        </td>
                        <td><span class="adm-chip-pink">JKL4567890</span></td>
                        <td style="color:#4B5563;">09 Oct, 2026</td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">Mohammed Raza</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">mraza@example.com</span>
                        </td>
                        <td><span class="adm-chip-pink">MNO5678901</span></td>
                        <td style="color:#4B5563;">08 Oct, 2026</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Card 2: Live Vote Stream -->
        <div class="adm-card">
            <h2 class="adm-card-title">Live Vote Stream</h2>
            <table class="adm-table">
                <thead>
                    <tr>
                        <th>PARTY / CONSTITUENCY</th>
                        <th>TIMESTAMP</th>
                        <th>STATUS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">BJP</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">New Delhi (Constituency 01)</span>
                        </td>
                        <td style="color:#4B5563;">10 mins ago</td>
                        <td><span class="adm-pill-recorded">RECORDED</span></td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">NOTA</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">Amethi (Constituency 14)</span>
                        </td>
                        <td style="color:#4B5563;">18 mins ago</td>
                        <td><span class="adm-pill-recorded">RECORDED</span></td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">NOTA</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">Varanasi (Constituency 22)</span>
                        </td>
                        <td style="color:#4B5563;">25 mins ago</td>
                        <td><span class="adm-pill-recorded">RECORDED</span></td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">BSP</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">Lucknow (Constituency 05)</span>
                        </td>
                        <td style="color:#4B5563;">32 mins ago</td>
                        <td><span class="adm-pill-recorded">RECORDED</span></td>
                    </tr>
                    <tr>
                        <td>
                            <strong style="color:var(--navy-dk);display:block;">BJP</strong>
                            <span style="font-size:0.76rem;color:#6B7280;">Gandhinagar (Constituency 03)</span>
                        </td>
                        <td style="color:#4B5563;">41 mins ago</td>
                        <td><span class="adm-pill-recorded">RECORDED</span></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>

</asp:Content>
