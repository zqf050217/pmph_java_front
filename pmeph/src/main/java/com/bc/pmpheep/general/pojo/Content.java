package com.bc.pmpheep.general.pojo;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.annotation.Id;
import java.io.Serializable;

/**
 * @Author: SuiXinYang
 * @Description: MongoDB CMS内容对象
 * @Date: Created in 10:10 2017/11/15
 * @Modified: SuiXinYang
 **/
@SuppressWarnings("all")
@Document(collection = "cms_content")
public class Content implements Serializable{

    @Id
    private String id;
    private String content;

    public Content() {
        super();
    }

    public Content(String content) {
        this.content = content;
    }

    public Content(String id, String content) {
        super();
        this.id = id;
        this.content = content;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }
}
