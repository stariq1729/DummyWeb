<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Hero.ascx.cs" Inherits="DummyWeb.UserControls.Hero" %>


<%--<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Hero.ascx.cs" 
            Inherits="EduVantage_WebForms.UserControls.Hero" %>--%>

<section class="hero-section bg-gradient py-5 py-lg-7">
    <div class="container">
        <div class="row align-items-center">
            <!-- Left Column: Text Content -->
            <div class="col-lg-6 mb-5 mb-lg-0">
                <!-- Badge -->
                <div class="d-inline-flex align-items-center bg-primary bg-opacity-10 text-primary px-3 py-1 rounded-pill mb-4">
                    <i class="bi bi-star-fill me-2"></i>
                    <span class="fw-bold">India's #1 Live Learning Platform</span>
                </div>
                
                <!-- Main Heading -->
                <h1 class="display-4 fw-bold mb-4">
                    Live Learning That <span class="text-primary">Actually Works</span>
                </h1>
                
                <!-- Subtitle -->
                <p class="lead text-muted mb-5">
                    India's only platform with live classes, structured curriculum, 
                    and AI-driven analytics for K-12, JEE, NEET & competitive exams. 
                    Join 500,000+ successful students.
                </p>
                
                <!-- CTA Buttons -->
                <div class="d-flex flex-wrap gap-3 mb-5">
                    <asp:Button ID="btnFreeDemo" runat="server" 
                               CssClass="btn btn-primary btn-lg px-5 py-3 fw-bold" 
                               Text="Start Free Trial"
                                />
                    
                    <asp:Button ID="btnWatchDemo" runat="server" 
                               CssClass="btn btn-outline-primary btn-lg px-5 py-3 fw-bold" 
                               Text="Watch Demo"
                                />
                </div>
                
                <!-- Trust Indicators -->
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="d-flex align-items-center">
                            <div class="bg-success bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-award-fill text-success fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold mb-0">Award Winning</h5>
                                <small class="text-muted">Best EdTech 2023</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="d-flex align-items-center">
                            <div class="bg-info bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-people-fill text-info fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold mb-0">500K+ Students</h5>
                                <small class="text-muted">Trusted Platform</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="d-flex align-items-center">
                            <div class="bg-warning bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-clock-fill text-warning fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold mb-0">24/7 Support</h5>
                                <small class="text-muted">Live Doubt Solving</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Right Column: Hero Image/Illustration -->
            <div class="col-lg-6">
                <div class="position-relative">
                    <!-- Main Hero Image -->
<%--                    <div class="card border-0 shadow-lg overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                             alt="Students Learning Online" 
                             class="img-fluid rounded-3" />
                    </div>--%>
                    
                    <!-- Floating Stats Card -->
                    <div class="position-absolute top-0 start-0 translate-middle-y bg-white shadow-lg rounded-3 p-3 d-none d-md-block" 
                         style="width: 180px; margin-left: -50px;">
                        <div class="d-flex align-items-center">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-graph-up-arrow text-primary"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold mb-0">94% Success Rate</h6>
                                <small class="text-muted">In Board Exams</small>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Floating Live Class Indicator -->
<%--                    <div class="position-absolute bottom-0 end-0 translate-middle-y bg-danger text-white rounded-pill px-4 py-2 d-none d-md-block"
                         style="margin-bottom: -20px;">
                        <div class="d-flex align-items-center">
                            <div class="p-1 me-2">
                                <div class="live-pulse"></div>
                            </div>
                            <span class="fw-bold">Live Class Now</span>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Inline Styles for Hero Section -->
<style>
    .hero-section {
        background: linear-gradient(135deg, #f8fafc 0%, #e0e7ff 100%);
        position: relative;
        overflow: hidden;
    }
    
    .hero-section::before {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        width: 40%;
        height: 100%;
        background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><path fill="%234f46e5" fill-opacity="0.03" d="M0,0 L100,0 L100,100 Q50,80 0,100 Z"></path></svg>');
        background-size: cover;
        z-index: 0;
    }
    
    .live-pulse {
        width: 12px;
        height: 12px;
        background-color: white;
        border-radius: 50%;
        position: relative;
        animation: pulse 1.5s infinite;
    }
    
    @@keyframes pulse {
        0% {
            box-shadow: 0 0 0 0 rgba(255, 255, 255, 0.7);
        }
        70% {
            box-shadow: 0 0 0 10px rgba(255, 255, 255, 0);
        }
        100% {
            box-shadow: 0 0 0 0 rgba(255, 255, 255, 0);
        }
    }
    
    .hero-section * {
        position: relative;
        z-index: 1;
    }
</style>