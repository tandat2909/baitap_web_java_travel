package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Comment;
import com.travels.springmvc.respository.ICommentRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class CommentRepository extends GenericsRepository<Comment, String> implements ICommentRepository {
}
