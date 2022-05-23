<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laboratorio11._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Ingreso de Alumnos</h1>
        <p>Universidad</p>
        <p>
            <asp:DropDownList ID="DropDownListUniversidad" runat="server">
                <asp:ListItem>Mesoamericana</asp:ListItem>
                <asp:ListItem>Landivar</asp:ListItem>
                <asp:ListItem>San Carlos</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>Alumno</p>
        <p>Nombre</p>
        <p>
            <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
        </p>
        <p>Apellido</p>
        <p>
            <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
        </p>
        <p>Carné</p>
        <p>
            <asp:TextBox ID="TextBoxCarne" runat="server"></asp:TextBox>
        </p>
        <p>Notas</p>
        <p>
            <asp:Button ID="ButtonGuardarNotas" runat="server" Text="Ingresar nota" OnClick="ButtonGuardarNotas_Click" />
        </p>
        <p>Curso</p>
        <p>
            <asp:TextBox ID="TextBoxCurso" runat="server"></asp:TextBox>
        </p>
        <p>Punteo</p>
        <p>
            <asp:TextBox ID="TextBoxPunteo" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>
        <p>
            <asp:Button ID="ButtonGuardarAlumno" runat="server" Text="Ingresar datos del alumno" OnClick="ButtonGuardarAlumno_Click" />
        </p>
        <p>
            <asp:Button ID="ButtonGuardarUniversidad" runat="server" Text="Guardar universidad" OnClick="ButtonGuardarUniversidad_Click" />
        </p>
    </div>

</asp:Content>
