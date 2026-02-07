<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="DummyWeb.UserControls.Header" %>
<header class="sticky-top bg-white shadow-sm">
    <nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
            <!-- Logo -->
            <a class="navbar-brand fw-bold fs-3 text-primary" href="/">
                <i class="bi bi-mortarboard-fill me-2"></i>EduVantage
            </a>
            
            <!-- Mobile Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                    data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <!-- Navigation Menu -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <asp:Repeater ID="NavRepeater" runat="server">
                        <ItemTemplate>
                            <li class="nav-item mx-2">
                                <a class="nav-link fw-medium" href='<%# Eval("Href") %>'>
                                    <%# Eval("Name") %>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                
                <!-- CTA Buttons -->
                <div class="d-flex gap-2">
                    <a href="/Login" class="btn btn-outline-primary">Login</a>
                    <a href="#demo" class="btn btn-primary">Enroll Now</a>
                </div>
            </div>
        </div>
    </nav>
</header>