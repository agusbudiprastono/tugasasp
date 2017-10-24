<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
             <table style="width: 635px;" cellspacing="5px">
                <tr>
                    <td colspan="3"><h1>Form Order</h1></td>
                </tr>
                 <tr>
                    <td align="left" class="style6">
                        <asp:Label ID="Nolbl" runat="server" Text="No. Order " ></asp:Label>
                    </td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold">
                            <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
                        </td>
                    <td  align="left" class="style5"> 
                        <asp:TextBox ID="No" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style6">
                        <asp:Label ID="namalbl" runat="server" Text="Nama Pemesan" ></asp:Label>
                    </td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold">
                            <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
                        </td>
                    <td  align="left" class="style5"> 
                        <asp:TextBox ID="nama" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td  align="left" class="style6">
                        <asp:Label ID="jk" runat="server" Text="Jenis Kelamin "></asp:Label>
                    </td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold">
                            <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
                        </td>
                    <td align="left" class="style5">
                        <asp:DropDownList ID="dl" runat="server" Height="21px" Width="100px">
                            <asp:ListItem>Laki-laki</asp:ListItem>
                            <asp:ListItem>Perempuan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>                              
                <tr>
                    <td  valign="top" align="left" class="style6">
                        <asp:Label ID="metodelbl" runat="server" Text="Metode Pengiriman "></asp:Label>
                    </td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold" 
                        valign="top">
                            <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
                        </td>
                    <td  align="left" class="style5"> 
                        <asp:RadioButton ID="rbj" runat="server" Text="JNE" 
                            GroupName="al" />
                        &nbsp;<asp:RadioButton ID="rbt" runat="server" GroupName="al" 
                            Text="TIKI" />
                        &nbsp;<asp:RadioButton ID="rbp" runat="server" Text="Pos" 
                            GroupName="al" />
                        &nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td valign="top" class="style6"  align="left">
                        <asp:Label ID="jblbl" runat="server" Text="Jenis Barang "></asp:Label>
                    </td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold" 
                        valign="top">
                            <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
                        </td>
                    <td  align="left" class="style5">
                        <asp:CheckBox ID="Cbe" runat="server" Text="Electronic"/><br />
                        <asp:CheckBox ID="Cbf" runat="server" Text="Fashion" /><br />
                        <asp:CheckBox ID="Cbk" runat="server" Text="Komputer & Gadget" /><br />
                    </td>
                </tr> 
                
                <tr><td valign="top" align="left" class="style6">
                    <asp:Label ID="tgllbl" runat="server" Text="Tanggal Pengiriman "></asp:Label></td>
                     <td align="justify" class="style4" colspan="1" style="font-weight: bold" 
                        valign="top">
                            <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>
                        </td>
                    <td  valign="top" align="left" class="style5">
                        <asp:TextBox ID="Tanggal" runat="server" Width="199px"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Kalender" />
                        &nbsp;&nbsp;

                           <br />
                        <asp:Calendar ID="Calendar1" runat="server" Width="321px"></asp:Calendar>


                         </td>
                    </tr>
                <tr><td class="style3" colspan="2"></td>
               <td align="right"  class="style7">
                    <asp:Button ID="cetak" runat="server" Text="Cetak" Height="22px" Width="62px" /></td>
                </tr>
       
                <tr>
                    <td colspan="3" 
                        
                        style="font-size: 35px; font-weight: bolder; font-style: normal; text-decoration: underline; color: #800000">
                        <asp:GridView ID="GridView1" runat="server" Font-Size="Medium" Width="581px">
                        </asp:GridView>
                    </td>
                 
                </tr>
            </table>
    </div>
    </form>
                     

</body>
</html>
