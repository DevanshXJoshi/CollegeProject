package com.digitalbd;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

import TicketSystemInterface.DatabaseModel;

public class User implements DatabaseModel {
    public String id, name, email, phone, password, rule, reg_date, last_activity, address;
    public Database db;
    String dbTable = "users";

    public User() {
        this.defaultConstructorData();
    }

    public User(String argId) {
        this.defaultConstructorData();
        this.setUserFromId(argId);
    }

    private void defaultConstructorData() {
        this.id = this.name = this.email = this.phone = this.password = this.rule = this.reg_date = this.last_activity = this.address = "";
        this.db = new Database();
    }

    public void setUserFromId(String argId) {
        String sqlArg = "SELECT * FROM " + this.GetTableName() + " WHERE id='" + argId + "'";
        try {
            ResultSet result = this.db.statement.executeQuery(sqlArg);
            if (result.next()) {
                this.name = result.getString("name");
                this.id = result.getString("id");
                this.email = result.getString("email");
                this.phone = result.getString("phone");
                this.rule = result.getString("rule");
                this.address = result.getString("address");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean isEmailOrPhoneExist(String phoneOrEmail) {
        boolean isExist = false;
        String queryString = "SELECT * FROM " + this.GetTableName() + " WHERE phone = '" + phoneOrEmail + "' OR email = '" + phoneOrEmail + "'";
        try {
            ResultSet result = this.db.statement.executeQuery(queryString);
            isExist = result.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isExist;
    }

    public long doLogin(String argUser, String argPass) {
        long returnData = 0;
        String queryString = "SELECT id FROM " + this.GetTableName() + " WHERE (phone = '" + argUser + "' OR email = '" + argUser + "') AND password = '" + argPass + "'";
        try {
            ResultSet result = this.db.statement.executeQuery(queryString);
            if (result.next()) {
                returnData = Long.parseLong(result.getString("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return returnData;
    }

    public void setUserSession(HttpSession sessionArg) {
        sessionArg.setAttribute("user_id", this.id);
    }

    @Override
    public int Save() {
        // Implement Save logic if needed
        return 0;
    }

    @Override
    public int Update() {
        // Implement Update logic if needed
        return 0;
    }

    @Override
    public void Delete() {
        // Implement Delete logic if needed
    }

    @Override
    public String GetTableName() {
        return this.dbTable;
    }

    public boolean registerUser() {
        long userId = this.insertNew();
        return userId != 0;
    }

    private long insertNew() {
        long lastUserId = 0;
        if (this.isEmailOrPhoneExist(email) || this.isEmailOrPhoneExist(phone)) {
            return lastUserId;
        }
        String sqlQuery = "INSERT INTO " + this.GetTableName() +
                "(name, email, phone, password, address, rule) " +
                "VALUES('" + this.name + "', '" + this.email + "', '" + this.phone + "', '" + this.password + "', '" + this.address + "', '" + this.rule + "')";
        try {
            this.db.statement.executeUpdate(sqlQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet generatedKeys = this.db.statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                lastUserId = generatedKeys.getLong(1);
            }
        } catch (Exception e) {
            System.out.println("User.insertNew: " + e.getMessage());
        }
        return lastUserId;
    }

    public String checkRegisValidation() {
        String msg = null;
        if (this.name == null || this.name.isEmpty()) {
            msg = "User Full Name Required!";
        } else if (this.email == null || this.email.isEmpty()) {
            msg = "Email is Required!";
        } else if (this.password == null || this.password.isEmpty()) {
            msg = "Password is Required!";
        } else if (this.phone == null || this.phone.isEmpty()) {
            msg = "Phone is Required!";
        }
        return msg;
    }
}
