<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Assignment.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 50px">
        <div class="col-xl-1 col-lg-1">
        </div>
        <div class="col-xl-10 col-lg-10">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h2 class="m-0 font-weight-bold text-primary">About</h2>
                </div>
                <div class="card-body">
                    <div class="text-center">
                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                    </div>
                    <div style="margin-left: 20px">
                        <div style="text-align: center; margin-bottom: 40px;">
                            <p>
                                This converter application is a school project from Web Application Developpment class at UniKL.<br />
                                It have been developped with ASP.NET framwork using Bootstrap 4 and FontAwesome 5.
                            </p>
                            <p>Svg illustrations come from <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a> website.</p>
                        </div>
                        <h4><a target="_blank" rel="nofollow" href="/pdf/Assignment1.pdf">View the assignment soft copy &rarr;</a></h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-1 col-lg-1">
        </div>
    </div>
</asp:Content>
