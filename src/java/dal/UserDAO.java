/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author hungk
 */
public class UserDAO extends DBContext {

    public List<User> selectAllUsersByRole(int roleID) {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM [TimiBank].[dbo].[User] WHERE RoleID = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, roleID);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                // Tạo User Manager nếu có ManageID
                User manager = null;
                int managerID = rs.getInt("ManageID");
                if (!rs.wasNull()) {
                    manager = getUserByID(managerID); // Lấy thông tin Manager từ ID
                }

                // Tạo đối tượng User từ dữ liệu
                User userToAdd = new User(
                        rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Image"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("Address"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        manager, // Đối tượng Manager (có thể null)
                        rs.getDate("CreatedAt")
                );
                userList.add(userToAdd);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Debug lỗi nếu có
        }
        return userList;
    }

    // Hàm lấy User theo UserID (hỗ trợ lấy Manager)
    private User getUserByID(int userID) {
        String sql = "SELECT * FROM [TimiBank].[dbo].[User] WHERE UserID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userID);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getInt("UserID"),
                        rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getString("FullName"),
                        rs.getString("Image"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getDate("DateOfBirth"),
                        rs.getBoolean("Gender"),
                        rs.getString("Address"),
                        rs.getString("CCCD"),
                        rs.getInt("RoleID"),
                        rs.getBoolean("Status"),
                        null, // Không cần đệ quy lấy tiếp Manager
                        rs.getDate("CreatedAt")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int countUsersByRole(int roleID) {
        int userCount = 0;
        String sql = "SELECT COUNT(*) FROM [TimiBank].[dbo].[User] WHERE RoleID = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, roleID); // Set RoleID vào câu truy vấn
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                userCount = rs.getInt(1); // Lấy kết quả từ COUNT(*)
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Debug lỗi nếu có
        }

        return userCount;
    }
    


}
