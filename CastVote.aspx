<%@ Page Title="Cast Your Vote" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CastVote.aspx.cs" Inherits="janmatbharat.CastVote" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="castvote-page-wrap">

        <!-- ══ TOP HEADER ══ -->
        <header class="castvote-header">
            <div class="castvote-top-icon" role="img" aria-label="Ballot Box">&#x1F5F3;&#xFE0F;</div>
            <h1 class="castvote-title">Cast Your Vote</h1>
            <div class="castvote-tagline">YOUR VOICE &bull; YOUR POWER &bull; YOUR BHARAT</div>
        </header>

        <!-- ══ TWO COLUMN CONTAINER (65% / 35%) ══ -->
        <div class="castvote-container">

            <!-- ── LEFT COLUMN: SELECT REPRESENTATIVE (65%) ── -->
            <div class="castvote-left-col">
                <div class="castvote-sec-title">
                    <span>&#x2630;</span>
                    <span>Select Your Representative</span>
                </div>

                <!-- 2-column grid of white cards -->
                <div class="party-vote-grid">

                    <!-- 1. Bharatiya Janata Party (BJP) - Checked by default -->
                    <label class="vote-card-option" for="<%=rbBjp.ClientID%>">
                        <asp:RadioButton ID="rbBjp" runat="server" GroupName="Party" Checked="True" />
                        <div class="vote-logo-48 bg-bjp">BJP</div>
                        <div class="vote-party-name">Bharatiya Janata Party</div>
                        <span class="vote-chip vote-chip-orange">DEVELOPMENT &bull; NATIONALISM</span>
                    </label>

                    <!-- 2. Indian National Congress (INC) -->
                    <label class="vote-card-option" for="<%=rbInc.ClientID%>">
                        <asp:RadioButton ID="rbInc" runat="server" GroupName="Party" />
                        <div class="vote-logo-48 bg-inc">INC</div>
                        <div class="vote-party-name">Indian National Congress</div>
                        <span class="vote-chip vote-chip-bluegray">SECULARISM &bull; PROGRESS</span>
                    </label>

                    <!-- 3. Aam Aadmi Party (AAP) -->
                    <label class="vote-card-option" for="<%=rbAap.ClientID%>">
                        <asp:RadioButton ID="rbAap" runat="server" GroupName="Party" />
                        <div class="vote-logo-48 bg-aap">AAP</div>
                        <div class="vote-party-name">Aam Aadmi Party</div>
                        <span class="vote-chip vote-chip-bluegray">ANTI-CORRUPTION &bull; WELFARE</span>
                    </label>

                    <!-- 4. Communist Party of India (CPI) -->
                    <label class="vote-card-option" for="<%=rbCpi.ClientID%>">
                        <asp:RadioButton ID="rbCpi" runat="server" GroupName="Party" />
                        <div class="vote-logo-48 bg-cpi">CPI</div>
                        <div class="vote-party-name">Communist Party of India</div>
                        <span class="vote-chip vote-chip-bluegray">SOCIALISM &bull; EQUALITY</span>
                    </label>

                    <!-- 5. Trinamool Congress (TMC) -->
                    <label class="vote-card-option" for="<%=rbTmc.ClientID%>">
                        <asp:RadioButton ID="rbTmc" runat="server" GroupName="Party" />
                        <div class="vote-logo-48 bg-tmc">TMC</div>
                        <div class="vote-party-name">Trinamool Congress</div>
                        <span class="vote-chip vote-chip-bluegray">REGIONAL &bull; DEMOCRACY</span>
                    </label>

                    <!-- 6. Bahujan Samaj Party (BSP) -->
                    <label class="vote-card-option" for="<%=rbBsp.ClientID%>">
                        <asp:RadioButton ID="rbBsp" runat="server" GroupName="Party" />
                        <div class="vote-logo-48 bg-bsp">BSP</div>
                        <div class="vote-party-name">Bahujan Samaj Party</div>
                        <span class="vote-chip vote-chip-bluegray">SOCIAL JUSTICE</span>
                    </label>

                </div>

                <!-- Full-width dashed NOTA row -->
                <label class="vote-nota-row" for="<%=rbNota.ClientID%>">
                    <div class="vote-nota-left">
                        <span class="vote-nota-icon">&#x1F6AB;</span>
                        <span class="vote-nota-name">None of the Above (NOTA)</span>
                    </div>
                    <asp:RadioButton ID="rbNota" runat="server" GroupName="Party" />
                </label>

                <asp:CustomValidator ID="cvParty" runat="server" Display="Dynamic" EnableClientScript="false" CssClass="field-error" OnServerValidate="cvParty_ServerValidate" ErrorMessage="Please select a party or NOTA" />

            </div>

            <!-- ── RIGHT COLUMN: SELECTION & VERIFY (35%) ── -->
            <div class="castvote-right-col">

                <!-- Card 1: Green left border selection summary -->
                <div class="vote-selection-card">
                    <div class="vote-sel-label">YOUR SELECTION:</div>
                    <div class="vote-sel-name">Bharatiya Janata Party</div>
                    <div class="vote-sel-party-row">
                        <div class="vote-logo-48 bg-bjp">BJP</div>
                        <span class="vote-chip vote-chip-orange">DEVELOPMENT &bull; NATIONALISM</span>
                    </div>
                    <div class="vote-alert-red">
                        &#x26A0;&#xFE0F; Once submitted, your vote cannot be changed. Ensure your selection is correct before proceeding.
                    </div>
                </div>

                <!-- Card 2: Verify Your Identity -->
                <div class="vote-verify-card">
                    <div class="vote-verify-hdr">
                        <span class="vote-lock-green">&#x1F512;</span>
                        <h3>Verify Your Identity</h3>
                    </div>
                    <div class="vote-verify-sub">
                        Enter your login password to confirm your identity before casting your vote.
                    </div>

                    <!-- Password input with 🔒 and 👁 -->
                    <div class="vote-pw-box">
                        <span class="vote-pw-icon-left">&#x1F512;</span>
                        <asp:TextBox ID="txtVotePassword" runat="server" CssClass="vote-pw-input" TextMode="Password" placeholder="Enter your password" MaxLength="50" />
                        <span class="vote-pw-icon-right">&#x1F441;</span>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvVotePassword" runat="server" ControlToValidate="txtVotePassword" Display="Dynamic" EnableClientScript="false" CssClass="field-error" ErrorMessage="Enter your password to verify your identity" />

                    <!-- Verify & Submit Vote button -->
                    <asp:Button ID="btnSubmitVote" runat="server" CssClass="btn-verify-submit" Text="✓ Verify &amp; Submit Vote" CausesValidation="true" OnClick="btnSubmitVote_Click" />

                    <div class="vote-security-note">
                        &#x24D8; For security reasons, please enter your password to verify your identity and cast your vote.
                    </div>
                </div>

            </div>

        </div>

    </div>
</asp:Content>
