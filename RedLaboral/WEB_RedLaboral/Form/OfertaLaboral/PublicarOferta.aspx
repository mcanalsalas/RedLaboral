﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PublicarOferta.aspx.cs" Inherits="Form_OfertaLaboral_PublicarOferta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Título:</td>
            <td colspan="3">
                <asp:TextBox ID="txtTitulo" runat="server" Width="496px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Jornada:</td>
            <td>
                <asp:DropDownList ID="ddlJornada" runat="server">
                    <asp:ListItem Text="PROYECTO DE 6 MESES" Value="1" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="PROYECTO DE UN AÑO" Value="2"></asp:ListItem>
                    <asp:ListItem Text="PROYECTO DE DOS AÑO" Value="3"></asp:ListItem>
                    <asp:ListItem Text="PROYECTO DE TRES AÑO" Value="4"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>Tipo de contrato:</td>
            <td>
                <asp:DropDownList ID="ddlTipoContrato" runat="server">
                    <asp:ListItem Text="POR HORAS" Value="1" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="TIEMPO PARTIDO" Value="2"></asp:ListItem>
                    <asp:ListItem Text="TIEMPO PARCIAL" Value="3"></asp:ListItem>
                    <asp:ListItem Text="TIEMPO COMPLETO" Value="4"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Puesto:</td>
            <td>
                <asp:DropDownList ID="ddlPuesto" runat="server">
                    <asp:ListItem Text="Almacenero" Value="1" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Asistente personal" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Auxiliar de servicios" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Barman" Value="4"></asp:ListItem>
                </asp:DropDownList></td>
            <td>Lugar:</td>
            <td>
                <asp:TextBox ID="txtLugar" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Descripción:</td>
            <td colspan="3">
                <textarea id="txaDescripcion" cols="20" name="S1" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>Funciones:</td>
            <td colspan="3">
                <textarea id="txaFunciones" cols="20" name="S2" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>Requisitos:</td>
            <td colspan="3">
                <textarea id="txaRequisitos" cols="20" name="S3" rows="2"></textarea></td>
        </tr>
        <tr>
            <td>Competencias:</td>
            <td colspan="3">
                <textarea id="txaCompetencias" cols="20" name="S4" rows="2"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
            </td>
        </tr>
    </table>
</asp:Content>

