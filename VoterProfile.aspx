<%@ Page Title="Voter Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VoterProfile.aspx.cs" Inherits="janmatbharat.VoterProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="voter-profile-page">
        <!-- 460px centred white card -->
        <div class="voter-profile-card">

            <!-- Grey round 👤 avatar -->
            <div class="voter-avatar-circle" role="img" aria-label="Avatar">&#x1F464;</div>

            <!-- "Rahul Gandhi" bold -->
            <h1 class="voter-name-bold">Rahul Gandhi</h1>

            <!-- Green pill "Verified Citizen" -->
            <div class="voter-badge-pill">Verified Citizen</div>

            <!-- Light blue box with a 2x2 grid -->
            <div class="voter-info-grid-box">
                <div class="voter-info-item">
                    <label>Email Address</label>
                    <span>rahul@example.com</span>
                </div>
                <div class="voter-info-item">
                    <label>Voter ID Number</label>
                    <span>ABC1234567</span>
                </div>
                <div class="voter-info-item">
                    <label>Registered State</label>
                    <span>Uttar Pradesh (UP)</span>
                </div>
                <div class="voter-info-item">
                    <label>Date of Birth</label>
                    <span>19/06/1970</span>
                </div>
            </div>

            <!-- Green button "Proceed to Cast Vote" linking to CastVote.aspx -->
            <a href='<%=ResolveUrl("~/CastVote.aspx")%>' id="btnProceedVote" class="btn-auth-submit">Proceed to Cast Vote</a>

        </div>
    </div>
</asp:Content>
