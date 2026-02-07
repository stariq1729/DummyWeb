<%@ Control Language="C#" AutoEventWireup="true"
    CodeBehind="CourseSection.ascx.cs"
    Inherits="DummyWeb.UserControls.CourseSection" %>


<section id="courses" class="py-5">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold mb-3">Explore Our Courses</h2>
            <p class="lead text-muted">Structured programs for every learning need</p>
        </div>
        
        <!-- Course Categories -->
        <div class="mb-5">
            <ul class="nav nav-pills justify-content-center flex-wrap" id="courseTab" role="tablist">
                <asp:Repeater ID="rptCategories" runat="server">
                    <ItemTemplate>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link <%# Container.ItemIndex == 0 ? "active" : "" %>" 
                                    id="tab-<%# Container.ItemIndex %>" 
                                    data-bs-toggle="pill" 
                                    data-bs-target="#pane-<%# Container.ItemIndex %>" 
                                    type="button" 
                                    role="tab">
                                <%# Eval("Name") %>
                            </button>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        
        <!-- Courses Grid -->
        <div class="tab-content" id="courseTabContent">
            <asp:Repeater ID="rptCourseTabs" runat="server" OnItemDataBound="rptCourseTabs_ItemDataBound">
                <ItemTemplate>
                    <div class="tab-pane fade <%# Container.ItemIndex == 0 ? "show active" : "" %>" 
                         id="pane-<%# Container.ItemIndex %>" 
                         role="tabpanel">
                        <div class="row g-4">
                            <asp:Repeater ID="rptCourses" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="card course-card h-100 border-0 shadow-sm">
                                            <div class="position-relative">
                                                <img src='<%# Eval("ImageUrl") %>' 
                                                     class="card-img-top" 
                                                     alt='<%# Eval("Title") %>'
                                                     style="height: 200px; object-fit: cover;">
                                                <span class="badge bg-primary position-absolute top-0 start-0 m-3">
                                                    <%# Eval("Category") %>
                                                </span>
                                            </div>
                                            <div class="card-body">
                                                <h5 class="fw-bold"><%# Eval("Title") %></h5>
                                                <p class="text-muted mb-3"><%# Eval("Description") %></p>
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <span class="text-primary fw-bold"><%# Eval("Price") %></span>
                                                    <asp:Button ID="btnEnroll" runat="server" 
                                                               Text="View Details" 
                                                               CssClass="btn btn-outline-primary btn-sm"
                                                               CommandArgument='<%# Eval("Id") %>'
                                                               OnCommand="btnEnroll_Command"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

<style>
    .course-card {
        transition: transform 0.3s;
    }
    .course-card:hover {
        transform: translateY(-5px);
    }
    .nav-pills .nav-link.active {
        background-color: #4f46e5;
    }
</style>