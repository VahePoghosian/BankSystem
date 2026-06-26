<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master"
    AutoEventWireup="true"
    CodeBehind="AdminHome.aspx.cs"
    Inherits="SchoolManagementSystem.Admin.AdminHome" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="home_banner">

        <div class="overlay">

            <div class="container-fluid p-5">

                <asp:Label ID="lblMsg"
                    runat="server">
                </asp:Label>

                <h1 class="home_title">
                    Admin Home Page
                </h1>

                <p class="home_text">
                    Welcome to School Management System
                </p>

            </div>

        </div>

    </div>

</asp:Content>