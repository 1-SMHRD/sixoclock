package kr.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// 1. database 연결 -> config.xml과 MyBatis API 연결
	// 초기화 블럭
	static {
		try {
			String resource = "kr/dao/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체리스트 가져오기	
	public List<SalesVO> allList(){
		SqlSession session = sqlSessionFactory.openSession();
		List<SalesVO> list=session.selectList("allList");
		session.close();
		return list;
	}
	
	// 상세보기(pd_code)
	public SalesVO getBypdCode(String pd_code) {
		SqlSession session = sqlSessionFactory.openSession();
		SalesVO vo=session.selectOne("getBypdCode", pd_code);
		session.close();
		return vo;
	}
}
