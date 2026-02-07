<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="DummyWeb.UserControls.Footer" %>

<%--<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" 
            Inherits="EduVantage_WebForms.UserControls.Footer" %>--%>

<footer class="bg-dark text-white pt-5 pb-3">
    <div class="container">
        <div class="row">
            <!-- Brand & Description -->
            <div class="col-lg-4 mb-4">
                <div class="d-flex align-items-center mb-3">
                    <i class="bi bi-mortarboard-fill fs-3 text-primary me-2"></i>
                    <h3 class="h4 fw-bold mb-0">EduVantage</h3>
                </div>
                <p class="text-light mb-4">
                    India's premier live learning platform for K-12 and competitive exams. 
                    Transforming education through interactive classes, AI-driven analytics, 
                    and personalized mentorship.
                </p>
                
                <!-- App Download Badges -->
                <div class="d-flex gap-3 mb-4">
                    <a href="#" class="btn btn-outline-light btn-sm d-flex align-items-center">
                        <i class="bi bi-google-play me-2"></i>Google Play
                    </a>
                    <a href="#" class="btn btn-outline-light btn-sm d-flex align-items-center">
                        <i class="bi bi-apple me-2"></i>App Store
                    </a>
                </div>
                
                <!-- Social Links -->
                <div class="d-flex gap-3">
                    <a href="#" class="text-white fs-5"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="text-white fs-5"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="text-white fs-5"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="text-white fs-5"><i class="bi bi-linkedin"></i></a>
                    <a href="#" class="text-white fs-5"><i class="bi bi-youtube"></i></a>
                </div>
            </div>

            <!-- Quick Links -->
            <div class="col-lg-2 col-md-4 mb-4">
                <h5 class="fw-bold mb-4 text-primary">Products</h5>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="#courses" class="text-white-50 text-decoration-none">Live Classes</a></li>
                    <li class="mb-2"><a href="#study-hub" class="text-white-50 text-decoration-none">Study Hub</a></li>
                    <li class="mb-2"><a href="#tests" class="text-white-50 text-decoration-none">Test Series</a></li>
                    <li class="mb-2"><a href="#ncert" class="text-white-50 text-decoration-none">NCERT Solutions</a></li>
                    <li class="mb-2"><a href="#analytics" class="text-white-50 text-decoration-none">AI Analytics</a></li>
                </ul>
            </div>

            <!-- Company -->
            <div class="col-lg-2 col-md-4 mb-4">
                <h5 class="fw-bold mb-4 text-primary">Company</h5>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="/about" class="text-white-50 text-decoration-none">About Us</a></li>
                    <li class="mb-2"><a href="/careers" class="text-white-50 text-decoration-none">Careers</a></li>
                    <li class="mb-2"><a href="/blog" class="text-white-50 text-decoration-none">Blog</a></li>
                    <li class="mb-2"><a href="/press" class="text-white-50 text-decoration-none">Press</a></li>
                    <li class="mb-2"><a href="/contact" class="text-white-50 text-decoration-none">Contact Us</a></li>
                </ul>
            </div>

            <!-- Legal & Support -->
            <div class="col-lg-2 col-md-4 mb-4">
                <h5 class="fw-bold mb-4 text-primary">Support</h5>
                <ul class="list-unstyled">
                    <li class="mb-2"><a href="/help" class="text-white-50 text-decoration-none">Help Center</a></li>
                    <li class="mb-2"><a href="/faq" class="text-white-50 text-decoration-none">FAQ</a></li>
                    <li class="mb-2"><a href="/privacy" class="text-white-50 text-decoration-none">Privacy Policy</a></li>
                    <li class="mb-2"><a href="/terms" class="text-white-50 text-decoration-none">Terms of Service</a></li>
                    <li class="mb-2"><a href="/refund" class="text-white-50 text-decoration-none">Refund Policy</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="col-lg-2 mb-4">
                <h5 class="fw-bold mb-4 text-primary">Contact</h5>
                <ul class="list-unstyled">
                    <li class="mb-3 d-flex align-items-start">
                        <i class="bi bi-geo-alt text-primary me-2 mt-1"></i>
                        <span class="text-white-50 small">EduVantage HQ,<br>Tech Park, Delhi 110001</span>
                    </li>
                    <li class="mb-3 d-flex align-items-center">
                        <i class="bi bi-telephone text-primary me-2"></i>
                        <a href="tel:+911800123456" class="text-white-50 text-decoration-none">1800-123-456</a>
                    </li>
                    <li class="mb-3 d-flex align-items-center">
                        <i class="bi bi-envelope text-primary me-2"></i>
                        <a href="mailto:support@eduvantage.com" class="text-white-50 text-decoration-none">support@eduvantage.com</a>
                    </li>
                </ul>
                
                <!-- Newsletter Signup -->
                <div class="mt-4">
                    <h6 class="fw-bold mb-2">Stay Updated</h6>
                    <div class="input-group input-group-sm">
                        <asp:TextBox ID="txtNewsletter" runat="server" 
                                   CssClass="form-control" 
                                   placeholder="Your email"
                                   TextMode="Email"></asp:TextBox>
                        <asp:Button ID="btnSubscribe" runat="server" 
                                  Text="→" 
                                  CssClass="btn btn-primary"
                                  OnClick="btnSubscribe_Click" />
                    </div>
                    <asp:Label ID="lblSubscribeMessage" runat="server" 
                             CssClass="small text-success mt-1 d-block"
                             Visible="false"></asp:Label>
                </div>
            </div>
        </div>

        <!-- Divider -->
        <hr class="border-secondary my-4">

        <!-- Bottom Row: Copyright & Trust Badges -->
        <div class="row align-items-center">
            <div class="col-md-6 mb-3 mb-md-0">
                <p class="mb-0 text-white-50 small">
                    &copy; <%= DateTime.Now.Year %> EduVantage Learning Solutions Pvt. Ltd. All rights reserved.
                </p>
            </div>
            
            <div class="col-md-6 text-md-end">
                <!-- Trust Badges -->
                <div class="d-flex justify-content-md-end gap-4">
                    <div class="text-center">
                        <i class="bi bi-shield-check text-success d-block fs-4"></i>
                        <span class="small text-white-50">SSL Secure</span>
                    </div>
                    <div class="text-center">
                        <i class="bi bi-credit-card text-primary d-block fs-4"></i>
                        <span class="small text-white-50">Safe Payments</span>
                    </div>
                    <div class="text-center">
                        <i class="bi bi-award text-warning d-block fs-4"></i>
                        <span class="small text-white-50">Award Winning</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>