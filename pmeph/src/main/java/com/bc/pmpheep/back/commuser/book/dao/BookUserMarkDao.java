package com.bc.pmpheep.back.commuser.book.dao;

import org.springframework.stereotype.Repository;

import com.bc.pmpheep.back.commuser.book.bean.BookUserMark;

@Repository
public interface BookUserMarkDao {

    /**
     * BookUserMark
     * 
     * @param BookUserMark 实体对象
     * @return 影响行数
     */
    Integer addBookUserMark(BookUserMark bookUserMark);

    /**
     * 删除BookUserMark 通过主键id
     * 
     * @param BookUserMark
     * @return 影响行数
     */
    Integer deleteBookUserMarkById(Long id);

    /**
     * 更新一个 BookUserMark通过主键id
     * 
     * @param BookUserMark
     * @return 影响行数
     */
    Integer updateBookUserMark(BookUserMark bookUserMark);

    /**
     * 查询一个 BookUserMark 通过主键id
     * 
     * @param BookUserMark 必须包含主键ID
     * @return BookUserMark
     */
    BookUserMark getBookUserMarkById(Long id);

    /**
     * 
     * 
     * 功能描述：根据书籍id删除书籍收藏
     * 
     * @param bookId 书籍id
     * @return
     * 
     */
    Integer deleteBookUserMarkByBookId(Long bookId);
}
