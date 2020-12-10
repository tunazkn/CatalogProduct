using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CatalogProduct
{
    public class DBOperations
    {
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\90538\Documents\DBCikolata.mdf;Integrated Security=True;Connect Timeout=30";

        static SqlConnection connection = new SqlConnection(connectionString);

        public static string[] ReadProductDetail(int productID)
        {
            string[] Products = { "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16" };
            string sql = "SELECT Product.pID , Product.pCode , MainGroup.mainID , mainName , Brand.bID , bName , " +
                "Feature.FtID , FtDescription , ComProduct.cpID , cpName , Series.sID , sName , " +
                "Quality.quID , quName , Recipes.ReID , Product.pName FROM Product  " +
                "INNER JOIN MainGroup ON Product.MainID = MainGroup.mainID " +
                "INNER JOIN Brand ON Product.bID = Brand.bID " +
                "INNER JOIN Feature ON Product.FtID = Feature.ftID " +
                "INNER JOIN ComProduct ON Product.cpID = ComProduct.cpID " +
                "INNER JOIN Series ON Product.sID = Series.sID " +
                "INNER JOIN Quality ON Product.quID = Quality.quID " +
                "INNER JOIN Recipes ON Product.ReID = Recipes.ReID " +
                "WHERE Product.pID = " + productID;
            SqlCommand komut = new SqlCommand(sql, connection);
            DataSet sonucKontrol = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            connection.Open();
            SqlDataReader Reader = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (Reader.Read())
            {
                Products[0] = Reader["pID"].ToString();
                Products[1] = Reader["pCode"].ToString();
                Products[2] = Reader["pName"].ToString();
                Products[3] = Reader["mainID"].ToString();
                Products[4] = Reader["mainName"].ToString();
                Products[5] = Reader["bID"].ToString();
                Products[6] = Reader["bName"].ToString();
                Products[7] = Reader["ftID"].ToString();
                Products[8] = Reader["FtDescription"].ToString();
                Products[9] = Reader["cpID"].ToString();
                Products[10] = Reader["cpName"].ToString();
                Products[11] = Reader["sID"].ToString();
                Products[12] = Reader["sName"].ToString();
                Products[13] = Reader["quID"].ToString();
                Products[14] = Reader["quName"].ToString();
                Products[15] = Reader["ReID"].ToString();
            }
            connection.Close();
            return Products;
        }
        /*
        public static string[] ReadProduct(string ProductCode)
        {
            string[] Products = { "", "", "", "", "", "", "", "", "" };
            string sql = "select pID, MainID, bID, FtID, cpID, sID, quID, ReID, Pname from " +
                "Product where pID = '" + ProductCode + "'";
            SqlCommand komut = new SqlCommand(sql, connection);
            DataSet sonucKontrol = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            connection.Open();
            SqlDataReader Reader = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (Reader.Read())
            {
                Products[0] = Reader["pID"].ToString();
                Products[1] = Reader["MainID"].ToString();
                Products[2] = Reader["bID"].ToString();
                Products[3] = Reader["FtID"].ToString();
                Products[4] = Reader["cpID"].ToString();
                Products[5] = Reader["sID"].ToString();
                Products[6] = Reader["quID"].ToString();
                Products[7] = Reader["ReID"].ToString();
                Products[8] = Reader["Pname"].ToString();
            }
            connection.Close();
            return Products;
        }*/
        public static DataSet getRecipeDetail(int productid)
        {
            string sql = "SELECT RecipeDetail.ReID , Product.pID, pCode , pName, Materials.MatID , MatName , " +
                "(RecipeDetail.Quantity + UOMName) as QUOM from RecipeDetail " +
                "INNER JOIN Recipes ON RecipeDetail.ReID = Recipes.ReID " +
                "INNER JOIN UOMs ON RecipeDetail.UOMID = UOMs.UOMID " +
                "INNER JOIN Materials ON RecipeDetail.MatID = Materials.MatID " +
                "INNER JOIN Product ON Recipes.pID = Product.pID " +
                "WHERE Recipes.pID = " + productid;
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getProducts()
        {
            string sql = "SELECT Product.pID, Product.pCode , Product.pName,  mainName, " +
                "bName, FtDescription, cpName, " +
                "sName, quName FROM Product " +
                "INNER JOIN MainGroup ON Product.MainID = MainGroup.mainID " +
                "INNER JOIN Brand ON Product.bID = Brand.bID " +
                "INNER JOIN Feature ON Product.FtID = Feature.ftID " +
                "INNER JOIN ComProduct ON Product.cpID = ComProduct.cpID " +
                "INNER JOIN Series ON Product.sID = Series.sID " +
                "INNER JOIN Quality ON Product.quID = Quality.quID";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }

        /*alttakı kod search için
             string sqlCommand1 = "SELECT Product.PID , Product.CODE, Maingroups.DESCRIPTION as mgd, Subgroups.DESCRIPTION as sgd, Brands.DESCRIPTION as bd, " +
                                "Enginetypes.DESCRIPTION as etd, Series.DESCRIPTION as sd, Quality.DESCRIPTION as qd " +
                                "FROM Product " +
                                "INNER JOIN Maingroups ON Product.MAINGROUPID = Maingroups.MGID " +
                                "INNER JOIN Subgroups ON Product.SUBGROUPID = Subgroups.SGID " +
                                "INNER JOIN Brands ON Product.BRANDID = Brands.BID " +
                                "INNER JOIN Enginetypes ON Product.ENGINETYPEID = Enginetypes.EID " +
                                "INNER JOIN Series ON Product.SERIESID = Series.SID " +
                                "INNER JOIN Quality ON Product.QUALITYID = Quality.QID " +
                                "WHERE Maingroups.MGID = " + mgid + " " + "AND Subgroups.SGID = " + sgid + " " + "AND Brands.BID = " + bid + " " + 
                                "AND Enginetypes.EID = " + etid + " " + "AND Series.SID = " + sid + " ";
                                */
        /*
         * string sqlCommand = "SELECT Product.PID , Product.CODE, Maingroups.DESCRIPTION as mgd, " +
                                "Subgroups.DESCRIPTION as sgd, Brands.DESCRIPTION as bd, " +
                                "Enginetypes.DESCRIPTION as etd, Series.DESCRIPTION as sd, " +
                                "Quality.DESCRIPTION as qd FROM Product " +
                                "INNER JOIN Maingroups ON Product.MAINGROUPID = Maingroups.MGID " +
                                "INNER JOIN Subgroups ON Product.SUBGROUPID = Subgroups.SGID " +
                                "INNER JOIN Brands ON Product.BRANDID = Brands.BID " +
                                "INNER JOIN Enginetypes ON Product.ENGINETYPEID = Enginetypes.EID " +
                                "INNER JOIN Series ON Product.SERIESID = Series.SID " +
                                "INNER JOIN Quality ON Product.QUALITYID = Quality.QID " +
                                "WHERE Maingroups.MGID = " + mainID + " ";
            */


        public static DataSet SearchProduct(string mainName,  string bName, string sName, string quName)
        {
            string t0 = "", t1 = "", t2 = "", t3 = "", a0 = "", a1 = "", a2 = "", where = "";
            int count = 0;
            Boolean x1 = false, x2 = false, x3 = false, x4 = false;
            if (mainName != "--Select--") { 
                t0= " mainName = '" + mainName + "' ";
                count += 1;
                x1 = true;
            }
            if (bName != "--Select--") {
                t1 = " bName = '" + bName + "' ";
                count += 1;
                x2 = true;
            }
            if (sName != "--Select--") { 
                t2 = " sName = '" + sName + "' ";
                count += 1;
                x3 = true;
            }
            if (quName != "--Select--") { 
                t3 = "quName = '" + quName + "' ";
                count += 1;
                x4 = true;
            }
            if(count != 0)
            {
                where = " WHERE "; 
            }
            if (count == 2) {
                if (x1 == true && x2 == true)
                    a0 = " and ";
                else if (x1 = true && x3 == true)
                    a1 = " and ";

                else if (x1 = true && x4 == true)
                    a1 = " and ";
                else if (x2 == true && x3 == true)
                    a1 = " and ";
                else if (x2 == true && x4 == true)
                    a2 = " and ";
                else if (x3 == true && x4 == true)
                    a2 = " and ";
            }
            if (count == 3) {

                if (x1 == true && x2 == true && x3 == true)
                {
                    a0 = " and ";
                    a1 = " and ";
                }
                else if (x1 == true && x2 == true && x4 == true)
                {
                    a0 = " and ";
                    a2 = " and ";
                }
                if (x1 == true && x3 == true && x4 == true)
                {
                    a1 = " and ";
                    a2 = " and ";
                }
                else if (x2 == true && x3 == true && x4 == true)
                {
                    a1 = " and ";
                    a2 = " and ";
                }
            }
            if (count == 4) {
                a0 = " and ";
                a1 = " and ";
                a2 = " and ";
            }

            string sql = "SELECT Product.pID , Product.pCode , mainName , bName , " +
                "FtDescription , cpName , sName , quName , Product.pName FROM Product " +
                "INNER JOIN MainGroup ON Product.MainID = MainGroup.mainID " +
                "INNER JOIN Brand ON Product.bID = Brand.bID " +
                "INNER JOIN Feature ON Product.FtID = Feature.ftID " +
                "INNER JOIN ComProduct ON Product.cpID = ComProduct.cpID " +
                "INNER JOIN Series ON Product.sID = Series.sID " +
                "INNER JOIN Quality ON Product.quID = Quality.quID " +
                 where + t0 + a0 + t1 + a1 + t2 + a2 + t3;
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet searchResult = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            connection.Open();
            adapter.Fill(searchResult);
            connection.Close();
            return searchResult;
            /**string sg = "AND Subgroups.SGID = " + sgid + " ";
            string b = "AND Brands.BID = " + bid + " ";
            string et = "AND Enginetypes.EID = " + etid + " ";
            string s = "AND Series.SID = " + sid + " ";

            if (sgid != -1) { sql = sql + sg; }
            else if (bid != -1) { sql = sql + b; }
            else if (etid != -1) { sql = sql + et; }
            else if (sid != -1) { sql = sql + s; }**/
        }

        public static DataSet getComProduct()
        {
            string sql = "select Product.pID as PID, Product.pName , ComProduct.cpName as cn, " +
                "Brand.bName as bn, Feature.FtDescription as fn, MainGroup.mainName as mn, " +
                "Quality.quName as qn, Series.sName as sn , FROM Product " +
                "INNER JOIN ComProduct ON Product.cpID = ComProduct.cpID " +
                "INNER JOIN Brand ON Product.bID = Brand.bID " +
                "INNER JOIN Feature ON Product.FtID = Feature.ftID " +
                "INNER JOIN MainGroup ON Product.MainID = MainGroup.mainID " +
                "INNER JOIN Quality ON Product.quID = Quality.quID " +
                "INNER JOIN Series ON Product.sID = Series.sID;";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getMaterials()
        {
            string sql = "select * from Materials order by MatName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open();
            adaptor.Fill(result);
            connection.Close();
            return result;
        }
        public static DataSet getMainGroups()
        {
            string sql = "select * from MainGroup order by mainName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open(); adaptor.Fill(result); connection.Close();
            return result;
        }
        public static DataSet getSubGroups()
        {
            string sql = "select * from SubGroup order by subName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open(); 
            adaptor.Fill(result); 
            connection.Close();
            return result;
        }
        public static DataSet getSeries()
        {
            string sql = "select * from Series order by sName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open(); 
            adaptor.Fill(result); 
            connection.Close();
            return result;
        }
        public static DataSet getBrands()
        {
            string sql = "select * from Brand order by bName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open(); adaptor.Fill(result); connection.Close();
            return result;
        }
        public static DataSet getQuality()
        {
            string sql = "select * from Quality order by quName";
            SqlCommand command = new SqlCommand(sql, connection);
            DataSet result = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(command);
            connection.Open(); adaptor.Fill(result); connection.Close();
            return result;
        }

        protected void LinkbtnShowProduct_Click(object sender, EventArgs e)
        {
            string urunKodu = (sender as LinkButton).CommandArgument;
            try
            {/*
                txtMalzemeDuzenleUrunKod.Text = DBIslemleri.ReadProduct(urunKodu)[0];
                txtMalzemeDuzenleUrunAd.Text = DBIslemleri.ReadProduct(urunKodu)[1];
                txtMalzemeDuzenleUrunStok.Text = DBIslemleri.ReadProduct(urunKodu)[2];*/
            }
            catch { }
        }
       
        /*public static string[] AlinanOku(string alinanNo)
        {
            string[] alinanlar = { "", "", "", "", "", "", "", "", "", "" };
            string sql = "select alinanlar.alinan_no, alinanlar.urun_kodu, urun_adi, kullanici_adi + ' ' + kullanici_soyadi " +
                "as kullaniciAdSoyad, personeller.personel_no, personel_adi + ' ' + personel_soyadi as personelAdSoyad, " +
                "personel_tel, alinanlar.alinan_adet, CONVERT(varchar,alinanlar.alis_tarihi,104) as alis_tarihi, " +
                "CONVERT(varchar,alinanlar.teslim_tarihi,23) as teslim_tarihi, teslim_durum " +
                "from alinanlar inner join urunler on urunler.urun_kodu = alinanlar.urun_kodu " +
                "inner join kullanicilar on kullanicilar.kullanici_ID = alinanlar.kullanici_ID " +
                "inner join personeller on personeller.personel_no = alinanlar.personel_no " +
                "where alinanlar.alinan_no = " + alinanNo;
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet sonucKontrol = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            SqlDataReader okuyucu = komut.ExecuteReader(CommandBehavior.CloseConnection);
            if (okuyucu.Read())
            {
                alinanlar[0] = okuyucu["alinan_no"].ToString();
                alinanlar[1] = okuyucu["urun_kodu"].ToString();
                alinanlar[2] = okuyucu["urun_adi"].ToString();
                alinanlar[3] = okuyucu["alinan_adet"].ToString();
                alinanlar[4] = okuyucu["kullaniciAdSoyad"].ToString();
                alinanlar[5] = okuyucu["personelAdSoyad"].ToString();
                alinanlar[6] = okuyucu["personel_tel"].ToString();
                alinanlar[7] = okuyucu["alis_tarihi"].ToString();
                alinanlar[8] = okuyucu["teslim_tarihi"].ToString();
                alinanlar[9] = okuyucu["teslim_durum"].ToString();
            }
            baglanti.Close();
            return alinanlar;
        }*/
    }
}