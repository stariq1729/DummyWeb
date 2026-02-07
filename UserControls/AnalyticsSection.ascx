<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AnalyticsSection.ascx.cs" Inherits="DummyWeb.UserControls.AnalyticsSection" %>


<section class="py-5 bg-light">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb-4 mb-lg-0">
                <h2 class="display-5 fw-bold mb-4">AI-Driven Progress Analytics</h2>
                <p class="lead text-muted mb-4">Track every aspect of your learning journey with detailed insights</p>
                
                <div class="row g-4">
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-speedometer2 text-primary fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold">Performance Heatmaps</h5>
                                <p class="text-muted small">Visualize strong and weak areas</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-success bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-bar-chart-line text-success fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold">Progress Tracking</h5>
                                <p class="text-muted small">Daily, weekly & monthly reports</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-info bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-bullseye text-info fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold">Goal Setting</h5>
                                <p class="text-muted small">Personalized study targets</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-warning bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-trophy text-warning fs-4"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold">Comparative Analysis</h5>
                                <p class="text-muted small">Rank among peers</p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="mt-5">
                    <asp:Button ID="btnViewSample" runat="server" 
                               Text="View Sample Report" 
                               CssClass="btn btn-primary btn-lg"
                                />
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="card border-0 shadow-lg">
                    <div class="card-body p-4">
                        <!-- Sample Analytics Chart -->
                        <div class="text-center mb-4">
                            <h5 class="fw-bold">Sample Progress Report</h5>
                            <p class="text-muted">Physics - Last 30 Days</p>
                        </div>
                        
                        <div class="progress-stack mb-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Mechanics</span>
                                <span class="fw-bold">85%</span>
                            </div>
                            <div class="progress" style="height: 20px;">
                                <div class="progress-bar bg-success" style="width: 85%"></div>
                            </div>
                        </div>
                        
                        <div class="progress-stack mb-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Optics</span>
                                <span class="fw-bold">65%</span>
                            </div>
                            <div class="progress" style="height: 20px;">
                                <div class="progress-bar bg-info" style="width: 65%"></div>
                            </div>
                        </div>
                        
                        <div class="progress-stack mb-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Electromagnetism</span>
                                <span class="fw-bold">45%</span>
                            </div>
                            <div class="progress" style="height: 20px;">
                                <div class="progress-bar bg-warning" style="width: 45%"></div>
                            </div>
                        </div>
                        
                        <div class="progress-stack mb-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span>Modern Physics</span>
                                <span class="fw-bold">30%</span>
                            </div>
                            <div class="progress" style="height: 20px;">
                                <div class="progress-bar bg-danger" style="width: 30%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>