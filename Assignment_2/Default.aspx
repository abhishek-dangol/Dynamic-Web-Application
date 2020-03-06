<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 8px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
    </head>
<body style="width: 799px">
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgBanner" runat="server" ImageUrl="~/Images/Assignment2Image.png" />
        </div>

        <div class="marginTop">
            <asp:Label ID="lblFirst" runat="server" ForeColor="#6699FF" Text="Thank you for your interest! Please complete the form below to request information."></asp:Label>
        </div>
        <div class="marginTop">
            <asp:Label ID="lblSecond" runat="server" ForeColor="#FF3300" Text="The information you provide will be kept confidential and used only to send information to you."></asp:Label>
        </div>
        <div class="marginTopMore">
            <asp:Label ID="lblThird" runat="server" Text="* = Required Field" ForeColor="#FF3300"></asp:Label>
          
        </div>
         <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">Student Information</b></div>
        <div class="marginSection">

            <asp:Label ID="lblFirstName" runat="server" CssClass="infoStyle" Text="* First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblLastName" runat="server" CssClass="infoStyle" Text="*Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtFirstName" runat="server" Width="234px" AutoPostBack="True" ValidationGroup="vg"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValFirstName" runat="server" ControlToValidate="txtFirstName" CssClass="valMSg" Display="Dynamic" ErrorMessage="First Name Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server" Width="234px" AutoPostBack="True" ValidationGroup="vg"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValLastName" runat="server" ControlToValidate="txtLastName" CssClass="valMSg" Display="Dynamic" ErrorMessage="Last Name Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblDOB" runat="server" CssClass="infoStyle" Text="* Date of Birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblGender" runat="server" CssClass="infoStyle" ForeColor="Black" Text="Gender"></asp:Label>
            <br />
            <asp:TextBox ID="txtDOB" runat="server" Width="181px" AutoPostBack="True"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImgCalendar" runat="server" Height="18px" ImageUrl="~/Images/calendar.png" OnClick="ImgCalendar_Click" Width="16px" />
            <asp:RequiredFieldValidator ID="RFValDOB" runat="server" ControlToValidate="txtDOB" CssClass="valMSg" Display="Dynamic" ErrorMessage="Date of Birth Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExValDate" runat="server" ControlToValidate="txtDOB" CssClass="valMSg" Display="Dynamic" ErrorMessage="Incorrect Date Format" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/]\d{4}$" ValidationGroup="vg">*</asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CstValDOB" runat="server" ControlToValidate="txtDOB" 
                CssClass="valMSg" ErrorMessage="Date of Birth should be before today's date" 
                OnServerValidate="CstValDOB_ServerValidate" ValidationGroup="vg">*</asp:CustomValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="auto-style1" Height="16px" Width="144px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblHint" runat="server" ForeColor="Black" Text="[mm/dd/yyyy]"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="330px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
            <br />
        </div>
       </div>
       <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">Contact Information</b></div>
        <div class="marginSection">

           <asp:Label ID="lblAddress1" runat="server" CssClass="infoStyle" Text="* Mailing Address"></asp:Label>
           <br />
           <asp:TextBox ID="txtAddress1" runat="server" Width="407px" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValAddress" runat="server" ControlToValidate="txtAddress1" CssClass="valMSg" Display="Dynamic" ErrorMessage="Mailing Address Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
           <br />
           <asp:Label ID="lblAddress2" runat="server" CssClass="infoStyle" ForeColor="Black" Text="Mailing Address 2"></asp:Label>
           <br />
           <asp:TextBox ID="txtAddress2" runat="server" Width="405px" AutoPostBack="True"></asp:TextBox>
           <br />
           <asp:Label ID="lblCity" runat="server" CssClass="infoStyle" Text="* City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblState" runat="server" CssClass="infoStyle" Text="* State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblZipCode" runat="server" CssClass="infoStyle" Text="* Zip Code"></asp:Label>
           <br />
           <asp:TextBox ID="txtCity" runat="server" Width="235px" AutoPostBack="True"></asp:TextBox>
           &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RFValCity" runat="server" ControlToValidate="txtCity" CssClass="valMSg" ErrorMessage="City Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="ddlStates" runat="server" Height="17px" Width="166px" AutoPostBack="True">
               <asp:ListItem Value=""></asp:ListItem>
	<asp:ListItem Value="AL">AL</asp:ListItem>
	<asp:ListItem Value="AK">AK</asp:ListItem>
	<asp:ListItem Value="AZ">AZ</asp:ListItem>
	<asp:ListItem Value="AR">AR</asp:ListItem>
	<asp:ListItem Value="CA">CA</asp:ListItem>
	<asp:ListItem Value="CO">CO</asp:ListItem>
	<asp:ListItem Value="CT">CT</asp:ListItem>
	<asp:ListItem Value="DC">DC</asp:ListItem>
	<asp:ListItem Value="DE">DE</asp:ListItem>
	<asp:ListItem Value="FL">FL</asp:ListItem>
	<asp:ListItem Value="GA">GA</asp:ListItem>
	<asp:ListItem Value="HI">HI</asp:ListItem>
	<asp:ListItem Value="ID">ID</asp:ListItem>
	<asp:ListItem Value="IL">IL</asp:ListItem>
	<asp:ListItem Value="IN">IN</asp:ListItem>
	<asp:ListItem Value="IA">IA</asp:ListItem>
	<asp:ListItem Value="KS">KS</asp:ListItem>
	<asp:ListItem Value="KY">KY</asp:ListItem>
	<asp:ListItem Value="LA">LA</asp:ListItem>
	<asp:ListItem Value="ME">ME</asp:ListItem>
	<asp:ListItem Value="MD">MD</asp:ListItem>
	<asp:ListItem Value="MA">MA</asp:ListItem>
	<asp:ListItem Value="MI">MI</asp:ListItem>
	<asp:ListItem Value="MN">MN</asp:ListItem>
	<asp:ListItem Value="MS">MS</asp:ListItem>
	<asp:ListItem Value="MO">MO</asp:ListItem>
	<asp:ListItem Value="MT">MT</asp:ListItem>
	<asp:ListItem Value="NE">NE</asp:ListItem>
	<asp:ListItem Value="NV">NV</asp:ListItem>
	<asp:ListItem Value="NH">NH</asp:ListItem>
	<asp:ListItem Value="NJ">NJ</asp:ListItem>
	<asp:ListItem Value="NM">NM</asp:ListItem>
	<asp:ListItem Value="NY">NY</asp:ListItem>
	<asp:ListItem Value="NC">NC</asp:ListItem>
	<asp:ListItem Value="ND">ND</asp:ListItem>
	<asp:ListItem Value="OH">OH</asp:ListItem>
	<asp:ListItem Value="OK">OK</asp:ListItem>
	<asp:ListItem Value="OR">OR</asp:ListItem>
	<asp:ListItem Value="PA">PA</asp:ListItem>
	<asp:ListItem Value="RI">RI</asp:ListItem>
	<asp:ListItem Value="SC">SC</asp:ListItem>
	<asp:ListItem Value="SD">SD</asp:ListItem>
	<asp:ListItem Value="TN">TN</asp:ListItem>
	<asp:ListItem Value="TX">TX</asp:ListItem>
	<asp:ListItem Value="UT">UT</asp:ListItem>
	<asp:ListItem Value="VT">VT</asp:ListItem>
	<asp:ListItem Value="VA">VA</asp:ListItem>
	<asp:ListItem Value="WA">WA</asp:ListItem>
	<asp:ListItem Value="WV">WV</asp:ListItem>
	<asp:ListItem Value="WI">WI</asp:ListItem>
	<asp:ListItem Value="WY">WY</asp:ListItem>
           </asp:DropDownList>
           &nbsp;<asp:RequiredFieldValidator ID="RFValState" runat="server" ControlToValidate="ddlStates" CssClass="valMSg" Display="Dynamic" ErrorMessage="State Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtZipCode" runat="server" TextMode="Number" Width="187px" AutoPostBack="True" EnableTheming="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValZipCode" runat="server" ControlToValidate="txtZipCode" CssClass="valMSg" Display="Dynamic" ErrorMessage="Zip Code Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExValZipCode" runat="server" ControlToValidate="txtZipCode" CssClass="valMSg" Display="Dynamic" ErrorMessage="Please Enter a Valid US Zip Code" ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="vg">*</asp:RegularExpressionValidator>
           <br />
           <asp:Label ID="lblMobile" runat="server" CssClass="infoStyle" Text="* Mobile"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblTextYou" runat="server" CssClass="infoStyle" Text="* May we text you?"></asp:Label>
           <br />
           <asp:TextBox ID="txtMobile" runat="server" Width="173px" AutoPostBack="True" Height="17px"></asp:TextBox>
           &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RFValMobile" runat="server" ControlToValidate="txtMobile" CssClass="valMSg" Display="Dynamic" ErrorMessage="Mobile Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExValMobile" runat="server" ControlToValidate="txtMobile" CssClass="valMSg" ErrorMessage="Invalid Mobile Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="vg">*</asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="ddlTextYou" runat="server" Height="16px" Width="226px" AutoPostBack="True">
               <asp:ListItem></asp:ListItem>
               <asp:ListItem>Yes</asp:ListItem>
               <asp:ListItem>No</asp:ListItem>
           </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFValTextYou" runat="server" ControlToValidate="ddlTextYou" CssClass="valMSg" Display="Dynamic" ErrorMessage="'May we text you?' Selection Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
           <br />
           <asp:Label ID="lblOtherPhone" runat="server" CssClass="infoStyle" ForeColor="Black" Text="Other Phone"></asp:Label>
           <br />
           <asp:TextBox ID="txtOtherPhone" runat="server" Width="171px" AutoPostBack="True" 
                Height="20px"></asp:TextBox>
           <br />
           <asp:Label ID="lblEmail" runat="server" CssClass="infoStyle" Text="* Email Address"></asp:Label>
           <br />
           <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ValidateRequestMode="Disabled" ViewStateMode="Disabled" Width="395px" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValEmail" runat="server" ControlToValidate="txtEmail" CssClass="valMSg" Display="Dynamic" ErrorMessage="Email Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExValEmail" runat="server" ControlToValidate="txtEmail" CssClass="valMSg" ErrorMessage="Please Enter a Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*</asp:RegularExpressionValidator>
           </div>
           </div>

        
        <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">Academic Information</b></div>
        <div class="marginSection">

            <asp:Label ID="lblSemesterEnroll" runat="server" CssClass="infoStyle" Text="* Semester you wish to Enroll:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCampus" runat="server" CssClass="infoStyle" Text="* Campus"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlSemester" runat="server" Height="18px" Width="233px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Spring 2020</asp:ListItem>
                <asp:ListItem>Summer 2020</asp:ListItem>
                <asp:ListItem>Fall 2020</asp:ListItem>
                <asp:ListItem>Spring 2021</asp:ListItem>
                <asp:ListItem>Summer 2021</asp:ListItem>
                <asp:ListItem>Fall 2021</asp:ListItem>
                <asp:ListItem>Spring 2022</asp:ListItem>
                <asp:ListItem>Summer 2022</asp:ListItem>
                <asp:ListItem>Fall 2022</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFValSemester" runat="server" ControlToValidate="ddlSemester" CssClass="valMSg" Display="Dynamic" ErrorMessage="Semester Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCampus" runat="server" CssClass="auto-style2" Height="16px" Width="247px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>On Campus / Off Campus</asp:ListItem>
                <asp:ListItem>Online Only</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RfValCampus" runat="server" ControlToValidate="ddlCampus" CssClass="valMSg" Display="Dynamic" ErrorMessage="Campus Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblProgramofInterest" runat="server" CssClass="infoStyle" Text="* Program of Interest"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlProgramofInterest" runat="server" Height="28px" Width="345px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Accounting MS</asp:ListItem>
                <asp:ListItem>Applied Behavior Analysis Certification</asp:ListItem>
                <asp:ListItem>Behavior Analysis MA</asp:ListItem>
                <asp:ListItem>Behavioral Science MA</asp:ListItem>
                <asp:ListItem>Behavioral Science MA - Pearland</asp:ListItem>
                <asp:ListItem>Biological Sciences MS</asp:ListItem>
                <asp:ListItem>Biotechnology MS</asp:ListItem>
                <asp:ListItem>Business Administration MBA</asp:ListItem>
                <asp:ListItem>Business Applications Development Certification</asp:ListItem>
                <asp:ListItem>Business Computer Networking &amp; Security Certification</asp:ListItem>
                <asp:ListItem>Business Database Development &amp; Administration Certification</asp:ListItem>
                <asp:ListItem>Chemistry MS</asp:ListItem>
                <asp:ListItem>Clinical Mental Health Counseling MS</asp:ListItem>
                <asp:ListItem>Clinical Psychology MA</asp:ListItem>
                <asp:ListItem>Clinical Psychology/School Psychology PsyD</asp:ListItem>
                <asp:ListItem>Computer Engineering MS</asp:ListItem>
                <asp:ListItem>Computer Information System MS</asp:ListItem>
                <asp:ListItem>Computer Science MS</asp:ListItem>
                <asp:ListItem>Counseling MS</asp:ListItem>
                <asp:ListItem>Counseling MS-Alief</asp:ListItem>
                <asp:ListItem>Counseling MS-Galena Park</asp:ListItem>
                <asp:ListItem>Counseling MS-Pearland</asp:ListItem>
                <asp:ListItem>Criminology MA</asp:ListItem>
                <asp:ListItem>Criminology MA-Pearland</asp:ListItem>
                <asp:ListItem>Cross-Cultural and Global Studies MA</asp:ListItem>
                <asp:ListItem>Curriculum &amp; Instruction EdD</asp:ListItem>
                <asp:ListItem>Curriculum and Instruction MS</asp:ListItem>
                <asp:ListItem>Digital Media Studies MS</asp:ListItem>
                <asp:ListItem>Educational Leadership EdD</asp:ListItem>
                <asp:ListItem>Educational Leadership EdD - Pearland</asp:ListItem>
                <asp:ListItem>Educational Management MS</asp:ListItem>
                <asp:ListItem>Educational Mgmt MS -Galena Park</asp:ListItem>
                <asp:ListItem>Educational Mgmt MS -Alief</asp:ListItem>
                <asp:ListItem>Educational Mgmt MS -Pearland</asp:ListItem>
                <asp:ListItem>Educational Mgmt MS -San Jac N.</asp:ListItem>
                <asp:ListItem>Engineering Management MS</asp:ListItem>
                <asp:ListItem>Environmental Management MS</asp:ListItem>
                <asp:ListItem>Environmental Science MS</asp:ListItem>
                <asp:ListItem>Exercise and Health Science MS</asp:ListItem>
                <asp:ListItem>Family Therapy MA</asp:ListItem>
                <asp:ListItem>Finance MS</asp:ListItem>
                <asp:ListItem>Grad Endorsement Certification</asp:ListItem>
                <asp:ListItem>Grad Supplemental Certification -Pearland</asp:ListItem>
                <asp:ListItem>Graduate Other Certificates</asp:ListItem>
                <asp:ListItem>Graduate Supplemental Certification</asp:ListItem>
                <asp:ListItem>Graduate Teacher Certification</asp:ListItem>
                <asp:ListItem>Healthcare &amp; Business Administration MHA/MBA</asp:ListItem>
                <asp:ListItem>Healthcare Administration MHA</asp:ListItem>
                <asp:ListItem>History MA</asp:ListItem>
                <asp:ListItem>Humanities Licensed Professional Counselor Certification</asp:ListItem>
                <asp:ListItem>Humanities MA</asp:ListItem>
                <asp:ListItem>Industrial Organizational Psychology MA </asp:ListItem>
                <asp:ListItem>Industrial Organizational Psychology MA -Pearland</asp:ListItem>
                <asp:ListItem>Information Technology Certifiation</asp:ListItem>
                <asp:ListItem>Instructional Design &amp; Technology MS</asp:ListItem>
                <asp:ListItem>Literature MA</asp:ListItem>
                <asp:ListItem>Management Information Systems Certification</asp:ListItem>
                <asp:ListItem>Management Information Systems MS</asp:ListItem>
                <asp:ListItem>Management of Technology Certification</asp:ListItem>
                <asp:ListItem>Masters of Art in teaching MAT</asp:ListItem>
                <asp:ListItem>Mathematical Science MS</asp:ListItem>
                <asp:ListItem>Multicultural Studies in Ed MS</asp:ListItem>
                <asp:ListItem>Non-Degree GR</asp:ListItem>
                <asp:ListItem>Occupational Safety &amp; Health MS</asp:ListItem>
                <asp:ListItem>Physics Candidacy Certificate</asp:ListItem>
                <asp:ListItem>Physics MS</asp:ListItem>
                <asp:ListItem>Prep for teaching: Preschool-Elementary MS</asp:ListItem>
                <asp:ListItem>Professional Accounting MS</asp:ListItem>
                <asp:ListItem>Professional Development </asp:ListItem>
                <asp:ListItem>Project Management and Six Sigma Certification</asp:ListItem>
                <asp:ListItem>Psychology MS</asp:ListItem>
                <asp:ListItem>Psychology MS - Pearland</asp:ListItem>
                <asp:ListItem>Psychology MS - Sugar Land</asp:ListItem>
                <asp:ListItem>Reading MS</asp:ListItem>
                <asp:ListItem>School Library/Information Science MS</asp:ListItem>
                <asp:ListItem>School Library/Information Science MS -Alief</asp:ListItem>
                <asp:ListItem>School Psychology SSP</asp:ListItem>
                <asp:ListItem>Sociology MA</asp:ListItem>
                <asp:ListItem>Software Engineering Certification</asp:ListItem>
                <asp:ListItem>Software Engineering MS</asp:ListItem>
                <asp:ListItem>Standard Certification</asp:ListItem>
                <asp:ListItem>Statistics MS</asp:ListItem>
                <asp:ListItem>Systems Engineering Certification</asp:ListItem>
                <asp:ListItem>Systems Engineering MS</asp:ListItem>
                <asp:ListItem>Undeclared Business Graduate</asp:ListItem>
                <asp:ListItem>Undeclared Education Graduate</asp:ListItem>
                <asp:ListItem>Undeclared Human Science and Humanities Graduate</asp:ListItem>
                <asp:ListItem>Undeclared Science and Engineering Graduate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFValProgram" runat="server" ControlToValidate="ddlProgramofInterest" CssClass="valMSg" Display="Dynamic" ErrorMessage="Program of Interest Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblInternationalStudent" runat="server" CssClass="infoStyle" ForeColor="Black" Text="Are you an International Student?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlInterStudent" runat="server" Height="18px" Width="197px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>

        </div>
        </div>

        <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">Housing</b></div>
        <div class="marginSection">

            <asp:Label ID="lblHousing" runat="server" CssClass="infoStyle" Text="* Are you interested in On-Campus Housing?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlHousing" runat="server" Height="24px" Width="148px" 
                AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RFValCampusHousing" runat="server" ControlToValidate="ddlhousing" CssClass="valMSg" Display="Dynamic" ErrorMessage="On Campus Housing Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>

            </div>
            </div>

         <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">Veteran Information</b></div>
        <div class="marginSection">

            <asp:Label ID="lblVeteran" runat="server" CssClass="infoStyle" Text="Do you plan on using veteran education benefits at UHCL?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlVeteran" runat="server" Height="16px" Width="167px" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>I am not a veteran</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RFValVeteran" runat="server" ControlToValidate="ddlVeteran" CssClass="valMSg" Display="Dynamic" ErrorMessage="Veteran Information Required" ValidationGroup="vg">*</asp:RequiredFieldValidator>

            </div>
             </div>
        <div class="marginTopMore" style="border: 1px solid Gray;">
            <div style="border: 1px solid Gray; background-color: #E8E8E8;"><b style="font-family: Arial; font-size: small; padding: 6px;">How did you hear about UHCL?</b></div>
        <div class="marginSection">
            <asp:Label ID="lblSelectallthatapply" runat="server" CssClass="infoStyle" Font-Size="Smaller" ForeColor="Black" Text="Select all that apply:"></asp:Label>
            <br />
            <asp:ListBox ID="listHearUHCL" runat="server" Height="89px" Width="315px" AutoPostBack="True" SelectionMode="Multiple">
                <asp:ListItem>College / Career Fair</asp:ListItem>
                <asp:ListItem>Email from UHCL</asp:ListItem>
                <asp:ListItem>Social Media</asp:ListItem>
                <asp:ListItem>Teacher/Professor</asp:ListItem>
                <asp:ListItem>Advisor/Counselor</asp:ListItem>
                <asp:ListItem>Family/Friend</asp:ListItem>
                <asp:ListItem>Campus Event Invitation</asp:ListItem>
                <asp:ListItem>Letter / Postcard from UHCL</asp:ListItem>
                <asp:ListItem>UHCL Poster/Billboard</asp:ListItem>
                <asp:ListItem>Employer</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:ListBox>
            </div>
            </div>
        <div class="marginTopMore">
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                Style="margin-left: 320px" OnClick="btnSubmit_Click" ValidationGroup="vg"/>
              
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            <br />
            <asp:Label ID="lblDisclaimer" runat="server" CssClass="disclaimer" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Text="By clicking the submit button, I agree that UHCL may email me or contact me regarding educational services by telephone and/or text message utilizing automated technology at the telephone number(s) provided above. I understand this consent is not required to attend UHCL."></asp:Label>
              
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="vg" />
    </form> 
</body>
</html>
