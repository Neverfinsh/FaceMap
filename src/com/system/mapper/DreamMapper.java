package com.system.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.Dream;

@Repository
public interface DreamMapper {
  public boolean addDream(Dream dream);//增加一条梦想的内容 (梦想从未消失，只会记住在心里)
  public List<Dream> findById(int userid);
	
}
