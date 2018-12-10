<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名 :
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="請輸入姓名" ForeColor="#6699FF"></asp:RequiredFieldValidator>
        <br />
        電話 :
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="phone" ErrorMessage="請輸入電話" ForeColor="#3399FF"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="請輸入電話格式" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
        <br />
        <br />
        優待券號碼 : <br />
        <asp:TextBox ID="cp1" runat="server"></asp:TextBox>
        <br />
        再次輸入 :<br />
        <asp:TextBox ID="cp2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cp1" ControlToValidate="cp2" ErrorMessage="請再次確認" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        輸入Email :
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="請輸入Email" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="請輸入正確格式" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
    
        <asp:CheckBox ID="C1" runat="server" Text="原味披薩" AutoPostBack="True" OnCheckedChanged="C1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量&nbsp;&nbsp; 
        <asp:DropDownList ID="no1" runat="server" Height="30px" Width="148px" AutoPostBack="True">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost1" runat="server" AutoPostBack="True">500</asp:TextBox>
        &nbsp;&nbsp;&nbsp; 小計:
        <asp:Label ID="liltt1" runat="server"></asp:Label>
        <br />
        <asp:CheckBox ID="C2" runat="server" Text="牛肉披薩" AutoPostBack="True" OnCheckedChanged="C2_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量&nbsp;&nbsp; 
        <asp:TextBox ID="no2" runat="server" AutoPostBack="True">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost2" runat="server" AutoPostBack="True">550</asp:TextBox>
        &nbsp;&nbsp;&nbsp; 小計:
        <asp:Label ID="liltt2" runat="server"></asp:Label>
        <br />
        <asp:CheckBox ID="C3" runat="server" OnCheckedChanged="C3_CheckedChanged" Text="海鮮披薩" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 數量&nbsp;&nbsp; 
        <asp:TextBox ID="no3" runat="server" AutoPostBack="True">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; 單價:&nbsp;
        <asp:TextBox ID="cost3" runat="server" AutoPostBack="True">650</asp:TextBox>
        &nbsp;&nbsp;&nbsp; 小計:
        <asp:Label ID="liltt3" runat="server"></asp:Label>
        <br />
        <asp:RadioButtonList ID="R1" runat="server" Height="48px" RepeatDirection="Horizontal" style="margin-bottom: 0px" Width="714px">
            <asp:ListItem Value="1">一分熟</asp:ListItem>
            <asp:ListItem Value="3">三分熟</asp:ListItem>
            <asp:ListItem Value="5">五分熟</asp:ListItem>
            <asp:ListItem Value="7">七分熟</asp:ListItem>
            <asp:ListItem Value="10">全熟</asp:ListItem>
        </asp:RadioButtonList>
        加購優惠:<asp:CheckBoxList ID="CB" runat="server">
            <asp:ListItem Value="1">蔬菜湯 10元</asp:ListItem>
            <asp:ListItem Value="2">玉米湯 20元</asp:ListItem>
            <asp:ListItem Value="3">沙拉 30元</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        你需要:<br />
        <br />
        <asp:ListBox ID="LB" runat="server" Height="84px" SelectionMode="Multiple" Width="85px">
            <asp:ListItem Value="1">筷子</asp:ListItem>
            <asp:ListItem Value="2">湯匙</asp:ListItem>
            <asp:ListItem Value="3">提袋</asp:ListItem>
            <asp:ListItem Value="4">發票</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <br />
        意見回饋:<br />
        <asp:TextBox ID="tbt" runat="server" AutoPostBack="True" Height="85px" OnTextChanged="tbt_TextChanged" TextMode="MultiLine" Width="167px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="計算總價錢" Width="102px" />
        <br />
        <br />
        幾分熟 :&nbsp; <asp:Label ID="L1" runat="server"></asp:Label>
        <br />
        <br />
        你需要:<br />
        <asp:TextBox ID="tt1" runat="server" Height="81px" TextMode="MultiLine" Width="120px"></asp:TextBox>
        <br />
        加價購:<br />
        <asp:TextBox ID="tb" runat="server" Height="86px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="124px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LL0" runat="server" Text=" "></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="總價錢"></asp:Label>
        &nbsp;:<asp:TextBox ID="total" runat="server" Height="16px" Width="154px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LL1" runat="server" Text=" "></asp:Label>
        顯示意見回饋:<br />
        <asp:Label ID="LL2" runat="server" Text=" "></asp:Label>
        <asp:TextBox ID="tbt2" runat="server" AutoPostBack="True" Height="81px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="164px"></asp:TextBox>
        <br />
        <asp:Label ID="LL3" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="LL4" runat="server" Text=" "></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
