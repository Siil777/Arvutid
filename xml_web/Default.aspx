<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xml_web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Arvutit XML failist</title>
</head>
<body>
    <h1>XNL arvutid </h1>
    <form id="form1" runat="server">
        <div>

            <asp:Xml runat="server" DocumentSource="~/XMLFile1.xml"
                TransformSource="~/arvutitValja.xslt" />

        </div> 
    </form>
</body>
</html>
