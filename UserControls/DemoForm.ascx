<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DemoForm.ascx.cs"
    Inherits="DummyWeb.UserControls.DemoForm" %>

<section id="demo" class="py-5">
    <div class="container">
        <div class="row align-items-center g-5">

            <!-- ================= LEFT SIDE (VERTICAL) ================= -->
            <div class="col-lg-6">
                <h1 class="fw-bold mb-3">Book Your Enquiry</h1>
                <p class="text-muted mb-4">
                    Experience our live teaching methodology with expert academic guidance.
                </p>

                <div class="d-flex flex-column gap-4">

                    <div class="d-flex align-items-start">
                        <i class="bi bi-check-circle-fill text-primary fs-5 me-3"></i>
                        <div>
                            <h6 class="fw-bold mb-1">Free Academic Enquiry</h6>
                            <p class="text-muted small mb-0">Understand the right learning path</p>
                        </div>
                    </div>

                    <div class="d-flex align-items-start">
                        <i class="bi bi-check-circle-fill text-primary fs-5 me-3"></i>
                        <div>
                            <h6 class="fw-bold mb-1">Curriculum-Specific Support</h6>
                            <p class="text-muted small mb-0">CBSE, ICSE, IB, IGCSE & more</p>
                        </div>
                    </div>

                    <div class="d-flex align-items-start">
                        <i class="bi bi-check-circle-fill text-primary fs-5 me-3"></i>
                        <div>
                            <h6 class="fw-bold mb-1">Subject-Focused Learning</h6>
                            <p class="text-muted small mb-0">Choose only the subjects you need</p>
                        </div>
                    </div>

                    <div class="d-flex align-items-start">
                        <i class="bi bi-check-circle-fill text-primary fs-5 me-3"></i>
                        <div>
                            <h6 class="fw-bold mb-1">No Obligation</h6>
                            <p class="text-muted small mb-0">Just enquire, no pressure to enroll</p>
                        </div>
                    </div>

                </div>
            </div>

            <!-- ================= RIGHT SIDE (ENQUIRY FORM) ================= -->
            <div class="col-lg-6">
                <div class="card border-0 shadow-lg">
                    <div class="card-body p-4 p-lg-5">

                        <asp:Panel ID="pnlForm" runat="server">

                            <!-- Row 1 -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">Student Name</label>
                                    <asp:TextBox ID="txtName" runat="server"
                                        CssClass="form-control form-control-lg"
                                        placeholder="Enter student name" />
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">Email ID</label>
                                    <asp:TextBox ID="txtEmail" runat="server"
                                        CssClass="form-control form-control-lg"
                                        TextMode="Email"
                                        placeholder="you@example.com" />
                                </div>
                            </div>

                            <!-- Row 2 -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">WhatsApp / Phone Number</label>
                                    <asp:TextBox ID="txtPhone" runat="server"
                                        CssClass="form-control form-control-lg"
                                        placeholder="+91 9876543210" />
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">Country</label>
                                    <asp:DropDownList ID="ddlCountry" runat="server"
                                        CssClass="form-select form-select-lg">
                                        <asp:ListItem Text="Select Country" Value="" />
                                        <asp:ListItem Text="India" />
                                        <asp:ListItem Text="USA" />
                                        <asp:ListItem Text="UK" />
                                        <asp:ListItem Text="Canada" />
                                        <asp:ListItem Text="Australia" />
                                        <asp:ListItem Text="Other" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <!-- Row 3 -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">Current Class / Grade</label>
                                    <!-- reused ORIGINAL ddlClass -->
                                    <asp:DropDownList ID="ddlClass" runat="server"
                                        CssClass="form-select form-select-lg">
                                        <asp:ListItem Text="Select Grade" Value="" />
                                        <asp:ListItem Text="Grade 8" />
                                        <asp:ListItem Text="Grade 9" />
                                        <asp:ListItem Text="Grade 10" />
                                        <asp:ListItem Text="Grade 11" />
                                        <asp:ListItem Text="Grade 12" />
                                    </asp:DropDownList>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-bold">Board / Curriculum</label>
                                    <asp:DropDownList ID="ddlBoard" runat="server"
                                        CssClass="form-select form-select-lg">
                                        <asp:ListItem Text="Select Board" Value="" />
                                        <asp:ListItem Text="CBSE" />
                                        <asp:ListItem Text="ICSE" />
                                        <asp:ListItem Text="IB" />
                                        <asp:ListItem Text="Cambridge" />
                                        <asp:ListItem Text="IGCSE" />
                                        <asp:ListItem Text="AP" />
                                        <asp:ListItem Text="A-Level" />
                                        <asp:ListItem Text="Other" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <!-- Subjects -->
                            <div class="mb-3">
                                <label class="form-label fw-bold">Subject Interested In</label>
                                <div class="row">
                                    <div class="col-md-4"><asp:CheckBox ID="chkMaths" runat="server" /> Maths</div>
                                    <div class="col-md-4"><asp:CheckBox ID="chkPhysics" runat="server" /> Physics</div>
                                    <div class="col-md-4"><asp:CheckBox ID="chkChemistry" runat="server" /> Chemistry</div>
                                    <div class="col-md-4"><asp:CheckBox ID="chkBiology" runat="server" /> Biology</div>
                                    <div class="col-md-4"><asp:CheckBox ID="chkEconomics" runat="server" /> Economics</div>
                                    <div class="col-md-4"><asp:CheckBox ID="chkEnglish" runat="server" /> English</div>
                                </div>
                            </div>

                            <!-- Start Time -->
                            <div class="mb-3">
                                <label class="form-label fw-bold">When do you want to start classes?</label>
                                <div class="d-flex gap-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="startTime" />
                                        <label class="form-check-label">Immediately</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="startTime" />
                                        <label class="form-check-label">Within 1 Month</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="startTime" />
                                        <label class="form-check-label">Just Enquiring</label>
                                    </div>
                                </div>
                            </div>

                            <!-- Agreement -->
                            <div class="mb-4">
                                <div class="form-check">
                                    <asp:CheckBox ID="cbAgree" runat="server"
                                        CssClass="form-check-input" />
                                    <label class="form-check-label text-muted">
                                        I agree to receive updates via WhatsApp & Email
                                    </label>
                                </div>
                            </div>

                            <asp:Button ID="btnSubmit" runat="server"
                                Text="Submit Enquiry"
                                CssClass="btn btn-primary btn-lg w-100 py-3 fw-bold" />

                        </asp:Panel>

                        <!-- SUCCESS PANEL (UNCHANGED) -->
                        <asp:Panel ID="pnlSuccess" runat="server" Visible="false">
                            <div class="text-center py-5">
                                <i class="bi bi-check-circle-fill text-success fs-1 mb-3"></i>
                                <h3 class="fw-bold mb-3">Enquiry Submitted Successfully!</h3>
                                <p class="text-muted mb-4">
                                    We’ve sent the details to
                                    <asp:Label ID="lblEmail" runat="server" CssClass="fw-bold"></asp:Label>.
                                </p>
                                <asp:Button ID="btnBookAnother" runat="server"
                                    Text="Book Another Enquiry"
                                    CssClass="btn btn-outline-primary" />
                            </div>
                        </asp:Panel>

                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
