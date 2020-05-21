package com.krahs123.wathis.service.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.board.ArticleDAO;
import com.krahs123.wathis.repository.board.ArticleDAOImpl;

@Service
public class AriticleServiceImpl implements AriticleService{
	@Autowired
	ArticleDAO articleDAO;
}
