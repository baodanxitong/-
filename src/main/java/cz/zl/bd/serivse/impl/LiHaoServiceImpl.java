package cz.zl.bd.serivse.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.zl.bd.dao.ILiHaoDAO;
import cz.zl.bd.pojo.Info;
import cz.zl.bd.serivse.ILiHaoService;
@Service
public class LiHaoServiceImpl implements ILiHaoService {

	@Autowired
	private ILiHaoDAO lihaodao;
	@Override
	public List<Info> findInfo() {
		return lihaodao.findInfo();
	}

}
