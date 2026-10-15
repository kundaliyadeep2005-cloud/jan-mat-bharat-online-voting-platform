<%@ Page Title="Support Center" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="janmatbharat.Support" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="support-page-wrap">

        <!-- ══ HEADER AREA (Soft peach-to-white gradient) ══ -->
        <section class="support-header-area">
            <h1 class="support-header-title">Support Center</h1>
            <div class="support-header-tagline">आपका वोट &bull; आपका अधिकार &bull; आपका भविष्य</div>
        </section>

        <!-- ══ 4 EQUAL CARDS IN A ROW ══ -->
        <div class="support-row-4">
            <!-- 1. Get In Touch (orange 🎧) -->
            <div class="support-card-4">
                <div class="support-round-icon icon-orange">&#x1F3A7;</div>
                <div class="support-card-name">Get In Touch</div>
                <div class="support-card-desc">We're here to help and answer any question you might have.</div>
            </div>

            <!-- 2. Our Office (green 📍) -->
            <div class="support-card-4">
                <div class="support-round-icon icon-green">&#x1F4CD;</div>
                <div class="support-card-name">Our Office</div>
                <div class="support-card-desc">123 Sansad Marg, New Delhi, India</div>
            </div>

            <!-- 3. Phone Number (blue 📞) -->
            <div class="support-card-4">
                <div class="support-round-icon icon-blue">&#x1F4DE;</div>
                <div class="support-card-name">Phone Number</div>
                <div class="support-card-desc">1800-11-2024 / Mon - Sat (9am - 6pm)</div>
            </div>

            <!-- 4. Email Address (grey ✉) -->
            <div class="support-card-4">
                <div class="support-round-icon icon-grey">&#x2709;</div>
                <div class="support-card-name">Email Address</div>
                <div class="support-card-desc">support@janmat.gov.in</div>
            </div>
        </div>

        <!-- ══ SPLIT GRID: SEND A MESSAGE (60%) + VISIT OUR CENTER (40%) ══ -->
        <div class="support-split-grid">

            <!-- Left: Frequently Asked Questions (FAQ) -->
            <!-- TO EDIT/ADD FAQs: Simply edit any question/answer block below -->
            <div class="support-left-card">
                <div class="support-card-header">
                    <span class="support-faq-icon">&#x2753;</span>
                    <h2 class="support-card-heading">Frequently Asked Questions</h2>
                </div>
                <div class="support-reply-text">Quick answers to common questions about Jan-Mat Bharat.</div>

                <div class="support-faq-list">

                    <!-- FAQ Item 1 -->
                    <details class="support-faq-item" open="open">
                        <summary class="support-faq-question">
                            <span>How do I register as an eligible voter?</span>
                            <span class="support-faq-arrow">&#x25BE;</span>
                        </summary>
                        <div class="support-faq-answer">
                            Click on the <strong>Register</strong> button in the top navigation bar. Provide your legal Full Name, Email, Date of Birth (must be 18+ years), State, and 10-digit Voter ID Number (e.g., ABC1234567). Once registered, your account is immediately verified and active.
                        </div>
                    </details>

                    <!-- FAQ Item 2 -->
                    <details class="support-faq-item">
                        <summary class="support-faq-question">
                            <span>Can I change or edit my vote after submitting?</span>
                            <span class="support-faq-arrow">&#x25BE;</span>
                        </summary>
                        <div class="support-faq-answer">
                            No. To maintain electoral integrity and prevent ballot tampering, each citizen is permitted exactly one immutable vote. Please review your party selection carefully before confirming your submission.
                        </div>
                    </details>

                    <!-- FAQ Item 3 -->
                    <details class="support-faq-item">
                        <summary class="support-faq-question">
                            <span>Is my voting choice private and confidential?</span>
                            <span class="support-faq-arrow">&#x25BE;</span>
                        </summary>
                        <div class="support-faq-answer">
                            Yes. Jan-Mat Bharat guarantees constitutional secrecy of the ballot. Your vote is recorded electronically and securely, and public election views reflect only aggregated percentage consensus.
                        </div>
                    </details>

                    <!-- FAQ Item 4 -->
                    <details class="support-faq-item">
                        <summary class="support-faq-question">
                            <span>What should I do if my details are incorrect?</span>
                            <span class="support-faq-arrow">&#x25BE;</span>
                        </summary>
                        <div class="support-faq-answer">
                            You can review your registration status on your <strong>Voter Profile</strong> page. If you require official profile corrections, reach out to our toll-free helpline at <code>1800-11-2024</code> or visit our Sansad Marg support center.
                        </div>
                    </details>

                </div>
            </div>

            <!-- Right: Visit Our Center -->
            <div class="support-right-card">
                <div class="support-card-header">
                    <span class="support-map-icon">&#x1F5FA;&#xFE0F;</span>
                    <h2 class="support-card-heading">Visit Our Center</h2>
                </div>
                <div class="support-center-info">
                    Our main support center is located at: 123 Sansad Marg, New Delhi, India
                </div>
                <div class="support-photo-wrap">
                    <img src="<%=ResolveUrl("~/Images/support-center.jpg")%>" alt="Support Center" class="support-photo-img" />
                </div>
            </div>

        </div>

    </div>
</asp:Content>
