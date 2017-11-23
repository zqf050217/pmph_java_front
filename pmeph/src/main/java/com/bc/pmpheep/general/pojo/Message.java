package com.bc.pmpheep.general.pojo;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.annotation.Id;
import java.io.Serializable;

/**
 * @Author: SuiXinYang
 * @Description: MongoDB 系统消息对象
 * @Date: Created in 10:14 2017/11/15
 * @Modified: SuiXinYang
 **/
@SuppressWarnings("all")
@Document(collection = "message")
public class Message implements Serializable{
    @Id
    private String id;
    private String content;

    public Message() {
        super();
    }

    public Message(String content) {
        this.content = content;
    }

    public Message(String id, String content) {
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
