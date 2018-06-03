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
 *           三级联动接口
 * @author Rubin Zhang
 * @creation 2017年4月10日下午10:18:55
 */
public interface SjldsService {
	// 获取全部省份

	List<Map<String, Object>> getProvice();

	// 通过省份id 获取市
	List<Map<String, Object>> getCityByProviceId(String pro_id);

	// 通过市id 获取区/县
	List<Map<String, Object>> getAreaByCityId(String City_id);

	String getProviceById(String id);

	String getCityById(String id);

	String getAreaById(String id);
}
