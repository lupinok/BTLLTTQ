using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BTLLogin
{
	internal class ProcessDataBase
	{
		string strConnect = "Data Source=DESKTOP-KV8OO60\\SQLEXPRESS;Initial Catalog=BTLLTTQ;Integrated Security=True";
		private static ProcessDataBase instance;
		private SqlConnection sqlConnection;

		// Đặt constructor thành private để ngăn chặn khởi tạo bên ngoài
		private ProcessDataBase()
		{
			sqlConnection = new SqlConnection(strConnect);
		}

		// Phương thức để lấy thể hiện duy nhất của lớp
		public static ProcessDataBase GetInstance()
		{
			if (instance == null)
			{
				instance = new ProcessDataBase();
			}
			return instance;
		}

		//Hàm mở kết nối CSDL
		public void KetNoiCSDL()
		{
			if (sqlConnection.State != ConnectionState.Open)
			{
				sqlConnection.Open();
			}
		}
		
		//Hàm đóng kết nối CSDL
		public void DongKetNoiCSDL()
		{
			if (sqlConnection.State != ConnectionState.Closed)
			{
				sqlConnection.Close();
			}
		}
		//Hàm thực thi câu lệnh dạng Select trả về một DataTable
		public DataTable DocBang(string sql)
		{
			DataTable dtBang = new DataTable();
			KetNoiCSDL();
			SqlDataAdapter sqldataAdapte = new SqlDataAdapter(sql,
			sqlConnection);
			sqldataAdapte.Fill(dtBang);
			return dtBang;
		}
		//Hàm thực lệnh insert hoặc update hoặc delete
		public void CapNhatDuLieu(string sql)
		{
			KetNoiCSDL();
			using (SqlCommand sqlcommand = new SqlCommand(sql, sqlConnection))
			{
				sqlcommand.ExecuteNonQuery();
			}
		}

		// Trả về kết nối
		public SqlConnection GetSqlConnection()
		{
			return sqlConnection;
		}
	}
}
