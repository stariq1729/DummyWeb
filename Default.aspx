<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DummyWeb.Default" %>


<%@ Register Src="~/UserControls/Hero.ascx" TagName="Hero" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/PlatformShowcase.ascx" TagName="PlatformShowcase" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/CourseSection.ascx" TagName="CourseSection" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/SuccessStories.ascx" TagName="SuccessStories" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/StudyHub.ascx" TagName="StudyHub" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/AnalyticsSection.ascx" TagName="AnalyticsSection" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/FacultySection.ascx" TagName="FacultySection" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/BlogSection.ascx" TagName="BlogSection" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/DemoForm.ascx" TagName="DemoForm" TagPrefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .marquee-container {
            background: linear-gradient(135deg, #4f46e5 0%, #4338ca 100%);
            overflow: hidden;
            white-space: nowrap;
        }
        .marquee-content {
            display: inline-block;
            animation: marquee 30s linear infinite;
            padding: 1rem 0;
        }
        @keyframes marquee {
            0% { transform: translateX(0); }
            100% { transform: translateX(-50%); }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <uc:Hero runat="server" ID="HeroControl" />
    
    <!-- Dynamic Stats Marquee -->
    <div class="marquee-container text-white">
        <div class="marquee-content">
            <asp:Repeater ID="StatsRepeater" runat="server">
                <ItemTemplate>
                    <span class="mx-5"><i class="bi bi-dot me-1"></i> <%# Container.DataItem %></span>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    
    <!-- Platform Features -->
    <uc:PlatformShowcase runat="server" ID="PlatformShowcaseControl" />
    
    <!-- Course Sections -->
    <uc:CourseSection runat="server" ID="CourseSectionControl" />
   
    <uc:SuccessStories runat="server" ID="SuccessStoriesControl" />
    
    <!-- Other Sections -->
   
    <uc:StudyHub runat="server" ID="StudyHubControl" />
    <uc:AnalyticsSection runat="server" ID="AnalyticsControl" />
    <uc:FacultySection runat="server" ID="FacultyControl" />
    <uc:BlogSection runat="server" ID="BlogControl" />
    <uc:DemoForm runat="server" ID="DemoFormControl" />
</asp:Content>