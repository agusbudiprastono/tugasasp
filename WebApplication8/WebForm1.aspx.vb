Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim a, b As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cetak_Click(sender As Object, e As EventArgs) Handles cetak.Click

        If rbt.Checked = True Then
            a = rbt.Text
        ElseIf rbj.Checked = True Then
            a = rbj.Text
        ElseIf rbp.Checked = True Then
            a = rbp.Text

        End If
        If Cbe.Checked = True And Cbf.Checked = True And Cbk.Checked = True Then
            b = "Elektronik, Fashion Dan Komputer/Gadget"
        ElseIf Cbe.Checked = True And Cbf.Checked = True Then
            b = "Elektronik Dan Fashion"
        ElseIf Cbe.Checked = True And Cbk.Checked = True Then
            b = "Elektronik Dan Komputer/Gadget"
        ElseIf Cbf.Checked = True And Cbk.Checked = True Then
            b = " Fashion Dan Komputer/Gadget"
        ElseIf Cbe.Checked = True Then
            b = "Elektronik"
        ElseIf Cbf.Checked = True Then
            b = " Fashion "
        ElseIf Cbk.Checked = True Then
            b = "Komputer/Gadget"
        Else : b = "Anda belum memberikan detail jenis barang"
        End If
        Dim dt As New DataTable
        dt.Columns.Add("No Order")
        dt.Columns.Add("Nama Pemesan")
        dt.Columns.Add("Jenis Kelamin")
        dt.Columns.Add("Metode Pengiriman")
        dt.Columns.Add("Jenis Barang")
        dt.Columns.Add("Tanggal Pengiriman")
        Dim dr As DataRow
        dr = dt.NewRow
        dt.Rows.Add(dr)
        dr("No Order") = No.Text
        dr("Nama Pemesan") = nama.Text
        dr("Jenis Kelamin") = dl.Text
        dr("Metode Pengiriman") = a
        dr("Jenis Barang") = b
        dr("Tanggal Pengiriman") = Tanggal.Text
        For i As Integer = 0 To GridView1.Rows.Count - 1
            dr = dt.NewRow()
            dr("No Order") = GridView1.Rows(i).Cells(0).Text
            dr("Nama Pemesan") = GridView1.Rows(i).Cells(1).Text
            dr("Jenis Kelamin") = GridView1.Rows(i).Cells(2).Text
            dr("Metode Pengiriman") = GridView1.Rows(i).Cells(3).Text
            dr("Jenis Barang") = GridView1.Rows(i).Cells(4).Text
            dr("Tanggal Pengiriman") = GridView1.Rows(i).Cells(5).Text

            dt.Rows.Add(dr)
        Next
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Private Sub WebForm1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Calendar1.Visible = False

    End Sub
    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        Tanggal.Text = Calendar1.SelectedDate.ToString("d")
        Calendar1.Visible = False
    End Sub
   

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Calendar1.Visible = True

    End Sub
End Class