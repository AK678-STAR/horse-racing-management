package com.horseracing.model;

import java.sql.Date;

public class Horse {
    private int horseId;
    private String microchipId;
    private String horseName;
    private String gender;
    private Date dob;
    private String color;
    private int stableId;
    private String status;

    public Horse() {}

    public Horse(int horseId, String microchipId, String horseName, String gender, Date dob, String color, int stableId, String status) {
        this.horseId = horseId;
        this.microchipId = microchipId;
        this.horseName = horseName;
        this.gender = gender;
        this.dob = dob;
        this.color = color;
        this.stableId = stableId;
        this.status = status;
    }

    public int getHorseId() { return horseId; }
    public void setHorseId(int horseId) { this.horseId = horseId; }
    public String getMicrochipId() { return microchipId; }
    public void setMicrochipId(String microchipId) { this.microchipId = microchipId; }
    public String getHorseName() { return horseName; }
    public void setHorseName(String horseName) { this.horseName = horseName; }
    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }
    public Date getDob() { return dob; }
    public void setDob(Date dob) { this.dob = dob; }
    public String getColor() { return color; }
    public void setColor(String color) { this.color = color; }
    public int getStableId() { return stableId; }
    public void setStableId(int stableId) { this.stableId = stableId; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
