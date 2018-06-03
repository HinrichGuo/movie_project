package cn.com.movie.handler;

import java.io.File;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.com.movie.pojo.Cinema;
import cn.com.movie.pojo.Goods;
import cn.com.movie.pojo.PageModel;
import cn.com.movie.service.CinemaService;
import cn.com.movie.service.GoodsService;

/**
 * @title GoodsHandler.java
 *        <p>
 *        <P>
 * @author 张长伟
 * @time 2018年3月29日 下午8:47:17
 */
@Controller

public class GoodsHandler {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private CinemaService cinemaService;
	PageModel<Goods> pageModel = null;

	String path;

	/**
	 * @return 跳转到添加页面
	 */
	@RequestMapping("/AddGoods")
	public String getAddGoods(Map<String, Object> map) {

		map.put("cinemas", goodsService.selectAll());
		return "AddGoods";

	}

	/**
	 * @param goods
	 * @param file
	 * @param request
	 * @param model
	 * @param map
	 * @return 修改成功后跳转到所有商品页面
	 */
	@RequestMapping("/updateGoods")

	private String getUpdateGoods(Goods goods, @RequestParam("fileName") MultipartFile file, HttpServletRequest request,
			ModelMap model, Map<String, Object> map) {
		// TODO Auto-generated method stub
		// 获得原始文件名

		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);
		path = request.getServletContext().getInitParameter("filePath");// 设定文件保存的目录
		// 新文件名
		if (fileName != null) {
			String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".jpg";
			ServletContext sc = request.getSession().getServletContext();
			// 上传位置

			File f = new File(path);
			if (!f.exists())
				f.mkdirs();
			if (!file.isEmpty()) {
				try {
					FileOutputStream fos = new FileOutputStream(path + "\\" + newFileName);
					InputStream in = file.getInputStream();
					int b = 0;
					while ((b = in.read()) != -1) {
						fos.write(b);
					}
					fos.close();
					in.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			model.addAttribute("fileUrl", path + "\\" + newFileName);
			goods.setGoodsImage(newFileName);
		}

		if (goods != null) {

			goodsService.updateByPrimaryKeySelective(goods);
			System.out.println("+++++++++++++++++++++++++" + goodsService.updateByPrimaryKeySelective(goods));
		}

		return "redirect:/AllGoods";
	}

	@ModelAttribute
	public void getGoodsById(@RequestParam(value = "id", required = false) Integer id, Map<String, Object> map) {
		if (id != null) {
			map.put("Goods", goodsService.selectByPrimaryKey(id));

		}
	}

	/**
	 * @param request
	 * @return 删除重定向
	 */
	@RequestMapping("deleteGoods")
	private String deleteGoods(@RequestParam("id") int id) {
		goodsService.deleteByPrimaryKey(id);
		return "redirect:/AllGoods";
	}

	/**
	 * @param id
	 * @param map
	 * @return 跳转修改页面
	 */
	@RequestMapping("selectGoods")
	private String selectGoods(@RequestParam("id") int id, Map<String, Object> map) {
		Goods goods = goodsService.selectByPrimaryKey(id);
		Integer idss = goods.getCinemaId();
		map.put("Goods", goods);

		map.put("cinemat", cinemaService.selectOneCinema(idss));

		List<Cinema> cinemas = goodsService.selectAll();
		map.put("cinemas", cinemas);
		return "UpdateGood";
	}

	/**
	 * @param map
	 * @return 跳转到所有商品页面
	 */
	@RequestMapping("/AllGoods")
	private String getAllGoods(HttpServletRequest request, Map<String, Object> map) {
		String pageNow = request.getParameter("pageNow");
		if (pageNow == null || "".equals(pageNow)) {
			pageNow = "1";
		}

		System.out.println("++++++++++++" + pageNow);
		PageModel<Goods> pageModel = goodsService.selectByPage(Integer.parseInt(pageNow));

		map.put("pageModel", pageModel);
		map.put("goodsType", goodsService.selectGoodsType());
		return "AllGoods";
	}

	/**
	 * @param request
	 * @param map
	 * @return 查询页面
	 */

	@RequestMapping("/allGoods")
	private String getPartGoods(HttpServletRequest request, Map<String, Object> map) {
		String pageNow = request.getParameter("pageNow");

		String goodsName = request.getParameter("name");
		String goodsType = request.getParameter("type");

		if (goodsName != null && !"".equals(goodsName)) {

			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}

			pageModel = goodsService.selectLikeGoods(Integer.parseInt(pageNow), goodsName);

		} else if (goodsType != null && !"".equals(goodsType)) {
			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}
			pageModel = goodsService.selectPartGoods(Integer.parseInt(pageNow), goodsType);

		} else {
			if (pageNow == null || "".equals(pageNow)) {
				pageNow = "1";
			}
			pageModel = goodsService.selectByPage(Integer.parseInt(pageNow));

		}
		map.put("pageModel", pageModel);
		System.out.println("33333333333333333333" + pageModel);
		map.put("goodsType", goodsService.selectGoodsType());
		return "AllGoods";

	}

	/**
	 * @param ag
	 * @return 添加商品并跳转
	 */
	@RequestMapping(value = "/addGoods", method = RequestMethod.POST)
	public String addGoods(Goods goods, @RequestParam("fileName") MultipartFile file, HttpServletRequest request,
			ModelMap model, Map<String, Object> map) {
		// 获得原始文件名

		String fileName = file.getOriginalFilename();
		System.out.println("原始文件名:" + fileName);

		// 新文件名
		String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

		// 获得项目的路径
		ServletContext sc = request.getSession().getServletContext();
		// 上传位置
		String path = request.getServletContext().getInitParameter("filePath");// 设定文件保存的目录
		File f = new File(path);
		if (!f.exists())
			f.mkdirs();
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(path + "\\" + newFileName);
				InputStream in = file.getInputStream();
				int b = 0;
				while ((b = in.read()) != -1) {
					fos.write(b);
				}
				fos.close();
				in.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		System.out.println("上传图片到:" + path + "\\" + newFileName);
		// 保存文件地址，用于JSP页面回显
		model.addAttribute("fileUrl", path + "\\" + newFileName);

		if (goods != null) {

			goods.setGoodsImage(newFileName);
			goods.setGoodsIshave("有货");
			goods.setGoodsBlack1("1");
			goodsService.insert(goods);

		}
		System.out.println("++++++++++++++++++++++++++++" + goodsService.selectAll());
		map.put("cinemas", goodsService.selectAll());
		return "AddGoods";

	}

}
