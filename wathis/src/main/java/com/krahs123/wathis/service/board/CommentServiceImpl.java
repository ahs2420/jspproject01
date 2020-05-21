package com.krahs123.wathis.service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.board.CommentDAO;

@Service
public class CommentServiceImpl implements CommentService{
	@Autowired
	CommentDAO commentDAO;
}
