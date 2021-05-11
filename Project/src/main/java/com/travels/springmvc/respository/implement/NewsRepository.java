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
        if (news.getImage() == null || news.getImage().isBlank())
            throw new Exception("Không để trống hình ảnh");
        if (news.getLong_description() == null || news.getLong_description().isBlank())
            throw new Exception("Không để trống mô tả dài ");
        if (news.getShort_description() == null || news.getShort_description().isBlank())
            throw new Exception("Không để trống mô tả ngắn");
        if (news.getTitle() == null || news.getTitle().isBlank())
            throw new Exception("Không để trống tiêu đề");
        return true;
    }


}
