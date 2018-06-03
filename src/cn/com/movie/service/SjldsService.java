package cn.com.movie.service;

import java.util.List;
import java.util.Map;

import cn.com.movie.pojo.Areas;
import cn.com.movie.pojo.Cities;
import cn.com.movie.pojo.Provinces;

/**
 * SjldsService.java
 * 
 * @describe
 *           <p>
 *           ���������ӿ�
 * @author Rubin Zhang
 * @creation 2017��4��10������10:18:55
 */
public interface SjldsService {
	// ��ȡȫ��ʡ��

	List<Map<String, Object>> getProvice();

	// ͨ��ʡ��id ��ȡ��
	List<Map<String, Object>> getCityByProviceId(String pro_id);

	// ͨ����id ��ȡ��/��
	List<Map<String, Object>> getAreaByCityId(String City_id);

	String getProviceById(String id);

	String getCityById(String id);

	String getAreaById(String id);
}