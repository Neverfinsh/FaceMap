package com.system.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.ShareContent;


/**
 * 
 * 
 * @author Lw
 * 2017年3月22日
 * TODO
 */

@Repository
public interface ShareContentMapper {
  public  boolean  addShareContent(ShareContent share);//增加一条记录
  public  List<ShareContent> findById(int userid);//通过session中的id进行查询
  
}
