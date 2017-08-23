<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 200px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            color: #FF3300;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            <img class="auto-style1" src="PapaBob.png" /><span class="auto-style2">Papa Bob&#39;s Pizza and Software</span></h1>
        <p>
            <asp:RadioButton ID="babyPizzaRadioButton" runat="server" GroupName="sizeGroup" Text="Baby Bob Size (10&quot;) - $10" />
        <br />
            <asp:RadioButton ID="mamaPizzaRadioButton" runat="server" GroupName="sizeGroup" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
            <asp:RadioButton ID="PapaPizzaRadioButton" runat="server" GroupName="sizeGroup" Text="Papa Bob Size (16&quot;) - $16" Checked="True" />
       </p>
        <p>
            <asp:RadioButton ID="thinCrustRadioButton" runat="server" GroupName="crustGroup" Text="Thin Crust" />
       <br />
            <asp:RadioButton ID="deepDishRadioButton" runat="server" GroupName="crustGroup" Text="Deep Dish (+$2)" />
        </p>
        <p>
            <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
            <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
            <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
            <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
            <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2.00)" />
        </p>
        <h2><span class="auto-style2">Papa Bob&#39;s </span> <span class="auto-style3">Special Deal</span></h2>
        <p>
            Save $2.00 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers and Onions to your pizza.</p>
        <p>
            <asp:Button ID="purchaseButton" runat="server" Text="Purchase" OnClick="purchaseButton_Click" />
        </p>
        <p>
            Total:
            <asp:Label ID="totalLabel" runat="server" Text="$0.00"></asp:Label>
        </p>
        <p>
            Sorry, at this time you can only order one pizza online, and pick-up only ... we need a better website!</p>
    
    </div>
    </form>
</body>
</html>
