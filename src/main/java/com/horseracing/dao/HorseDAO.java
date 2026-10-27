package com.horseracing.dao;

import com.horseracing.model.Horse;
import com.horseracing.util.DBContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HorseDAO {
    public List<Horse> getAllHorses() {
        List<Horse> list = new ArrayList<>();
        String sql = "SELECT * FROM Horses WHERE status = 'Active'";
        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                list.add(new Horse(
                    rs.getInt("horse_id"),
                    rs.getString("microchip_id"),
                    rs.getString("horse_name"),
                    rs.getString("gender"),
                    rs.getDate("dob"),
                    rs.getString("color"),
                    rs.getInt("stable_id"),
                    rs.getString("status")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
