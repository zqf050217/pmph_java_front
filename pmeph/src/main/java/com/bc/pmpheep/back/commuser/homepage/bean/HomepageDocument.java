package com.bc.pmpheep.back.commuser.homepage.bean;

import java.sql.Timestamp;

public class HomepageDocument {

	//主键
	private Long id;
	//上级id
	private Long parent_id;
	//根节点路径
	private String path;
	//内容id
	private String mid;
	//内容类型
	private Long category_id;
	//内容标题
	private String title;
	//摘要
	private String summary;
	//关键字
	private String keyword;
	//作者类型
	private Short author_type;
	//作者id
	private Long author_id;
	//点击数
	private Long clicks;
	//评论数
	private Long comments;
	//点赞数
	private Long likes;
	//收藏数
	private Long bookmarks;
	//是否分类置顶
	private Boolean is_stick;
	//分类显示顺序
	private Integer sort;
	//置顶到期时间
	private Timestamp deadline_stick;
	//是否热门
	private Boolean is_hot;
	//热门显示顺序
	private Integer sort_hot;
	//热门到期时间
	private Timestamp deadline_hot;
	//是否推荐
	private Boolean is_promote;
	//推荐显示顺序
	private Integer sort_promote;
	//推荐到期时间
	private Timestamp deadline_promote;
	//是否定时发布
	private Boolean is_scheduled;
	//是否隐藏
	private Boolean is_hide;
	//是否已发布
	private Boolean is_published;
	//审核状态
	private Boolean auth_status;
	//审核者id
	private Long auth_user_id;
	//是否暂存
	private Boolean is_staging;
	//审核通过时间
	private Timestamp auth_date;
	//是否被逻辑删除
	private Boolean is_deleted;
	//创建时间
	private Timestamp gmt_create;
	//修改时间
	private Timestamp gmt_update;
	//再次编辑时间
	private Timestamp gmt_reedit;
	//教材id
	private Long material_id;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getParent_id() {
		return parent_id;
	}
	public void setParent_id(Long parent_id) {
		this.parent_id = parent_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public Long getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Long category_id) {
		this.category_id = category_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Short getAuthor_type() {
		return author_type;
	}
	public void setAuthor_type(Short author_type) {
		this.author_type = author_type;
	}
	public Long getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(Long author_id) {
		this.author_id = author_id;
	}
	public Long getClicks() {
		return clicks;
	}
	public void setClicks(Long clicks) {
		this.clicks = clicks;
	}
	public Long getComments() {
		return comments;
	}
	public void setComments(Long comments) {
		this.comments = comments;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Long getBookmarks() {
		return bookmarks;
	}
	public void setBookmarks(Long bookmarks) {
		this.bookmarks = bookmarks;
	}
	public Boolean getIs_stick() {
		return is_stick;
	}
	public void setIs_stick(Boolean is_stick) {
		this.is_stick = is_stick;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Timestamp getDeadline_stick() {
		return deadline_stick;
	}
	public void setDeadline_stick(Timestamp deadline_stick) {
		this.deadline_stick = deadline_stick;
	}
	public Boolean getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Boolean is_hot) {
		this.is_hot = is_hot;
	}
	public Integer getSort_hot() {
		return sort_hot;
	}
	public void setSort_hot(Integer sort_hot) {
		this.sort_hot = sort_hot;
	}
	public Timestamp getDeadline_hot() {
		return deadline_hot;
	}
	public void setDeadline_hot(Timestamp deadline_hot) {
		this.deadline_hot = deadline_hot;
	}
	public Boolean getIs_promote() {
		return is_promote;
	}
	public void setIs_promote(Boolean is_promote) {
		this.is_promote = is_promote;
	}
	public Integer getSort_promote() {
		return sort_promote;
	}
	public void setSort_promote(Integer sort_promote) {
		this.sort_promote = sort_promote;
	}
	public Timestamp getDeadline_promote() {
		return deadline_promote;
	}
	public void setDeadline_promote(Timestamp deadline_promote) {
		this.deadline_promote = deadline_promote;
	}
	public Boolean getIs_scheduled() {
		return is_scheduled;
	}
	public void setIs_scheduled(Boolean is_scheduled) {
		this.is_scheduled = is_scheduled;
	}
	public Boolean getIs_hide() {
		return is_hide;
	}
	public void setIs_hide(Boolean is_hide) {
		this.is_hide = is_hide;
	}
	public Boolean getIs_published() {
		return is_published;
	}
	public void setIs_published(Boolean is_published) {
		this.is_published = is_published;
	}
	public Boolean getAuth_status() {
		return auth_status;
	}
	public void setAuth_status(Boolean auth_status) {
		this.auth_status = auth_status;
	}
	public Long getAuth_user_id() {
		return auth_user_id;
	}
	public void setAuth_user_id(Long auth_user_id) {
		this.auth_user_id = auth_user_id;
	}
	public Boolean getIs_staging() {
		return is_staging;
	}
	public void setIs_staging(Boolean is_staging) {
		this.is_staging = is_staging;
	}
	public Timestamp getAuth_date() {
		return auth_date;
	}
	public void setAuth_date(Timestamp auth_date) {
		this.auth_date = auth_date;
	}
	public Boolean getIs_deleted() {
		return is_deleted;
	}
	public void setIs_deleted(Boolean is_deleted) {
		this.is_deleted = is_deleted;
	}
	public Timestamp getGmt_create() {
		return gmt_create;
	}
	public void setGmt_create(Timestamp gmt_create) {
		this.gmt_create = gmt_create;
	}
	public Timestamp getGmt_update() {
		return gmt_update;
	}
	public void setGmt_update(Timestamp gmt_update) {
		this.gmt_update = gmt_update;
	}
	public Timestamp getGmt_reedit() {
		return gmt_reedit;
	}
	public void setGmt_reedit(Timestamp gmt_reedit) {
		this.gmt_reedit = gmt_reedit;
	}
	public Long getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(Long material_id) {
		this.material_id = material_id;
	}
	
	
}
