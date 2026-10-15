<%@ Page Title="Our Mission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="janmatbharat.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ══ HEADER BAND (130px, horizontal gradient saffron to white to green) ══ -->
    <section class="about-header-band">
        <h1 class="about-band-title">About Jan-Mat Bharat</h1>
        <div class="about-band-tagline">आपका वोट &bull; आपका अधिकार &bull; आपका भविष्य</div>
    </section>

    <!-- ══ NARROW CENTRED COLUMN (620px) ON LIGHT GREY (Matching Wireframe Page 6) ══ -->
    <section class="about-content-section">
        <div class="about-stack-col">

            <!-- Card 1: Our Mission -->
            <div class="about-card">
                <h2 class="about-card-title">&#x1F3AF; Our Mission</h2>
                <p class="about-card-text">
                    Jan-Mat Bharat is a digital voting platform designed to make democracy accessible, transparent, and secure for every Indian citizen. We believe that every vote matters and every voice deserves to be heard.
                </p>
            </div>

            <!-- Card 2: What We Do -->
            <div class="about-card">
                <h2 class="about-card-title">What We Do &#x1F4A1;</h2>
                <p class="about-card-intro">
                    We provide a simple, secure, and user-friendly platform where citizens can:
                </p>
                <ul class="about-check-list">
                    <li><span class="check-green">&#x2714;</span> Register as voters with verified credentials</li>
                    <li><span class="check-green">&#x2714;</span> Cast their votes securely and confidentially</li>
                    <li><span class="check-green">&#x2714;</span> View real-time election results</li>
                    <li><span class="check-green">&#x2714;</span> Participate in strengthening Indian democracy</li>
                </ul>
            </div>

            <!-- Card 3: Why Digital Voting? -->
            <div class="about-card">
                <h2 class="about-card-title">&#x1F310; Why Digital Voting?</h2>
                <p class="about-card-intro">
                    Digital voting platforms offer several advantages:
                </p>
                <ul class="about-check-list">
                    <li><span class="check-green">&#x2714;</span> <strong>Convenience:</strong> Vote from anywhere, anytime</li>
                    <li><span class="check-green">&#x2714;</span> <strong>Speed:</strong> Instant vote counting and results</li>
                    <li><span class="check-green">&#x2714;</span> <strong>Accuracy:</strong> Eliminates manual counting errors</li>
                    <li><span class="check-green">&#x2714;</span> <strong>Cost-Effective:</strong> Reduces election expenses</li>
                    <li><span class="check-green">&#x2714;</span> <strong>Eco-Friendly:</strong> Paperless voting process</li>
                </ul>
            </div>

            <!-- Card 4: Empowering Digital Democracy (Easy to Replace Image Banner) -->
            <!-- TO REPLACE IMAGE: Simply change the src attribute below or overwrite Images/about-vision.jpg -->
            <div class="about-card about-card-photo">
                <h2 class="about-card-title text-center">&#x1F1EE;&#x1F1F3; Empowering Digital Democracy</h2>
                
                <div class="about-photo-wrap">
                    <img src="<%=ResolveUrl("~/Images/about-vision.jpg")%>" alt="Digital Democracy Bharat" class="about-photo-img" />
                </div>

                <div class="about-photo-caption">
                    Empowering every citizen with transparent, secure, and accessible digital voting across Bharat.
                </div>
            </div>

        </div>
    </section>

</asp:Content>

<%-- ══ OVERRIDE FOOTER WITH SIMPLE FOOTER (Matching Wireframe Page 6) ══ --%>
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
