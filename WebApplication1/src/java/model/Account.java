/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author unknown_HUST
 */
public class Account {
    public String userCode;
    public String userName;
    public String userPass;
    public String userRole;
    public String fullName;
    public String cityOrSchool;
    public String userEmail;
    public String phoneNumber;
    public String userAddres;
    public String userCountry;

    public Account() {
    }
  
    public Account(String userCode, String userName, String userPass, String userRole, String fullName, String cityOrSchool, String userEmail, String phoneNumber, String userAddres, String userCountry) {
        this.userCode = userCode;
        this.userName = userName;
        this.userPass = userPass;
        this.userRole = userRole;
        this.fullName = fullName;
        this.cityOrSchool = cityOrSchool;
        this.userEmail = userEmail;
        this.phoneNumber = phoneNumber;
        this.userAddres = userAddres;
        this.userCountry = userCountry;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCityOrSchool() {
        return cityOrSchool;
    }

    public void setCityOrSchool(String cityOrSchool) {
        this.cityOrSchool = cityOrSchool;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUserAddres() {
        return userAddres;
    }

    public void setUserAddres(String userAddres) {
        this.userAddres = userAddres;
    }

    public String getUserCountry() {
        return userCountry;
    }

    public void setUserCountry(String userCountry) {
        this.userCountry = userCountry;
    }

    public long getUserCode(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
