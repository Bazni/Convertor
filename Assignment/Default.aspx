<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1 class="display-4" style="text-align: center; margin-top: 40px"><i class="fas fa-fw fa-home text-primary"></i>Home</h1>
        <div style="margin-top: 55px;">
            <div class="row animated--grow-in" style="margin-bottom: 50px; font-size: xx-large;">
                <div class="col-xl-6 col-lg-6">
                    <div class="card bg-danger text-white shadow">
                        <a href="Length.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-ruler"></i> Length
                      <div class="text-white-50 small">Meters, Inches, Feet, Kilometers, Light year, Parsec</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="card bg-success text-white shadow">
                        <a href="Weight.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-weight-hanging"></i> Weight
                      <div class="text-white-50 small">Grams, Tons, Pounds, Carats, Centers, Stones</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row animated--grow-in" style="margin-bottom: 50px; font-size: xx-large;">
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-area text-white shadow">
                        <a href="Area.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-ruler-combined"></i> Area
                      <div class="text-white-50 small">Kilometers², Meters², Decimeters², Milimeters², Hectares, Ares</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-warning text-white shadow">
                        <a href="Currency.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-money-bill-alt"></i> Currency
                      <div class="text-white-50 small">USD, EUR, MYR, CFP, BTC, ETH</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row animated--grow-in" style="margin-bottom: 50px; font-size: xx-large;">
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-volume text-white shadow">
                        <a href="Volume.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-glass-whiskey"></i> Volume
                      <div class="text-white-50 small">Km/h, m/s, Mach, Light speed, Miles/h, Miles/s</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-info text-white shadow">
                        <a href="Speed.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-tachometer-alt"></i> Speed
                      <div class="text-white-50 small">Km/h, m/s, Mach, Light speed, Miles/h, Miles/s</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
             <div class="row animated--grow-in" style="margin-bottom: 50px; font-size: xx-large;">
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-time text-white shadow">
                        <a href="Time.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-clock"></i> Time
                      <div class="text-white-50 small">Miliseconds, Seconds, Minutes, Hours, Days, Weeks, Months, Years</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-6">
                    <div class="card bg-data-storage text-white shadow">
                        <a href="DataStorage.aspx" class="text-white" style="text-decoration: none">
                            <div class="card-body">
                                <i class="fas fa-fw fa-server"></i> Data Storage
                      <div class="text-white-50 small">Bits, Bytes, Kilobits, Kilobytes, Megabits, Megabytes, ...</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
