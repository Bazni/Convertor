<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataStorage.aspx.cs" Inherits="Assignment.DataStorage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h1 class="display-4" style="text-align: center; margin-top: 40px"><i class="fas fa-fw fa-server text-data-storage"></i> Data Storage</h1>
        <div class="row animated--grow-in" style="margin-top: 55px;">
            <div class="col-xl-5 col-lg-5">
                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h4 class="m-0 font-weight-bold text-data-storage">From</h4>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-data-storage dropdown-toggle"
                            Style="top: 37px; left: 351px; height: 38px; width: 170px;">
                            <asp:ListItem>Bits</asp:ListItem>
                            <asp:ListItem>Bytes</asp:ListItem>
                            <asp:ListItem>Kilobits</asp:ListItem>
                            <asp:ListItem>Kilobytes</asp:ListItem>
                            <asp:ListItem>Megabits</asp:ListItem>
                            <asp:ListItem>Megabytes</asp:ListItem>
                            <asp:ListItem>Gigabits</asp:ListItem>
                            <asp:ListItem>Gigabytes</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="card-body converter">
                        <asp:TextBox ID="TBFrom" runat="server" type="number" CssClass="form-control-lg bg-gray-200 border-0" OnKeyPress="Convert"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2">
                <div class="row animated--grow-in" style="margin-top: 55px; margin-bottom: 79px;">
                    <div class="col-xl col-lg" style="text-align: center">
                        <button runat="server" id="Button1" class="btn btn-data-storage btn-circle btn-lg" onserverclick="Convert">
                            <i class="fas fa-angle-double-right"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-lg-5">
                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h4 class="m-0 font-weight-bold text-data-storage">To</h4>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-data-storage dropdown-toggle"
                            Style="top: 37px; left: 351px; height: 38px; width: 170px;">
                            <asp:ListItem>Bits</asp:ListItem>
                            <asp:ListItem>Bytes</asp:ListItem>
                            <asp:ListItem>Kilobits</asp:ListItem>
                            <asp:ListItem>Kilobytes</asp:ListItem>
                            <asp:ListItem>Megabits</asp:ListItem>
                            <asp:ListItem>Megabytes</asp:ListItem>
                            <asp:ListItem>Gigabits</asp:ListItem>
                            <asp:ListItem>Gigabytes</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="card-body converter">
                        <asp:Label ID="Result" runat="server" Text="0.0" CssClass="m-0 font-weight-bold form-control-lg" Style="font-size: 2.45rem"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
