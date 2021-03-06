﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Balloon_Shop.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="title">
		Log In
	</div>
	<p>
		Please enter your username and password.
		<asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink>
		if you don't have an account.
	</p>
	<asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
		<LayoutTemplate>
			<span class="failureNotification">
				<asp:Label ID="FailureText" runat="server"></asp:Label>
			</span>
			<asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" ValidationGroup="LoginUserValidationGroup" ShowSummary="false" />
			<div class="info">
				<fieldset class="login">
					<legend>Account Information</legend>
					<p>
						<asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">
							Username:
						</asp:Label>
						<asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
						<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" CssClass="failureNotification" ErrorMessage="Username is required" ToolTip="Username is required" ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
					</p>
					<p>
						<asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
						<asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" CssClass="failureNotification" ErrorMessage="Password is required" ToolTip="Password is required" ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
					</p>
					<p>
						<asp:CheckBox ID="RememberMe" runat="server" />
						<asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
					</p>
				</fieldset>
				<p class="submitButton">
					<asp:Button ID="LoginButton" runat="server" CssClass="button" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" />
				</p>
			</div>
		</LayoutTemplate>
	</asp:Login>
</asp:Content>
