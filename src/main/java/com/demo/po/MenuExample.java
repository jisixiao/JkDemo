package com.demo.po;

import java.util.ArrayList;
import java.util.List;

public class MenuExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MenuExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andFModuleidIsNull() {
            addCriterion("F_ModuleId is null");
            return (Criteria) this;
        }

        public Criteria andFModuleidIsNotNull() {
            addCriterion("F_ModuleId is not null");
            return (Criteria) this;
        }

        public Criteria andFModuleidEqualTo(String value) {
            addCriterion("F_ModuleId =", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidNotEqualTo(String value) {
            addCriterion("F_ModuleId <>", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidGreaterThan(String value) {
            addCriterion("F_ModuleId >", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidGreaterThanOrEqualTo(String value) {
            addCriterion("F_ModuleId >=", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidLessThan(String value) {
            addCriterion("F_ModuleId <", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidLessThanOrEqualTo(String value) {
            addCriterion("F_ModuleId <=", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidLike(String value) {
            addCriterion("F_ModuleId like", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidNotLike(String value) {
            addCriterion("F_ModuleId not like", value, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidIn(List<String> values) {
            addCriterion("F_ModuleId in", values, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidNotIn(List<String> values) {
            addCriterion("F_ModuleId not in", values, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidBetween(String value1, String value2) {
            addCriterion("F_ModuleId between", value1, value2, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFModuleidNotBetween(String value1, String value2) {
            addCriterion("F_ModuleId not between", value1, value2, "fModuleid");
            return (Criteria) this;
        }

        public Criteria andFParentidIsNull() {
            addCriterion("F_ParentId is null");
            return (Criteria) this;
        }

        public Criteria andFParentidIsNotNull() {
            addCriterion("F_ParentId is not null");
            return (Criteria) this;
        }

        public Criteria andFParentidEqualTo(String value) {
            addCriterion("F_ParentId =", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidNotEqualTo(String value) {
            addCriterion("F_ParentId <>", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidGreaterThan(String value) {
            addCriterion("F_ParentId >", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidGreaterThanOrEqualTo(String value) {
            addCriterion("F_ParentId >=", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidLessThan(String value) {
            addCriterion("F_ParentId <", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidLessThanOrEqualTo(String value) {
            addCriterion("F_ParentId <=", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidLike(String value) {
            addCriterion("F_ParentId like", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidNotLike(String value) {
            addCriterion("F_ParentId not like", value, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidIn(List<String> values) {
            addCriterion("F_ParentId in", values, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidNotIn(List<String> values) {
            addCriterion("F_ParentId not in", values, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidBetween(String value1, String value2) {
            addCriterion("F_ParentId between", value1, value2, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFParentidNotBetween(String value1, String value2) {
            addCriterion("F_ParentId not between", value1, value2, "fParentid");
            return (Criteria) this;
        }

        public Criteria andFEncodeIsNull() {
            addCriterion("F_EnCode is null");
            return (Criteria) this;
        }

        public Criteria andFEncodeIsNotNull() {
            addCriterion("F_EnCode is not null");
            return (Criteria) this;
        }

        public Criteria andFEncodeEqualTo(String value) {
            addCriterion("F_EnCode =", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeNotEqualTo(String value) {
            addCriterion("F_EnCode <>", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeGreaterThan(String value) {
            addCriterion("F_EnCode >", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeGreaterThanOrEqualTo(String value) {
            addCriterion("F_EnCode >=", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeLessThan(String value) {
            addCriterion("F_EnCode <", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeLessThanOrEqualTo(String value) {
            addCriterion("F_EnCode <=", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeLike(String value) {
            addCriterion("F_EnCode like", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeNotLike(String value) {
            addCriterion("F_EnCode not like", value, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeIn(List<String> values) {
            addCriterion("F_EnCode in", values, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeNotIn(List<String> values) {
            addCriterion("F_EnCode not in", values, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeBetween(String value1, String value2) {
            addCriterion("F_EnCode between", value1, value2, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFEncodeNotBetween(String value1, String value2) {
            addCriterion("F_EnCode not between", value1, value2, "fEncode");
            return (Criteria) this;
        }

        public Criteria andFFullnameIsNull() {
            addCriterion("F_FullName is null");
            return (Criteria) this;
        }

        public Criteria andFFullnameIsNotNull() {
            addCriterion("F_FullName is not null");
            return (Criteria) this;
        }

        public Criteria andFFullnameEqualTo(String value) {
            addCriterion("F_FullName =", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameNotEqualTo(String value) {
            addCriterion("F_FullName <>", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameGreaterThan(String value) {
            addCriterion("F_FullName >", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameGreaterThanOrEqualTo(String value) {
            addCriterion("F_FullName >=", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameLessThan(String value) {
            addCriterion("F_FullName <", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameLessThanOrEqualTo(String value) {
            addCriterion("F_FullName <=", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameLike(String value) {
            addCriterion("F_FullName like", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameNotLike(String value) {
            addCriterion("F_FullName not like", value, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameIn(List<String> values) {
            addCriterion("F_FullName in", values, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameNotIn(List<String> values) {
            addCriterion("F_FullName not in", values, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameBetween(String value1, String value2) {
            addCriterion("F_FullName between", value1, value2, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFFullnameNotBetween(String value1, String value2) {
            addCriterion("F_FullName not between", value1, value2, "fFullname");
            return (Criteria) this;
        }

        public Criteria andFIconIsNull() {
            addCriterion("F_Icon is null");
            return (Criteria) this;
        }

        public Criteria andFIconIsNotNull() {
            addCriterion("F_Icon is not null");
            return (Criteria) this;
        }

        public Criteria andFIconEqualTo(String value) {
            addCriterion("F_Icon =", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconNotEqualTo(String value) {
            addCriterion("F_Icon <>", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconGreaterThan(String value) {
            addCriterion("F_Icon >", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconGreaterThanOrEqualTo(String value) {
            addCriterion("F_Icon >=", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconLessThan(String value) {
            addCriterion("F_Icon <", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconLessThanOrEqualTo(String value) {
            addCriterion("F_Icon <=", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconLike(String value) {
            addCriterion("F_Icon like", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconNotLike(String value) {
            addCriterion("F_Icon not like", value, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconIn(List<String> values) {
            addCriterion("F_Icon in", values, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconNotIn(List<String> values) {
            addCriterion("F_Icon not in", values, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconBetween(String value1, String value2) {
            addCriterion("F_Icon between", value1, value2, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFIconNotBetween(String value1, String value2) {
            addCriterion("F_Icon not between", value1, value2, "fIcon");
            return (Criteria) this;
        }

        public Criteria andFUrladdressIsNull() {
            addCriterion("F_UrlAddress is null");
            return (Criteria) this;
        }

        public Criteria andFUrladdressIsNotNull() {
            addCriterion("F_UrlAddress is not null");
            return (Criteria) this;
        }

        public Criteria andFUrladdressEqualTo(String value) {
            addCriterion("F_UrlAddress =", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressNotEqualTo(String value) {
            addCriterion("F_UrlAddress <>", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressGreaterThan(String value) {
            addCriterion("F_UrlAddress >", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressGreaterThanOrEqualTo(String value) {
            addCriterion("F_UrlAddress >=", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressLessThan(String value) {
            addCriterion("F_UrlAddress <", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressLessThanOrEqualTo(String value) {
            addCriterion("F_UrlAddress <=", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressLike(String value) {
            addCriterion("F_UrlAddress like", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressNotLike(String value) {
            addCriterion("F_UrlAddress not like", value, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressIn(List<String> values) {
            addCriterion("F_UrlAddress in", values, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressNotIn(List<String> values) {
            addCriterion("F_UrlAddress not in", values, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressBetween(String value1, String value2) {
            addCriterion("F_UrlAddress between", value1, value2, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFUrladdressNotBetween(String value1, String value2) {
            addCriterion("F_UrlAddress not between", value1, value2, "fUrladdress");
            return (Criteria) this;
        }

        public Criteria andFTargetIsNull() {
            addCriterion("F_Target is null");
            return (Criteria) this;
        }

        public Criteria andFTargetIsNotNull() {
            addCriterion("F_Target is not null");
            return (Criteria) this;
        }

        public Criteria andFTargetEqualTo(String value) {
            addCriterion("F_Target =", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetNotEqualTo(String value) {
            addCriterion("F_Target <>", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetGreaterThan(String value) {
            addCriterion("F_Target >", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetGreaterThanOrEqualTo(String value) {
            addCriterion("F_Target >=", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetLessThan(String value) {
            addCriterion("F_Target <", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetLessThanOrEqualTo(String value) {
            addCriterion("F_Target <=", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetLike(String value) {
            addCriterion("F_Target like", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetNotLike(String value) {
            addCriterion("F_Target not like", value, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetIn(List<String> values) {
            addCriterion("F_Target in", values, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetNotIn(List<String> values) {
            addCriterion("F_Target not in", values, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetBetween(String value1, String value2) {
            addCriterion("F_Target between", value1, value2, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFTargetNotBetween(String value1, String value2) {
            addCriterion("F_Target not between", value1, value2, "fTarget");
            return (Criteria) this;
        }

        public Criteria andFIsmenuIsNull() {
            addCriterion("F_IsMenu is null");
            return (Criteria) this;
        }

        public Criteria andFIsmenuIsNotNull() {
            addCriterion("F_IsMenu is not null");
            return (Criteria) this;
        }

        public Criteria andFIsmenuEqualTo(Integer value) {
            addCriterion("F_IsMenu =", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuNotEqualTo(Integer value) {
            addCriterion("F_IsMenu <>", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuGreaterThan(Integer value) {
            addCriterion("F_IsMenu >", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_IsMenu >=", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuLessThan(Integer value) {
            addCriterion("F_IsMenu <", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuLessThanOrEqualTo(Integer value) {
            addCriterion("F_IsMenu <=", value, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuIn(List<Integer> values) {
            addCriterion("F_IsMenu in", values, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuNotIn(List<Integer> values) {
            addCriterion("F_IsMenu not in", values, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuBetween(Integer value1, Integer value2) {
            addCriterion("F_IsMenu between", value1, value2, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFIsmenuNotBetween(Integer value1, Integer value2) {
            addCriterion("F_IsMenu not between", value1, value2, "fIsmenu");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandIsNull() {
            addCriterion("F_AllowExpand is null");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandIsNotNull() {
            addCriterion("F_AllowExpand is not null");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandEqualTo(Integer value) {
            addCriterion("F_AllowExpand =", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandNotEqualTo(Integer value) {
            addCriterion("F_AllowExpand <>", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandGreaterThan(Integer value) {
            addCriterion("F_AllowExpand >", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_AllowExpand >=", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandLessThan(Integer value) {
            addCriterion("F_AllowExpand <", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandLessThanOrEqualTo(Integer value) {
            addCriterion("F_AllowExpand <=", value, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandIn(List<Integer> values) {
            addCriterion("F_AllowExpand in", values, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandNotIn(List<Integer> values) {
            addCriterion("F_AllowExpand not in", values, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandBetween(Integer value1, Integer value2) {
            addCriterion("F_AllowExpand between", value1, value2, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFAllowexpandNotBetween(Integer value1, Integer value2) {
            addCriterion("F_AllowExpand not between", value1, value2, "fAllowexpand");
            return (Criteria) this;
        }

        public Criteria andFIspublicIsNull() {
            addCriterion("F_IsPublic is null");
            return (Criteria) this;
        }

        public Criteria andFIspublicIsNotNull() {
            addCriterion("F_IsPublic is not null");
            return (Criteria) this;
        }

        public Criteria andFIspublicEqualTo(Integer value) {
            addCriterion("F_IsPublic =", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicNotEqualTo(Integer value) {
            addCriterion("F_IsPublic <>", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicGreaterThan(Integer value) {
            addCriterion("F_IsPublic >", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_IsPublic >=", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicLessThan(Integer value) {
            addCriterion("F_IsPublic <", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicLessThanOrEqualTo(Integer value) {
            addCriterion("F_IsPublic <=", value, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicIn(List<Integer> values) {
            addCriterion("F_IsPublic in", values, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicNotIn(List<Integer> values) {
            addCriterion("F_IsPublic not in", values, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicBetween(Integer value1, Integer value2) {
            addCriterion("F_IsPublic between", value1, value2, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFIspublicNotBetween(Integer value1, Integer value2) {
            addCriterion("F_IsPublic not between", value1, value2, "fIspublic");
            return (Criteria) this;
        }

        public Criteria andFAlloweditIsNull() {
            addCriterion("F_AllowEdit is null");
            return (Criteria) this;
        }

        public Criteria andFAlloweditIsNotNull() {
            addCriterion("F_AllowEdit is not null");
            return (Criteria) this;
        }

        public Criteria andFAlloweditEqualTo(String value) {
            addCriterion("F_AllowEdit =", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditNotEqualTo(String value) {
            addCriterion("F_AllowEdit <>", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditGreaterThan(String value) {
            addCriterion("F_AllowEdit >", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditGreaterThanOrEqualTo(String value) {
            addCriterion("F_AllowEdit >=", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditLessThan(String value) {
            addCriterion("F_AllowEdit <", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditLessThanOrEqualTo(String value) {
            addCriterion("F_AllowEdit <=", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditLike(String value) {
            addCriterion("F_AllowEdit like", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditNotLike(String value) {
            addCriterion("F_AllowEdit not like", value, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditIn(List<String> values) {
            addCriterion("F_AllowEdit in", values, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditNotIn(List<String> values) {
            addCriterion("F_AllowEdit not in", values, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditBetween(String value1, String value2) {
            addCriterion("F_AllowEdit between", value1, value2, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAlloweditNotBetween(String value1, String value2) {
            addCriterion("F_AllowEdit not between", value1, value2, "fAllowedit");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteIsNull() {
            addCriterion("F_AllowDelete is null");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteIsNotNull() {
            addCriterion("F_AllowDelete is not null");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteEqualTo(String value) {
            addCriterion("F_AllowDelete =", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteNotEqualTo(String value) {
            addCriterion("F_AllowDelete <>", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteGreaterThan(String value) {
            addCriterion("F_AllowDelete >", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteGreaterThanOrEqualTo(String value) {
            addCriterion("F_AllowDelete >=", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteLessThan(String value) {
            addCriterion("F_AllowDelete <", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteLessThanOrEqualTo(String value) {
            addCriterion("F_AllowDelete <=", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteLike(String value) {
            addCriterion("F_AllowDelete like", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteNotLike(String value) {
            addCriterion("F_AllowDelete not like", value, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteIn(List<String> values) {
            addCriterion("F_AllowDelete in", values, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteNotIn(List<String> values) {
            addCriterion("F_AllowDelete not in", values, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteBetween(String value1, String value2) {
            addCriterion("F_AllowDelete between", value1, value2, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFAllowdeleteNotBetween(String value1, String value2) {
            addCriterion("F_AllowDelete not between", value1, value2, "fAllowdelete");
            return (Criteria) this;
        }

        public Criteria andFSortcodeIsNull() {
            addCriterion("F_SortCode is null");
            return (Criteria) this;
        }

        public Criteria andFSortcodeIsNotNull() {
            addCriterion("F_SortCode is not null");
            return (Criteria) this;
        }

        public Criteria andFSortcodeEqualTo(Integer value) {
            addCriterion("F_SortCode =", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeNotEqualTo(Integer value) {
            addCriterion("F_SortCode <>", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeGreaterThan(Integer value) {
            addCriterion("F_SortCode >", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_SortCode >=", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeLessThan(Integer value) {
            addCriterion("F_SortCode <", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeLessThanOrEqualTo(Integer value) {
            addCriterion("F_SortCode <=", value, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeIn(List<Integer> values) {
            addCriterion("F_SortCode in", values, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeNotIn(List<Integer> values) {
            addCriterion("F_SortCode not in", values, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeBetween(Integer value1, Integer value2) {
            addCriterion("F_SortCode between", value1, value2, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFSortcodeNotBetween(Integer value1, Integer value2) {
            addCriterion("F_SortCode not between", value1, value2, "fSortcode");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkIsNull() {
            addCriterion("F_DeleteMark is null");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkIsNotNull() {
            addCriterion("F_DeleteMark is not null");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkEqualTo(Integer value) {
            addCriterion("F_DeleteMark =", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkNotEqualTo(Integer value) {
            addCriterion("F_DeleteMark <>", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkGreaterThan(Integer value) {
            addCriterion("F_DeleteMark >", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_DeleteMark >=", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkLessThan(Integer value) {
            addCriterion("F_DeleteMark <", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkLessThanOrEqualTo(Integer value) {
            addCriterion("F_DeleteMark <=", value, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkIn(List<Integer> values) {
            addCriterion("F_DeleteMark in", values, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkNotIn(List<Integer> values) {
            addCriterion("F_DeleteMark not in", values, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkBetween(Integer value1, Integer value2) {
            addCriterion("F_DeleteMark between", value1, value2, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFDeletemarkNotBetween(Integer value1, Integer value2) {
            addCriterion("F_DeleteMark not between", value1, value2, "fDeletemark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkIsNull() {
            addCriterion("F_EnabledMark is null");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkIsNotNull() {
            addCriterion("F_EnabledMark is not null");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkEqualTo(Integer value) {
            addCriterion("F_EnabledMark =", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkNotEqualTo(Integer value) {
            addCriterion("F_EnabledMark <>", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkGreaterThan(Integer value) {
            addCriterion("F_EnabledMark >", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("F_EnabledMark >=", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkLessThan(Integer value) {
            addCriterion("F_EnabledMark <", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkLessThanOrEqualTo(Integer value) {
            addCriterion("F_EnabledMark <=", value, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkIn(List<Integer> values) {
            addCriterion("F_EnabledMark in", values, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkNotIn(List<Integer> values) {
            addCriterion("F_EnabledMark not in", values, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkBetween(Integer value1, Integer value2) {
            addCriterion("F_EnabledMark between", value1, value2, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFEnabledmarkNotBetween(Integer value1, Integer value2) {
            addCriterion("F_EnabledMark not between", value1, value2, "fEnabledmark");
            return (Criteria) this;
        }

        public Criteria andFDescriptionIsNull() {
            addCriterion("F_Description is null");
            return (Criteria) this;
        }

        public Criteria andFDescriptionIsNotNull() {
            addCriterion("F_Description is not null");
            return (Criteria) this;
        }

        public Criteria andFDescriptionEqualTo(String value) {
            addCriterion("F_Description =", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionNotEqualTo(String value) {
            addCriterion("F_Description <>", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionGreaterThan(String value) {
            addCriterion("F_Description >", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("F_Description >=", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionLessThan(String value) {
            addCriterion("F_Description <", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionLessThanOrEqualTo(String value) {
            addCriterion("F_Description <=", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionLike(String value) {
            addCriterion("F_Description like", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionNotLike(String value) {
            addCriterion("F_Description not like", value, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionIn(List<String> values) {
            addCriterion("F_Description in", values, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionNotIn(List<String> values) {
            addCriterion("F_Description not in", values, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionBetween(String value1, String value2) {
            addCriterion("F_Description between", value1, value2, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFDescriptionNotBetween(String value1, String value2) {
            addCriterion("F_Description not between", value1, value2, "fDescription");
            return (Criteria) this;
        }

        public Criteria andFCreatedateIsNull() {
            addCriterion("F_CreateDate is null");
            return (Criteria) this;
        }

        public Criteria andFCreatedateIsNotNull() {
            addCriterion("F_CreateDate is not null");
            return (Criteria) this;
        }

        public Criteria andFCreatedateEqualTo(String value) {
            addCriterion("F_CreateDate =", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateNotEqualTo(String value) {
            addCriterion("F_CreateDate <>", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateGreaterThan(String value) {
            addCriterion("F_CreateDate >", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateGreaterThanOrEqualTo(String value) {
            addCriterion("F_CreateDate >=", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateLessThan(String value) {
            addCriterion("F_CreateDate <", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateLessThanOrEqualTo(String value) {
            addCriterion("F_CreateDate <=", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateLike(String value) {
            addCriterion("F_CreateDate like", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateNotLike(String value) {
            addCriterion("F_CreateDate not like", value, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateIn(List<String> values) {
            addCriterion("F_CreateDate in", values, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateNotIn(List<String> values) {
            addCriterion("F_CreateDate not in", values, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateBetween(String value1, String value2) {
            addCriterion("F_CreateDate between", value1, value2, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreatedateNotBetween(String value1, String value2) {
            addCriterion("F_CreateDate not between", value1, value2, "fCreatedate");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridIsNull() {
            addCriterion("F_CreateUserId is null");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridIsNotNull() {
            addCriterion("F_CreateUserId is not null");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridEqualTo(String value) {
            addCriterion("F_CreateUserId =", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridNotEqualTo(String value) {
            addCriterion("F_CreateUserId <>", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridGreaterThan(String value) {
            addCriterion("F_CreateUserId >", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridGreaterThanOrEqualTo(String value) {
            addCriterion("F_CreateUserId >=", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridLessThan(String value) {
            addCriterion("F_CreateUserId <", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridLessThanOrEqualTo(String value) {
            addCriterion("F_CreateUserId <=", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridLike(String value) {
            addCriterion("F_CreateUserId like", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridNotLike(String value) {
            addCriterion("F_CreateUserId not like", value, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridIn(List<String> values) {
            addCriterion("F_CreateUserId in", values, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridNotIn(List<String> values) {
            addCriterion("F_CreateUserId not in", values, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridBetween(String value1, String value2) {
            addCriterion("F_CreateUserId between", value1, value2, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateuseridNotBetween(String value1, String value2) {
            addCriterion("F_CreateUserId not between", value1, value2, "fCreateuserid");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameIsNull() {
            addCriterion("F_CreateUserName is null");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameIsNotNull() {
            addCriterion("F_CreateUserName is not null");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameEqualTo(String value) {
            addCriterion("F_CreateUserName =", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameNotEqualTo(String value) {
            addCriterion("F_CreateUserName <>", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameGreaterThan(String value) {
            addCriterion("F_CreateUserName >", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameGreaterThanOrEqualTo(String value) {
            addCriterion("F_CreateUserName >=", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameLessThan(String value) {
            addCriterion("F_CreateUserName <", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameLessThanOrEqualTo(String value) {
            addCriterion("F_CreateUserName <=", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameLike(String value) {
            addCriterion("F_CreateUserName like", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameNotLike(String value) {
            addCriterion("F_CreateUserName not like", value, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameIn(List<String> values) {
            addCriterion("F_CreateUserName in", values, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameNotIn(List<String> values) {
            addCriterion("F_CreateUserName not in", values, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameBetween(String value1, String value2) {
            addCriterion("F_CreateUserName between", value1, value2, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFCreateusernameNotBetween(String value1, String value2) {
            addCriterion("F_CreateUserName not between", value1, value2, "fCreateusername");
            return (Criteria) this;
        }

        public Criteria andFModifydateIsNull() {
            addCriterion("F_ModifyDate is null");
            return (Criteria) this;
        }

        public Criteria andFModifydateIsNotNull() {
            addCriterion("F_ModifyDate is not null");
            return (Criteria) this;
        }

        public Criteria andFModifydateEqualTo(String value) {
            addCriterion("F_ModifyDate =", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateNotEqualTo(String value) {
            addCriterion("F_ModifyDate <>", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateGreaterThan(String value) {
            addCriterion("F_ModifyDate >", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateGreaterThanOrEqualTo(String value) {
            addCriterion("F_ModifyDate >=", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateLessThan(String value) {
            addCriterion("F_ModifyDate <", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateLessThanOrEqualTo(String value) {
            addCriterion("F_ModifyDate <=", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateLike(String value) {
            addCriterion("F_ModifyDate like", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateNotLike(String value) {
            addCriterion("F_ModifyDate not like", value, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateIn(List<String> values) {
            addCriterion("F_ModifyDate in", values, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateNotIn(List<String> values) {
            addCriterion("F_ModifyDate not in", values, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateBetween(String value1, String value2) {
            addCriterion("F_ModifyDate between", value1, value2, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifydateNotBetween(String value1, String value2) {
            addCriterion("F_ModifyDate not between", value1, value2, "fModifydate");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridIsNull() {
            addCriterion("F_ModifyUserId is null");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridIsNotNull() {
            addCriterion("F_ModifyUserId is not null");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridEqualTo(String value) {
            addCriterion("F_ModifyUserId =", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridNotEqualTo(String value) {
            addCriterion("F_ModifyUserId <>", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridGreaterThan(String value) {
            addCriterion("F_ModifyUserId >", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridGreaterThanOrEqualTo(String value) {
            addCriterion("F_ModifyUserId >=", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridLessThan(String value) {
            addCriterion("F_ModifyUserId <", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridLessThanOrEqualTo(String value) {
            addCriterion("F_ModifyUserId <=", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridLike(String value) {
            addCriterion("F_ModifyUserId like", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridNotLike(String value) {
            addCriterion("F_ModifyUserId not like", value, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridIn(List<String> values) {
            addCriterion("F_ModifyUserId in", values, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridNotIn(List<String> values) {
            addCriterion("F_ModifyUserId not in", values, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridBetween(String value1, String value2) {
            addCriterion("F_ModifyUserId between", value1, value2, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyuseridNotBetween(String value1, String value2) {
            addCriterion("F_ModifyUserId not between", value1, value2, "fModifyuserid");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameIsNull() {
            addCriterion("F_ModifyUserName is null");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameIsNotNull() {
            addCriterion("F_ModifyUserName is not null");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameEqualTo(String value) {
            addCriterion("F_ModifyUserName =", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameNotEqualTo(String value) {
            addCriterion("F_ModifyUserName <>", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameGreaterThan(String value) {
            addCriterion("F_ModifyUserName >", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameGreaterThanOrEqualTo(String value) {
            addCriterion("F_ModifyUserName >=", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameLessThan(String value) {
            addCriterion("F_ModifyUserName <", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameLessThanOrEqualTo(String value) {
            addCriterion("F_ModifyUserName <=", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameLike(String value) {
            addCriterion("F_ModifyUserName like", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameNotLike(String value) {
            addCriterion("F_ModifyUserName not like", value, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameIn(List<String> values) {
            addCriterion("F_ModifyUserName in", values, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameNotIn(List<String> values) {
            addCriterion("F_ModifyUserName not in", values, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameBetween(String value1, String value2) {
            addCriterion("F_ModifyUserName between", value1, value2, "fModifyusername");
            return (Criteria) this;
        }

        public Criteria andFModifyusernameNotBetween(String value1, String value2) {
            addCriterion("F_ModifyUserName not between", value1, value2, "fModifyusername");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}