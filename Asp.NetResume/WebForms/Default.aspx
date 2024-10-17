<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Asp.NetResume.WebForms.Default" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume - SADIK BERKAY KARADUMAN</title>

    <!-- Bootstrap core CSS -->
    <link href="../Web-Theme/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="../Web-Theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../Web-Theme/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">SADIK BERKAY KARADUMAN</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater8" runat="server">
                    <ItemTemplate>
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%#Eval("AboutImage")%>' alt="">
                    </ItemTemplate>
                </asp:Repeater>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#about">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#experience">Experience</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#education">Education</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#certificates">Certificates</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#languages">Languages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#interests">Interests</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid p-0">

        <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h1 class="mb-0">
                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("AboutName")%>'></asp:Label>

                            <span class="text-primary">
                                <asp:Label ID="lblSurname" runat="server" Text='<%#Eval("AboutSurname")%>'></asp:Label></span>
                        </h1>
                        <div class="subheading mb-5">
                            Address:
                            <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("AboutAddress")%>'></asp:Label>
                            &nbsp&nbsp&nbsp
                            Phone:
                            <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("AboutPhone")%>'></asp:Label>
                            <p></p>
                            <a href="mailto:sadikberkaykaraduman@gmail.com">E-mail:
                                <asp:Label ID="lblMail" runat="server" Text='<%#Eval("AboutMail")%>'></asp:Label></a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="lblAbout" runat="server" Text='<%#Eval("AboutContext")%>'></asp:Label>

                        </p>
                        <div class="social-icons">
                            <a href="<%#Eval("AboutLinkedin")%>">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="<%#Eval("AboutGitHub")%>">
                                <i class="fab fa-github"></i>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h2 class="mb-5">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("ExperienceTitle")%>'></asp:Label></h2>

                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("ExperienceSubtitle")%>'></asp:Label></h3>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("ExperienceDescription")%>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("ExperienceDate")%>'></asp:Label></span>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <div class="my-auto">
                        <h2 class="mb-5">Education</h2>

                        <div class="resume-item d-flex flex-column flex-md-row mb-5">
                            <div class="resume-content mr-auto">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("EducationSubtitle")%>'></asp:Label></h3>
                                <div class="subheading mb-3">
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("EducationTitle")%>'></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("EducationDescription")%>'></asp:Label>
                                </div>
                                <p>
                                    <asp:Label ID="Label8" runat="server" Text='<%#Eval("EducationAvg")%>'></asp:Label>
                                </p>
                            </div>
                            <div class="resume-date text-md-right">
                                <span class="text-primary">
                                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("EducationDate")%>'></asp:Label></span>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
            <h2 class="mb-5">Skills</h2>
            <asp:Repeater ID="Repeater4" runat="server">
                <ItemTemplate>
                    <div class="subheading mb-3">
                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("SkillTitle")%>'></asp:Label>
                    </div>
                    <ul class="fa-ul mb-0">
                        <li>
                            <i class="fa-li fa fa-check"></i>
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("SkillName")%>'></asp:Label></li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="certificates">
            <div class="my-auto">
                <h2 class="mb-5">Awards &amp; Certifications</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <i class="fa-li fa fa-trophy text-warning"></i>
                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("CertificateTitle")%>'></asp:Label></li>
                            -
                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("CertificateOrganization")%>'></asp:Label>
                            -
                    <asp:Label ID="Label14" runat="server" Text='<%#Eval("CertificateTime")%>'></asp:Label>
                            -
                            <a href='<%#Eval("CertificateUrl")%>' class="resume-date text-md-right">Certificate Url</a>
                            <span class="text-primary">
                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("CertificateDate")%>'></asp:Label></span>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="languages">
            <div class="my-auto">
                <h2 class="mb-5">Languages</h2>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <i class="fa-li fa fa-trophy text-warning"></i>
                                <asp:Label ID="Label15" runat="server" Text='<%#Eval("LanguageDescription")%>'></asp:Label></li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0">

        <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
            <div class="my-auto">
                <h2 class="mb-5">Interests</h2>
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <p>
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("InterestDescriptions")%>'></asp:Label>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="../Web-Theme/vendor/jquery/jquery.min.js"></script>
    <script src="../Web-Theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../Web-Theme/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../Web-Theme/js/resume.min.js"></script>

</body>

</html>

