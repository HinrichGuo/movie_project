package cn.com.movie.utils;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @title ApplicationUtil
 * @describe
 * @author zfc
 * @date 2017年5月22日下午11:54:43
 */
public class SessionUtil {

	/**
	 * 更新村长的提交审批中的application
	 * 
	 * @param request：请求
	 * @param accountId：当前账户
	 *            //
	 */
	public static void updateToExamineAccountSession(HttpServletRequest request, int accountId) {
		HttpSession session = request.getSession();
		// 获取session域中所有的键的名字（也就是account的ID的集合）
		Enumeration<String> names = session.getAttributeNames();
	//	ToExamineService toExamineService = new ToExamineServiceImpl();
		//VillageService villageService = new VillageServiceImpl();
		int villageId;
		String key;
		while (names.hasMoreElements()) {
			try {
				key = names.nextElement().toString();
				// System.out.println("key:" + key);
				// 判断当前的key是数字？
			/*	accountId = Integer.parseInt(key);
				villageId = villageService.getVillagesIdByAccountId(accountId).get(0);
				List<ToExamine> toExamineAccount = toExamineService.queryToExamines(villageId);
			*/	// 给每一个session域重新赋值
				//session.setAttribute(accountId + "", toExamineAccount);
			} catch (NumberFormatException e) {
				continue;
			}
		}

	}
}
