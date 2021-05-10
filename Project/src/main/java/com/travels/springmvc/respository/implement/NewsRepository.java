package com.travels.springmvc.respository.implement;


import com.travels.springmvc.pojo.News;
import com.travels.springmvc.respository.INewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.regex.Pattern;

@Transactional
@Repository
public class NewsRepository extends GenericsRepository<News, String> implements INewsRepository {


    @Override
    public void save(News news) throws Exception {
        try {
            if(news.getLong_description() == null || news.getLong_description().isEmpty())
            {
                throw new Exception("lỗi để trống nội dung");
            }
            save(news,true);
        }catch (Exception ex){
            throw new Exception(ex.getMessage());
        }

    }

    @Override
    public boolean isvalid(News news) throws Exception {
        if (news.getImage() == null)
            throw new Exception("không để trống hình ảnh");
        if (news.getLong_description() == null)
            throw new Exception("không để trống mô tả dài ");
        if (news.getShort_description() == null)
            throw new Exception("không để trống mô tả ngắn");
        if (news.getTitle() == null)
            throw new Exception("không để trống tiêu đề");
        return true;
    }


}
