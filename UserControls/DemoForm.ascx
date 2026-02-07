<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DemoForm.ascx.cs" Inherits="DummyWeb.UserControls.DemoForm" %>


<section id="demo" class="py-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <h2 class="display-5 fw-bold mb-4">Book Your Free Demo Class</h2>
                <p class="lead text-muted mb-4">Experience our live teaching methodology. No credit card required.</p>
                
                <div class="row g-4">
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-check-circle-fill text-primary"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold">Free Trial Class</h6>
                                <p class="text-muted small">Experience our teaching first</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-check-circle-fill text-primary"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold">Personalized Plan</h6>
                                <p class="text-muted small">Get a custom study roadmap</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-check-circle-fill text-primary"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold">Expert Consultation</h6>
                                <p class="text-muted small">Discuss with academic counselor</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-6">
                        <div class="d-flex align-items-start">
                            <div class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                <i class="bi bi-check-circle-fill text-primary"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold">No Obligation</h6>
                                <p class="text-muted small">Cancel anytime during trial</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="card border-0 shadow-lg">
                    <div class="card-body p-4 p-lg-5">
                        <asp:Panel ID="pnlForm" runat="server">
                            <div class="mb-3">
                                <label class="form-label fw-bold">Full Name</label>
                                <asp:TextBox ID="txtName" runat="server" 
                                           CssClass="form-control form-control-lg" 
                                           placeholder="Enter your name" 
                                           required="true"></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" 
                                           CssClass="form-control form-control-lg" 
                                           TextMode="Email" 
                                           placeholder="you@example.com" 
                                           required="true"></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Phone Number</label>
                                <asp:TextBox ID="txtPhone" runat="server" 
                                           CssClass="form-control form-control-lg" 
                                           TextMode="Phone" 
                                           placeholder="+91 9876543210" 
                                           required="true"></asp:TextBox>
                            </div>
                            
                            <div class="mb-3">
                                <label class="form-label fw-bold">Student's Class</label>
                                <asp:DropDownList ID="ddlClass" runat="server" 
                                                CssClass="form-select form-select-lg">
                                    <asp:ListItem Text="Select Class" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Class 6-8 (Foundation)" Value="6-8"></asp:ListItem>
                                    <asp:ListItem Text="Class 9-10 (Boards)" Value="9-10"></asp:ListItem>
                                    <asp:ListItem Text="Class 11-12 (JEE/NEET)" Value="11-12"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            
<%--                            <div class="mb-3">
                                <label class="form-label fw-bold">Preferred Demo Time</label>
                                <asp:DropDownList ID="ddlTime" runat="server" 
                                                CssClass="form-select form-select-lg">
                                    <asp:ListItem Text="Select Time Slot" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Morning (9 AM - 12 PM)" Value="morning"></asp:ListItem>
                                    <asp:ListItem Text="Afternoon (12 PM - 4 PM)" Value="afternoon"></asp:ListItem>
                                    <asp:ListItem Text="Evening (4 PM - 8 PM)" Value="evening"></asp:ListItem>
                                </asp:DropDownList>
                            </div>--%>
                            
                            <div class="mb-4">
                                <div class="form-check">
                                    <asp:CheckBox ID="cbAgree" runat="server" 
                                                CssClass="form-check-input" 
                                                required="true" />
                                    <label class="form-check-label text-muted">
                                        I agree to receive updates via WhatsApp & Email
                                    </label>
                                </div>
                            </div>
                            
                            <asp:Button ID="btnSubmit" runat="server" 
                                       Text="Book Free Demo Class" 
                                       CssClass="btn btn-primary btn-lg w-100 py-3 fw-bold"
                                        />
                        </asp:Panel>
                        
                        <asp:Panel ID="pnlSuccess" runat="server" Visible="false">
                            <div class="text-center py-5">
                                <div class="bg-success bg-opacity-10 p-4 rounded-circle d-inline-block mb-4">
                                    <i class="bi bi-check-circle-fill text-success fs-1"></i>
                                </div>
                                <h3 class="fw-bold mb-3">Demo Class Booked Successfully!</h3>
                                <p class="text-muted mb-4">
                                    We've sent the schedule details to <asp:Label ID="lblEmail" runat="server" CssClass="fw-bold"></asp:Label>.
                                    Our academic counselor will call you within 30 minutes.
                                </p>
                                <asp:Button ID="btnBookAnother" runat="server" 
                                           Text="Book Another Demo" 
                                           CssClass="btn btn-outline-primary"
                                           />
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>