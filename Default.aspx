<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="janmatbharat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ FULL-WIDTH HERO BANNER (220px tall, pure CSS background with grey fallback) ══ -->
    <div class="home-hero-wrap">
        <div class="home-hero-banner" role="img" aria-label="Jan-Mat Bharat Banner">
            <span class="home-hero-text">&#x1F1EE;&#x1F1F3; जन-मत भारत</span>
        </div>
    </div>

    <!-- ══ CENTERED ON WHITE INTRO ══ -->
    <section class="home-intro-section">
        <h1 class="home-title-large">जन-मत भारत</h1>
        <div class="home-tagline-dots">&bull; Your Vote &bull; Your Right &bull; Your Future &bull;</div>
        <div class="home-quote-green">&ldquo;मतदान राष्ट्र सेवा का पहला कदम है&rdquo;</div>
    </section>

    <!-- ══ LIGHT GREY SECTION (Matching Wireframe Page 5) ══ -->
    <section class="home-parties-section">
        <div class="home-content-container">

            <h2 class="section-title-navy">Recognized Political Parties</h2>

            <!-- Row 1: 4 cards -->
            <div class="party-row-4">
                <!-- 1. BJP -->
                <div class="party-card">
                    <div class="party-logo-circle bg-bjp">BJP</div>
                    <div class="party-card-name">Bharatiya Janata Party (BJP)</div>
                    <div class="party-card-desc">Focuses on nationalism, development, and governance.</div>
                </div>

                <!-- 2. INC -->
                <div class="party-card">
                    <div class="party-logo-circle bg-inc">INC</div>
                    <div class="party-card-name">Indian National Congress (INC)</div>
                    <div class="party-card-desc">Emphasizes social justice, equality, and democracy.</div>
                </div>

                <!-- 3. AAP -->
                <div class="party-card">
                    <div class="party-logo-circle bg-aap">AAP</div>
                    <div class="party-card-name">Aam Aadmi Party (AAP)</div>
                    <div class="party-card-desc">Works for transparency, education, and public welfare.</div>
                </div>

                <!-- 4. CPI -->
                <div class="party-card">
                    <div class="party-logo-circle bg-cpi">CPI</div>
                    <div class="party-card-name">Communist Party of India (CPI)</div>
                    <div class="party-card-desc">Workers and socialist welfare focus.</div>
                </div>
            </div>

            <!-- Row 2: 3 cards centered -->
            <div class="party-row-3">
                <!-- 5. TMC -->
                <div class="party-card">
                    <div class="party-logo-circle bg-tmc">TMC</div>
                    <div class="party-card-name">Trinamool Congress (TMC)</div>
                    <div class="party-card-desc">Grassroots secularism and state-level progress.</div>
                </div>

                <!-- 6. BSP -->
                <div class="party-card">
                    <div class="party-logo-circle bg-bsp">BSP</div>
                    <div class="party-card-name">Bahujan Samaj Party (BSP)</div>
                    <div class="party-card-desc">Social justice and equality focus.</div>
                </div>

                <!-- 7. NOTA -->
                <div class="party-card">
                    <div class="party-logo-circle bg-nota">NOTA</div>
                    <div class="party-card-name">None of the Above (NOTA)</div>
                    <div class="party-card-desc">Select if you do not support any candidate.</div>
                </div>
            </div>

            <!-- ══ WHY VOTING MATTERS ══ -->
            <h2 class="section-title-navy section-spacing-top">Why Voting Matters</h2>

            <div class="voting-matters-row">
                <!-- Card 1: Strong Leadership -->
                <div class="why-vote-card">
                    <div class="why-vote-icon">&#x1F3DB;</div>
                    <div class="why-vote-title">Strong Leadership</div>
                    <div class="why-vote-desc">Elect leaders who serve the people.</div>
                </div>

                <!-- Card 2: Equal Power -->
                <div class="why-vote-card">
                    <div class="why-vote-icon">&#x2696;&#xFE0F;</div>
                    <div class="why-vote-title">Equal Power</div>
                    <div class="why-vote-desc">Every citizen&#39;s vote has equal value.</div>
                </div>

                <!-- Card 3: Nation Building -->
                <div class="why-vote-card">
                    <div class="why-vote-icon">&#x1F3D7;&#xFE0F;</div>
                    <div class="why-vote-title">Nation Building</div>
                    <div class="why-vote-desc">Your vote strengthens Bharat.</div>
                </div>
            </div>

        </div>
    </section>

</asp:Content>

<%-- ══ OVERRIDE FOOTER WITH SIMPLE FOOTER (Matching Wireframe Page 5) ══ --%>
<asp:Content ID="FooterOverride" ContentPlaceHolderID="FooterContent" runat="server">
    <footer class="simple-footer">
        <div class="simple-footer-tricolour"></div>
        <div class="simple-footer-inner">
            <div class="simple-footer-brand">जन-मत भारत</div>
            <div class="simple-footer-tagline">आपका वोट &bull; आपका अधिकार &bull; आपका भविष्य</div>
            <div class="simple-footer-links">
                <a href='<%=ResolveUrl("~/Default.aspx")%>'>Home</a>
                <a href='<%=ResolveUrl("~/About.aspx")%>'>Our Mission</a>
                <a href='<%=ResolveUrl("~/CastVote.aspx")%>'>Cast Your Vote</a>
                <a href='<%=ResolveUrl("~/VoterProfile.aspx")%>'>Voter Profile</a>
                <a href="#">Live Results</a>
                <a href='<%=ResolveUrl("~/Login.aspx")%>' class="simple-footer-signout">Sign Out</a>
            </div>
            <div class="simple-footer-copy">
                &copy; 2026 जन-मत भारत
            </div>
            <div class="simple-footer-dev">
                Developed with <span class="heart-red">&hearts;</span> for Bharat
            </div>
        </div>
    </footer>
</asp:Content>
