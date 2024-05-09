package com.example.nike.Controller;

import com.example.nike.Model.DBConnection;
import com.example.nike.Model.ProductImage;
import com.example.nike.Model.ShopByIcons;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class IconsHandler {
    private static DBConnection dbConnection = new DBConnection();

    public static ArrayList<ShopByIcons> getData(){
        Connection conn = dbConnection.connectionClass();
        ArrayList<ShopByIcons> list = new ArrayList<>();
        if(conn!=null){
            String query = "Select * from product_icons";
            try {
                Statement smt = conn.createStatement();
                ResultSet rs = smt.executeQuery(query);
                while(rs.next()){
                    ShopByIcons i = new ShopByIcons();
                    i.setId(rs.getInt(1));
                    i.setName(rs.getString(2));
                    i.setThumbnail(rs.getString(3));
                    list.add(i);

                }
                conn.close();
            }catch (SQLException e){
                throw new RuntimeException(e);
            }
        }
        return list;
    }
}