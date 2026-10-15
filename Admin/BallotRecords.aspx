<%@ Page Title="Live Vote Center" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BallotRecords.aspx.cs" Inherits="janmatbharat.Admin.BallotRecords" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Live Vote Center</h1>
            <p class="adm-page-subtitle">Real-time election tracking and consensus analysis.</p>
        </div>
        <!-- Right: big blue 21 with TOTAL ELECTORAL CASTS -->
        <div class="adm-ballot-stat-box">
            <div class="adm-ballot-num">21</div>
            <div class="adm-ballot-lbl">TOTAL ELECTORAL CASTS</div>
        </div>
    </div>

    <!-- ══ TWO CARDS GRID ══ -->
    <div class="adm-two-cards-grid">

        <!-- Left Card: Constituency Performance (5 rows) -->
        <div class="adm-card">
            <h2 class="adm-card-title">Constituency Performance</h2>

            <!-- Row 1: BJP 47.6% 10 Votes orange -->
            <div class="adm-party-perf-row">
                <div class="adm-party-perf-top">
                    <div class="adm-party-perf-left">
                        <span>&#x1F3F3;&#xFE0F;</span>
                        <span>Bharatiya Janata Party (BJP)</span>
                    </div>
                    <div class="adm-party-perf-right">
                        <strong>47.6%</strong>
                        <span style="color:#6B7280;font-size:0.8rem;margin-left:4px;">(10 Votes)</span>
                    </div>
                </div>
                <div class="adm-progress-bg">
                    <div class="adm-progress-bar" style="width:47.6%;background:#FF9933;"></div>
                </div>
            </div>

            <!-- Row 2: NOTA 33.3% 7 Votes blue -->
            <div class="adm-party-perf-row">
                <div class="adm-party-perf-top">
                    <div class="adm-party-perf-left">
                        <span>&#x1F3F3;&#xFE0F;</span>
                        <span>None of the Above (NOTA)</span>
                    </div>
                    <div class="adm-party-perf-right">
                        <strong>33.3%</strong>
                        <span style="color:#6B7280;font-size:0.8rem;margin-left:4px;">(7 Votes)</span>
                    </div>
                </div>
                <div class="adm-progress-bg">
                    <div class="adm-progress-bar" style="width:33.3%;background:#2563EB;"></div>
                </div>
            </div>

            <!-- Row 3: INC 9.5% 2 Votes green -->
            <div class="adm-party-perf-row">
                <div class="adm-party-perf-top">
                    <div class="adm-party-perf-left">
                        <span>&#x1F3F3;&#xFE0F;</span>
                        <span>Indian National Congress (INC)</span>
                    </div>
                    <div class="adm-party-perf-right">
                        <strong>9.5%</strong>
                        <span style="color:#6B7280;font-size:0.8rem;margin-left:4px;">(2 Votes)</span>
                    </div>
                </div>
                <div class="adm-progress-bg">
                    <div class="adm-progress-bar" style="width:9.5%;background:#138808;"></div>
                </div>
            </div>

            <!-- Row 4: BSP 4.8% 1 Votes red -->
            <div class="adm-party-perf-row">
                <div class="adm-party-perf-top">
                    <div class="adm-party-perf-left">
                        <span>&#x1F3F3;&#xFE0F;</span>
                        <span>Bahujan Samaj Party (BSP)</span>
                    </div>
                    <div class="adm-party-perf-right">
                        <strong>4.8%</strong>
                        <span style="color:#6B7280;font-size:0.8rem;margin-left:4px;">(1 Votes)</span>
                    </div>
                </div>
                <div class="adm-progress-bg">
                    <div class="adm-progress-bar" style="width:4.8%;background:#DC2626;"></div>
                </div>
            </div>

            <!-- Row 5: AAP 4.8% 1 Votes purple -->
            <div class="adm-party-perf-row">
                <div class="adm-party-perf-top">
                    <div class="adm-party-perf-left">
                        <span>&#x1F3F3;&#xFE0F;</span>
                        <span>Aam Aadmi Party (AAP)</span>
                    </div>
                    <div class="adm-party-perf-right">
                        <strong>4.8%</strong>
                        <span style="color:#6B7280;font-size:0.8rem;margin-left:4px;">(1 Votes)</span>
                    </div>
                </div>
                <div class="adm-progress-bg">
                    <div class="adm-progress-bar" style="width:4.8%;background:#9333EA;"></div>
                </div>
            </div>

        </div>

        <!-- Right Card: Live Activity Stream (6 rows) -->
        <div class="adm-card">
            <h2 class="adm-card-title">Live Activity Stream</h2>

            <!-- Row 1: BJP -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">Bharatiya Janata Party (BJP)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:44 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

            <!-- Row 2: NOTA -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">None of the Above (NOTA)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:38 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

            <!-- Row 3: NOTA -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">None of the Above (NOTA)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:31 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

            <!-- Row 4: BSP -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">Bahujan Samaj Party (BSP)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:22 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

            <!-- Row 5: BJP -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">Bharatiya Janata Party (BJP)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:15 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

            <!-- Row 6: INC -->
            <div class="adm-stream-row">
                <div>
                    <strong style="color:var(--navy-dk);display:block;">Indian National Congress (INC)</strong>
                    <span style="font-size:0.76rem;color:#6B7280;">&#x1F552; 12:04 PM</span>
                </div>
                <div style="display:flex;align-items:center;gap:12px;">
                    <span class="adm-chip-plus-one">+1 Vote</span>
                    <span class="adm-chip-verified">VERIFIED</span>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
