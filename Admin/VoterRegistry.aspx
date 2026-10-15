<%@ Page Title="Voter Directory" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="VoterRegistry.aspx.cs" Inherits="janmatbharat.Admin.VoterRegistry" %>

<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ PAGE HEADER ══ -->
    <div class="adm-page-header">
        <div>
            <h1 class="adm-page-title">Voter Directory</h1>
            <p class="adm-page-subtitle">Manage and verify citizen credentials.</p>
        </div>
        <!-- Search box -->
        <div class="adm-search-wrap">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="adm-search-input" placeholder="Search by name, ID or email..." />
            <button type="button" class="adm-search-btn" aria-label="Search">&#x1F50D;</button>
        </div>
    </div>

    <!-- ══ TABLE CARD (7 rows) ══ -->
    <div class="adm-card">
        <table class="adm-table">
            <thead>
                <tr>
                    <th>CITIZEN IDENTITY</th>
                    <th>VOTER ID</th>
                    <th>STATUS</th>
                    <th>VOTED FOR</th>
                    <th>ADMINISTRATIVE CONTROLS</th>
                </tr>
            </thead>
            <tbody>
                <!-- Row 1: Rahul Gandhi -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">R</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Rahul Gandhi</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">rahul@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">ABC1234567</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span class="adm-pill-party">BJP</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 2: Priya Sharma -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">P</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Priya Sharma</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">priya@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">DEF2345678</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span class="adm-pill-party">NOTA</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 3: Amit Kumar (Rendered OPEN) -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">A</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Amit Kumar</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">amit@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">GHI3456789</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span style="color:#9CA3AF;font-size:0.82rem;">Has not voted</span></td>
                    <td>
                        <details class="adm-details" open="open">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 4: Sunita Devi -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">S</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Sunita Devi</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">sunita@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">JKL4567890</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span class="adm-pill-party">INC</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 5: Mohammed Raza -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">M</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Mohammed Raza</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">mraza@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">MNO5678901</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span class="adm-pill-party">AAP</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 6: Anita Patel -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">A</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Anita Patel</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">anita@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">PQR6789012</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span style="color:#9CA3AF;font-size:0.82rem;">Has not voted</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

                <!-- Row 7: Rajesh Singh -->
                <tr>
                    <td>
                        <div class="adm-citizen-col">
                            <div class="adm-avatar-circle">R</div>
                            <div>
                                <strong style="color:var(--navy-dk);display:block;">Rajesh Singh</strong>
                                <span style="font-size:0.76rem;color:#6B7280;">rajesh@example.com</span>
                            </div>
                        </div>
                    </td>
                    <td><span class="adm-chip-grey">STU7890123</span></td>
                    <td><span class="adm-pill-active">ACTIVE</span></td>
                    <td><span class="adm-pill-party">BSP</span></td>
                    <td>
                        <details class="adm-details">
                            <summary class="adm-summary-pill">Manage &#x25BE;</summary>
                            <div class="adm-details-menu">
                                <button type="button" class="adm-menu-item amber">Suspend Account</button>
                                <button type="button" class="adm-menu-item red">Delete Vote</button>
                                <button type="button" class="adm-menu-item red">Delete Account</button>
                            </div>
                        </details>
                    </td>
                </tr>

            </tbody>
        </table>
    </div>

</asp:Content>
