<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SuccessStories.ascx.cs" Inherits="DummyWeb.UserControls.SuccessStories" %>

<%--<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SuccessStories.ascx.cs" 
            Inherits="EduVantage_WebForms.UserControls.SuccessStories" %>--%>

<section class="py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold mb-3">Success Stories</h2>
            <p class="lead text-muted">Hear from our students and parents</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rptTestimonials" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card h-100 border-0 shadow-sm">
                            <div class="card-body p-4">
                                <div class="d-flex align-items-center mb-4">
                                    <img src='<%# Eval("Avatar") %>' 
                                         class="rounded-circle me-3" 
                                         width="60" height="60" 
                                         alt='<%# Eval("Name") %>'>
                                    <div>
                                        <h6 class="fw-bold mb-0"><%# Eval("Name") %></h6>
                                        <span class="badge bg-primary"><%# Eval("Role") %></span>
                                        <%# Eval("Achievement") != null ? 
                                            "<div class=\"small text-success fw-bold mt-1\">" + Eval("Achievement") + "</div>" : "" %>
                                    </div>
                                </div>
                                <p class="text-muted"><i class="bi bi-quote text-primary opacity-25 me-2"></i><%# Eval("Content") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>