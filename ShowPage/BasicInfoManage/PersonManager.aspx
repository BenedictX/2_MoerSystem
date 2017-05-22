<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonManager.aspx.cs" Inherits="PersonManager" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>��Ա����</title>
<link href="../../public/css/Main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../public/css/myjs.js"></script>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
        .style2
        {
            height: 12px;
            color:Red;
        }
        .style3
        {
            width: 161px;
        }
        .style4
        {
            width: 637px;
        }
        .style6
        {
            width: 349px;
        }
    </style>
</head>
<body class="main">
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr> 
        <td style="height:20px;background-color: #8CA1AE;">
          <table width="157" style="height:100%" border="0" cellpadding="0" cellspacing="0">
            <tr> 
              <td align="center" style="background-image: url(../../public/images/bg.gif);">��Ա����</td>
            </tr>
          </table>
        </td>
      </tr>
      
      <tr> 
        <td><center>
        <table id="search" cellspacing="0" cellpadding="0" width="98%" border="0">
            <tbody>
              <tr> 
                <td align="left" class="style1" valign="middle">��ѡ�����ͣ�<asp:DropDownList id="xtmc" 
                        runat="server" Height="20px" Width="165px" 
                        DataTextField="SysName" DataValueField="SysName"></asp:DropDownList>
                        <asp:button cssclass="mybutton" ID="SearchBtn" runat="server" Text="����" 
                        causesvalidation="False" onclick="SearchBtn_Click"/>
                        <asp:button cssclass="mybutton" ID="RefBtn" runat="server" Text="ˢ��" 
                        causesvalidation="False" onclick="RefBtn_Click"/>
                </td>
              </tr>
              <tr> 
                <td align="left" class="style2">
                    <asp:Label ID="statusLabel" runat="server" ></asp:Label>
                </td>
              </tr>
              <tr> 
                <td>
				<asp:Panel ID="Panel1" runat="server"  ScrollBars="Auto">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    OnRowDataBound="OnRow_Bound"  
                    AutoGenerateColumns="False" 
                    cellspacing="1" 
                    DataKeyNames="PersonID" 
                    BorderStyle="None" 
                    BorderWidth="0px"
                    BackColor="Silver"
                    EmptyDataText="û�в鵽�������������ݣ�" 
                    Width="100%" onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowupdating="GridView1_RowUpdating" onrowediting="GridView1_RowEditing">
                        <Columns>                        
                            <asp:TemplateField HeaderText="���" HeaderImageUrl="~/public/images/refresh.gif">
                                <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text="<%# GridView1.Rows.Count+ 1 %>"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                <HeaderStyle Width="10%" />
                            </asp:TemplateField>

                            <asp:BoundField DataField="XingMing" HeaderText="����">
                                <HeaderStyle Width="15%" />
                            </asp:BoundField>
                            
                            <asp:TemplateField HeaderText="�Ա�">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" 
                                        style="margin-left: 0px" Width="120px">
                                        <asp:ListItem>��</asp:ListItem>
                                        <asp:ListItem>Ů</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <HeaderStyle Width="15%" />
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="TelephoneNo" HeaderText="�绰����">
                                <HeaderStyle  Width="20%" />
                                <ItemStyle HorizontalAlign="center" />
                            </asp:BoundField>
                            
                            <asp:BoundField DataField="Email" HeaderText="Email">
                            <HeaderStyle  Width="20%" />
                            <ItemStyle HorizontalAlign="center" />
                            </asp:BoundField>
                            
                            <asp:CommandField HeaderText="����" ShowEditButton="True" 
                                ShowHeader="True" />
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" />
                        <RowStyle CssClass="list_gray" />
                        <HeaderStyle CssClass="title" />
                        <AlternatingRowStyle BackColor="#EBFBF0" />
                        <EmptyDataRowStyle BackColor="#E0E0E0" Font-Bold="True" ForeColor="Red" />
                    </asp:GridView>
                  </asp:Panel>
                </td>
              </tr>
            </tbody>
        </table>
        </center></td>
      </tr>
  </table>
    
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <table align="center" style="width:100%;">
                    <tr>
                        <td class="td_no">
                            ������</td>
                        <td class="style6">
                            <asp:TextBox ID="TextBoxXingMing" runat="server" CssClass="mytext" Height="22px" 
                                Width="166px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="td_no">
                            �Ա�</td>
                        <td class="style6">
                            <asp:DropDownList ID="DropDownListSex" runat="server" CssClass="mybox" 
                                Height="17px" Width="166px">
                                <asp:ListItem>��</asp:ListItem>
                                <asp:ListItem>Ů</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="td_no">
                            �绰���룺</td>
                        <td class="style6">
                            <asp:TextBox ID="TextBoxTelephone" runat="server" CssClass="mytext" 
                                Height="22px" Width="166px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="td_no">
                            Email��</td>
                        <td class="style6">
                            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="mytext" 
                                Height="22px" Width="166px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="td_no">
                            &nbsp;</td>
                        <td class="style6">
    <asp:Button ID="createDiction" runat="server" Text="�����Ա" 
        onclick="createDiction_Click" CssClass="mybutton" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>