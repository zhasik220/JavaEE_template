package db;

import moduls.Item;
import moduls.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/bitlab_shop",
                            "zhasik",
                            "bitlab123");
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Item> getAllItems(){
        ArrayList<Item> items=new ArrayList<>();
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("SELECT * FROM items");
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                Item item=new Item();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }

    public static ArrayList<User> getAllUsers(){
        ArrayList<User> users=new ArrayList<>();
        try {
            PreparedStatement statement= connection.prepareStatement
                    ("SELECT * FROM users");
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                User user=new User();
                user.setId(resultSet.getLong("id"));
                user.setFullName(resultSet.getString("full_name"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                users.add(user);
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }

    public static User getUser(String email){
        User user=null;
        try {
            PreparedStatement statement= connection.prepareStatement
                    ("SELECT * FROM users WHERE email=?");
            statement.setString(1,email);
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                user=new User();
                user.setId(resultSet.getLong("id"));
                user.setFullName(resultSet.getString("full_name"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
            }
            statement.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }


}
