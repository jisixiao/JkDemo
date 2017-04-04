package com.demo.po;

public class Menu {
    private String fModuleid;//菜单id

    private String fParentid;//父菜单id

    private String fEncode;//菜单英文名称

    private String fFullname;//菜单中文名称

    private String fIcon;//图表

    private String fUrladdress;//菜单路径

    private String fTarget;//打开方式 iframe，new Table,_self

    private Integer fIsmenu;//

    private Integer fAllowexpand;//是否允许编辑

    private Integer fIspublic;//是否公开

    private String fAllowedit;//是否允许编辑

    private String fAllowdelete;//是否允许删除

    private Integer fSortcode;//排序

    private Integer fDeletemark;

    private Integer fEnabledmark;//删除标记

    private String fDescription;//描述

    private String fCreatedate;//创建时间

    private String fCreateuserid;//创建用户id

    private String fCreateusername;//创建者name

    private String fModifydate;//"2015-11-17 11:22:46",最后修改时间

    private String fModifyuserid;//最后修改者id

    private String fModifyusername;//最后修改者name

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
}