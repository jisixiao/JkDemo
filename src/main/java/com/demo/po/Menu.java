package com.demo.po;

public class Menu {
    private String fModuleid;

    private String fParentid;

    private String fEncode;

    private String fFullname;

    private String fIcon;

    private String fUrladdress;

    private String fTarget;

    private Integer fIsmenu;

    private Integer fAllowexpand;

    private Integer fIspublic;

    private String fAllowedit;

    private String fAllowdelete;

    private Integer fSortcode;

    private Integer fDeletemark;

    private Integer fEnabledmark;

    private String fDescription;

    private String fCreatedate;

    private String fCreateuserid;

    private String fCreateusername;

    private String fModifydate;

    private String fModifyuserid;

    private String fModifyusername;

    private boolean open;

    public String getfModuleid() {
        return fModuleid;
    }

    public void setfModuleid(String fModuleid) {
        this.fModuleid = fModuleid == null ? null : fModuleid.trim();
    }

    public String getfParentid() {
        return fParentid;
    }

    public void setfParentid(String fParentid) {
        this.fParentid = fParentid == null ? null : fParentid.trim();
    }

    public String getfEncode() {
        return fEncode;
    }

    public void setfEncode(String fEncode) {
        this.fEncode = fEncode == null ? null : fEncode.trim();
    }

    public String getfFullname() {
        return fFullname;
    }

    public void setfFullname(String fFullname) {
        this.fFullname = fFullname == null ? null : fFullname.trim();
    }

    public String getfIcon() {
        return fIcon;
    }

    public void setfIcon(String fIcon) {
        this.fIcon = fIcon == null ? null : fIcon.trim();
    }

    public String getfUrladdress() {
        return fUrladdress;
    }

    public void setfUrladdress(String fUrladdress) {
        this.fUrladdress = fUrladdress == null ? null : fUrladdress.trim();
    }

    public String getfTarget() {
        return fTarget;
    }

    public void setfTarget(String fTarget) {
        this.fTarget = fTarget == null ? null : fTarget.trim();
    }

    public Integer getfIsmenu() {
        return fIsmenu;
    }

    public void setfIsmenu(Integer fIsmenu) {
        this.fIsmenu = fIsmenu;
    }

    public Integer getfAllowexpand() {
        return fAllowexpand;
    }

    public void setfAllowexpand(Integer fAllowexpand) {
        this.fAllowexpand = fAllowexpand;
    }

    public Integer getfIspublic() {
        return fIspublic;
    }

    public void setfIspublic(Integer fIspublic) {
        this.fIspublic = fIspublic;
    }

    public String getfAllowedit() {
        return fAllowedit;
    }

    public void setfAllowedit(String fAllowedit) {
        this.fAllowedit = fAllowedit == null ? null : fAllowedit.trim();
    }

    public String getfAllowdelete() {
        return fAllowdelete;
    }

    public void setfAllowdelete(String fAllowdelete) {
        this.fAllowdelete = fAllowdelete == null ? null : fAllowdelete.trim();
    }

    public Integer getfSortcode() {
        return fSortcode;
    }

    public void setfSortcode(Integer fSortcode) {
        this.fSortcode = fSortcode;
    }

    public Integer getfDeletemark() {
        return fDeletemark;
    }

    public void setfDeletemark(Integer fDeletemark) {
        this.fDeletemark = fDeletemark;
    }

    public Integer getfEnabledmark() {
        return fEnabledmark;
    }

    public void setfEnabledmark(Integer fEnabledmark) {
        this.fEnabledmark = fEnabledmark;
    }

    public String getfDescription() {
        return fDescription;
    }

    public void setfDescription(String fDescription) {
        this.fDescription = fDescription == null ? null : fDescription.trim();
    }

    public String getfCreatedate() {
        return fCreatedate;
    }

    public void setfCreatedate(String fCreatedate) {
        this.fCreatedate = fCreatedate == null ? null : fCreatedate.trim();
    }

    public String getfCreateuserid() {
        return fCreateuserid;
    }

    public void setfCreateuserid(String fCreateuserid) {
        this.fCreateuserid = fCreateuserid == null ? null : fCreateuserid.trim();
    }

    public String getfCreateusername() {
        return fCreateusername;
    }

    public void setfCreateusername(String fCreateusername) {
        this.fCreateusername = fCreateusername == null ? null : fCreateusername.trim();
    }

    public String getfModifydate() {
        return fModifydate;
    }

    public void setfModifydate(String fModifydate) {
        this.fModifydate = fModifydate == null ? null : fModifydate.trim();
    }

    public String getfModifyuserid() {
        return fModifyuserid;
    }

    public void setfModifyuserid(String fModifyuserid) {
        this.fModifyuserid = fModifyuserid == null ? null : fModifyuserid.trim();
    }

    public String getfModifyusername() {
        return fModifyusername;
    }

    public void setfModifyusername(String fModifyusername) {
        this.fModifyusername = fModifyusername == null ? null : fModifyusername.trim();
    }

    public boolean getOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }
}