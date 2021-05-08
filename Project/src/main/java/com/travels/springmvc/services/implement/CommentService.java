package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Comment;
import com.travels.springmvc.services.ICommentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CommentService extends GenericsService<Comment, String> implements ICommentService {

}
