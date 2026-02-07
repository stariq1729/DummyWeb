<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogSection.ascx.cs" Inherits="DummyWeb.UserControls.BlogSection" %>


<section id="blog" class="py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold mb-3">Latest from Our Blog</h2>
            <p class="lead text-muted">Study tips, exam strategies & educational insights</p>
        </div>
        
        <div class="row g-4">
            <asp:Repeater ID="rptBlogPosts" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">
                        <div class="card border-0 shadow-sm h-100">
                            <img src='<%# Eval("Image") %>' 
                                 class="card-img-top" 
                                 alt='<%# Eval("Title") %>'
                                 style="height: 200px; object-fit: cover;">
                            <div class="card-body p-4">
                                <span class="badge bg-primary mb-3"><%# Eval("Category") %></span>
                                <h5 class="fw-bold"><%# Eval("Title") %></h5>
                                <p class="text-muted"><%# Eval("Excerpt") %></p>
                                <div class="d-flex justify-content-between align-items-center mt-4">
                                    <div class="d-flex align-items-center">
                                        <i class="bi bi-clock text-muted me-2"></i>
                                        <span class="text-muted small"><%# Eval("ReadTime") %></span>
                                    </div>
                                    <asp:Button ID="btnReadMore" runat="server" 
                                               Text="Read More" 
                                               CssClass="btn btn-sm btn-outline-primary"
                                               CommandArgument='<%# Eval("Id") %>'
                                                />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        
        <div class="text-center mt-5">
            <asp:Button ID="btnViewAll" runat="server" 
                       Text="View All Articles" 
                       CssClass="btn btn-primary btn-lg"
                        />
        </div>
    </div>
</section>