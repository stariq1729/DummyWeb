<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FacultySection.ascx.cs" Inherits="DummyWeb.UserControls.FacultySection" %>


<section class="py-5">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold mb-3">Meet Our Expert Faculty</h2>
            <p class="lead text-muted">Learn from IITians, Doctors & Subject Matter Experts</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rptFaculty" runat="server">
                <ItemTemplate>
                    <div class="col-lg-3 col-md-6">
                        <div class="card border-0 shadow-sm h-100">
                            <div class="card-body p-4 text-center">
                                <img src='<%# Eval("Image") %>' 
                                     class="rounded-circle mb-4" 
                                     width="120" height="120"
                                     alt='<%# Eval("Name") %>'
                                     style="object-fit: cover;">
                                <h5 class="fw-bold mb-2"><%# Eval("Name") %></h5>
                                <p class="text-primary fw-bold mb-3"><%# Eval("Subject") %></p>
                                <p class="text-muted small mb-3"><%# Eval("Experience") %></p>
                                <div class="bg-light p-3 rounded">
                                    <p class="text-muted mb-0 small"><i class="bi bi-mortarboard-fill text-primary me-2"></i><%# Eval("Education") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>