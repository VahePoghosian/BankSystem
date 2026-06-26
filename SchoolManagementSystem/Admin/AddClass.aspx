<%@ Page Title="Add Class" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="SchoolManagementSystem.Admin.AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Էջի ընդհանուր ոճը */
        .container-wrapper {
            padding: 40px 20px;
            background-color: #f8f9fa;
            min-height: 80vh;
        }

        /* Քարտի (Card) ոճը */
        .custom-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border: none;
            padding: 30px;
            max-width: 600px;
            margin: 0 auto;
        }

        .card-title {
            color: #333;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 25px;
            border-bottom: 2px solid #5558C9;
            display: inline-block;
            padding-bottom: 5px;
        }

        /* Մուտքագրման դաշտերի ոճը */
        .form-control {
            border-radius: 10px;
            padding: 12px 15px;
            border: 1px solid #ced4da;
            margin-top: 8px;
        }

        .form-control:focus {
            border-color: #5558C9;
            box-shadow: 0 0 0 0.2rem rgba(85, 88, 201, 0.25);
        }

        /* Կոճակի ոճը */
        .btn-add {
            background-color: #5558C9;
            border: none;
            color: white;
            padding: 12px;
            border-radius: 10px;
            font-weight: 600;
            transition: all 0.3s ease;
            width: 100%;
            margin-top: 20px;
        }

        .btn-add:hover {
            background-color: #4446a3;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(85, 88, 201, 0.4);
        }

        /* Հաղորդագրության ոճը */
        .msg-label {
            font-size: 14px;
            margin-bottom: 15px;
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-wrapper">
        <div class="container">
            <div class="custom-card">
                
                <h1 class="card-title">Add New Class</h1>
                
                <asp:Label ID="lblMsg" runat="server" CssClass="msg-label"></asp:Label>

                <div class="form-group">
                    <label for="txtClass" style="font-weight: 600; color: #555;">Class Name</label>
                    <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" 
                        placeholder="e.g. 10th Standard or Grade A" required>
                    </asp:TextBox>
                </div>

                <asp:Button ID="btnAdd" runat="server" CssClass="btn-add" 
                    Text="Add Class" OnClick="btnAdd_Click" />

            </div>
        </div>
    </div>
</asp:Content>