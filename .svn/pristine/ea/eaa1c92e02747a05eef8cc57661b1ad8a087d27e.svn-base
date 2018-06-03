/**
 * 由字母a～z(不区分大小写)、数字0～9、点、减号或下划线组成，只能以字母开头，包含字符 数字 下划线，例如：beijing.2008
 * ·用户名长度为4～18个字符
 * 
 * @param username：用户名value
 * @returns：返回是否匹配成功
 */
String.prototype.isAccount = function() {
	return (/^[a-zA-Z]\w{3,15}$/ig.test(this.trim()));
}
/**
 * 去空格
 * 
 * @author 李英夫(2009.11.17)
 */
String.prototype.trim = function() {
	return this.replace(/(^[\s\u3000]*)|([\s\u3000]*$)/g, "");
}
/**
 * 实际长度
 * 
 * @author 李英夫(2009.11.17)
 * @return 长度
 */
String.prototype.reallength = function() {
	return this.replace(/[^\x00-\xff]/g, "^^").length;
}
/**
 * 手机号码判断
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.isMobile = function() {
	return (/^(?:13\d|15[012356789]|18[0123456789]|147|145|174)-?\d{5}(\d{3}|\*{3})$/
			.test(this.trim()));
}

/**
 * 电话号码验证
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.isTel = function() {
	// "兼容格式: 国家代码(2到3位)-区号(2到3位)-电话号码(7到8位)-分机号(3位)"
	return (/^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/.test(this
			.trim()));
}

/**
 * QQ号码验证 最小5位数，最大9位
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.isQQ = function() {
	return (/^[1-9]\d{4,8}$/.test(this.trim()));
}

/**
 * 是否是中文
 * 
 * @author 李英夫(2009.11.17)
 * @return 是中文返回true,不是中文返回false
 */
String.prototype.isChinese = function() {
	return (/^[\u4e00-\u9fa5]+$/.test(this.trim()));
}

/**
 * 验证电子邮件
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.validateEmail = function() {
	if (this.length > 100) {
		return false;
	}
	var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$"
	var re = new RegExp(regu);
	if (this.search(re) != -1) {
		return true;
	} else {

		return false;
	}
}

/**
 * 字符串载取
 * 
 * @author 李英夫(2009.11.17)
 * @param begin
 *            起始位置
 * @param end
 *            结束位置
 * @return 返回截取后的字符串
 */
String.prototype.MBSubstring = function(begin, end) {
	var tmp = '', one = '';
	var length = 0, flg = 0;
	if ((this == '') || (typeof (this) != 'string')) {
		return '';
	}
	if (begin > end) {
		return '';
	}
	length = this.length;
	for (i = 0; i < length; i++) {
		one = this.substr(i, 1);
		flg += one.reallength();
		if ((flg > begin) && (flg - 1) <= end) {
			tmp += one;
		}
	}
	return tmp;
}

/**
 * 验证正整数和0
 * 
 * @author 赵洋（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.validateNum = function() {
	return (/^(0{1}|[1-9]{1}\d*)$/.test(this.trim()));
}

/**
 * 验证正整数
 * 
 * @author 豆春雷（2010.4.9)
 * @return 是返回true,不是返回false
 */
String.prototype.validateSignlessIntegral = function() {
	return (/^([1-9]{1}\d*)$/.test(this.trim()));
}
/**
 * 验证购买数量
 * 
 * @author 豆春雷（2010.4.9)
 * @return 是返回true,不是返回false
 */
String.prototype.validatePricingNum = function() {
	return (/^([1-9]{1}[0-9]{0,1})$/.test(this.trim()));
}
/**
 * 验证正实数
 * 
 * @author 豆春雷（2010.4.9)
 * @return 是返回true,不是返回false
 */
String.prototype.validateSignlessDecimal = function() {
	return (/^\d+(\.\d+)?$/.test(this.trim()));
}
/**
 * 验证实数
 * 
 * @author 韩冰（2010.1.11)
 * @return 是返回true,不是返回false
 */
String.prototype.validateDecimal = function() {
	return (/^-?\d+(\.\d+)?$/.test(this.trim()));
}

/**
 * 验证两位小数（必须有整数位，不能为".5"）
 * 
 * @author zhongchongliang（2011.04.01)
 * @return 是返回true,不是返回false
 */
String.prototype.roundTwo = function() {
	return (/^\d+\.?\d{0,2}$/.test(this.trim()));
}
/**
 * 验证一位小数（必须有整数位，不能为".5"）
 * 
 * @author zhongchongliang（2011.04.01)
 * @return 是返回true,不是返回false
 */
String.prototype.roundOne = function() {
	return (/^\d+\.?\d{0,1}$/.test(this.trim()));
}

/**
 * 验证是否是字母数字
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.validateLetter = function() {
	if (this.search) {
		return (this.search(new RegExp("^[a-zA-Z0-9]+$", "g")) >= 0)
	}
}

/**
 * 验证是否是Url
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.validateUrl = function() {
	if (this.search) {
		return (this.search(new RegExp("^http\:\/\/[a-zA-Z0-9\.]+(\/)$", "g")) >= 0)
	}
}

/**
 * 验证长度范围
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.varLen = function(min, max) {
	var vlen = this.reallength();
	if (vlen >= min && vlen <= max)
		return true;
	else
		return false;
}

/**
 * 判断是否为空
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
String.prototype.isNull = function() {
	return (this == "" || this == null || this == "undefined");
}

/**
 * <script,select,update,delete,insert,'为非法字符
 * 
 * @author 李英夫(2009.11.17)
 * @return 不是返回true,是返回false
 */
String.prototype.check_specialword = function() {
	return !(/<script|select|update|delete|insert|'/ig).test(this);
}

/**
 * 只包含汉字，数字，英文，下划线，百分号，反斜杠
 * 
 * @author 赵洋
 * @return
 */
String.prototype.check_specialunit = function() {
	var val = /^[\u4e00-\u9fa5\w\/%]*$/;
	return val.test(this);
}

/**
 * 验证数值范围
 * 
 * @author 李英夫(2009.11.17)
 * @return 是返回true,不是返回false
 */
Number.prototype.numLen = function(min, max) {
	if (this >= min && this <= max)
		return true;
	else
		return false;
}

/**
 * 身份证验证开始
 * 
 * @author 李英夫(2009.11.17)
 * @return 中文提示信息( var Errors )
 */

function checkIdcard(code) {
	var city = {
		11 : "北京",
		12 : "天津",
		13 : "河北",
		14 : "山西",
		15 : "内蒙古",
		21 : "辽宁",
		22 : "吉林",
		23 : "黑龙江 ",
		31 : "上海",
		32 : "江苏",
		33 : "浙江",
		34 : "安徽",
		35 : "福建",
		36 : "江西",
		37 : "山东",
		41 : "河南",
		42 : "湖北 ",
		43 : "湖南",
		44 : "广东",
		45 : "广西",
		46 : "海南",
		50 : "重庆",
		51 : "四川",
		52 : "贵州",
		53 : "云南",
		54 : "西藏 ",
		61 : "陕西",
		62 : "甘肃",
		63 : "青海",
		64 : "宁夏",
		65 : "新疆",
		71 : "台湾",
		81 : "香港",
		82 : "澳门",
		91 : "国外 "
	};
	var tip = "";
	var pass = true;

	if (!code
			|| !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i
					.test(code)) {
		tip = "身份证号格式错误";
		pass = false;
	}

	else if (!city[code.substr(0, 2)]) {
		tip = "地址编码错误";
		pass = false;
	} else {
		// 18位身份证需要验证最后一位校验位
		if (code.length == 18) {
			code = code.split('');
			// ∑(ai×Wi)(mod 11)
			// 加权因子
			var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ];
			// 校验位
			var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
			var sum = 0;
			var ai = 0;
			var wi = 0;
			for (var i = 0; i < 17; i++) {
				ai = code[i];
				wi = factor[i];
				sum += ai * wi;
			}
			var last = parity[sum % 11];
			if (parity[sum % 11] != code[17]) {
				tip = "校验位错误";
				pass = false;
			}
		}
	}
	/*if (!pass){
		alert(tip);
	}*/
	return pass;
}
/* 身份证验证结束 */

/**
 * 邮政编码验证
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isPostCode = function() {
	return (/^[1-9]\d{5}(?!\d)$/.test(this.trim()));
}

/**
 * 日期验证
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isDate = function() {
	return (/^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/
			.test(this.trim()));
}

/**
 * 金额验证 小数点后6位
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isMoney = function() {
	return (/^(0{1}|[1-9]{1}\d{1,15})(\.\d{1,2})?$/.test(this.trim()));
}

/**
 * 校验电话中的国家号码 格式：0XXXX
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isTelCountryCode = function() {
	return (/^0\d{3,4}$/.test(this.trim()));
}

/**
 * 校验电话中的区号 格式：0XXX
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isTelAreaCode = function() {
	return (/^0\d{2,3}$/.test(this.trim()));
}

/**
 * 校验电话中的主要号码部分
 * 
 * @author 赵爽（2009.11.24)
 * @return 是返回true,不是返回false
 */
String.prototype.isTelMainCode = function() {
	return (/^\d{7,8}$/.test(this.trim()));
}

/**
 * 敏感词验证
 * 
 * @author 李英夫（20010.01.21)
 * @return 是返回true,不是返回false
 */
String.prototype.isSensitivityWord = function() {
	var senReg = /(管理员|九评共产党|讨阀中宣部|国安局|赵紫阳|大鸡巴|國安局|江泽民|江澤民|台独|洪志|法轮|轮功|自慰|私处|打炮|做爱|造爱|性交|性爱|操你|鸡巴|开苞|肛门|阴囊|睾丸|插我|插你|插她|插他|阴茎|阳具|阴道|阴蒂|射精|口交|肉棍|肉棒|肉洞|口淫|操你|日你|日逼|鸡巴|开苞|明慧|法輪|輪功|fuck|屌|温家宝|共产党|胡景涛|周强|胡锦涛|操你妈的|明慧网|红网|禽流感|往事并不如烟|双规|管里员|韩桂芝|迅克农场26队|刘杰|红顶商人|六·四|六四|生者死者|丁子霖|蒋彦永|法轮大法|焦国标|何家栋|丁家班|中宣部|讨伐|讨伐中宣部|新唐人|鬍錦濤|明慧網|禽流感|往事並不如煙|雙規|韓桂芝|迅尅農場26隊|劉傑|紅頂商人|蔣彥永|法輪大法|焦國棟|何傢棟|丁傢班|討伐|討伐中宣部|管理員|真善忍|湖南红网论坛|市痿书记|省痿书记|爱心家园|黄金啄木鸟|breezesx|鸡巴|无耻|教皇|鄙视|讨伐中宣部|焦国栋|全国二奶大奖赛|温家宝|看中国|共产党|焦国标|监禁|管里员|周强|邓小平|17大|十七大|三个代表|毛泽东|新唐人|张其术|中国在统一问题上的投降主义|崔英杰|六四参加者回忆录|台独|何家栋|丁家班|讨伐|真善忍|法轮|法轮功|法轮大法|李洪志|胡锦涛|明慧网|禽流感|往事并不如烟|韩桂芝|迅克农场26队|刘杰|红顶商人|胡耀邦|六 四|六四|生者死者|鬍錦濤|明慧網|禽流感|往事並不如煙|雙規|韓桂芝|迅尅農場26隊|劉傑|紅頂商人|蔣彥永|法輪大法|焦國棟|何傢棟|丁傢班|討伐|討伐中宣部|木子网|看中国|无忧城|大参考|春夏自由评论|中国报道周刊|炎黄在线美国|新浪北美|多维新闻网|博讯新闻网|大纪元|文学城|美国之音中文网|草庵居士|英华网|苹果论坛|六四档案|亚洲人权宪章|香港论坛|民主论坛|白云书库|燃烧的岛群|北京之春|中共血腥80年|明月网站|无忧城|网络基督使团|生命季刊|还我河山|争鸣动向|中华复国主义|宗教迫害真相|中国事务|中华评述|议报|民主中国|中国之路|当代中国研究|文革受难者|战争的艺术|和平网|华夏文摘|文革博物馆|小说大全|万维论坛大全|关注杜导斌|法轮大法之友电台|大饥荒档案|法网恢恢|天安门母亲|全侨民主联盟|紧急救援档案|全球审江|新海川|海归论坛|人权信息中心|香港人权监察|祖国在危急中|中国人权（简）|中国人权（繁）|人权观察|慧园拾珍|《胡平文集》全美学自联|大陆基督教|中国工党|关注罗永忠|台湾陆委会|明思论坛|明思网文|明心|蒙古文化资讯网|蒙古文化沙龙|木子论坛|国家与社会|开放杂志|海外校园|中国人权论坛|阿扁总统|新闻自由导报|清心论坛|彩虹之约|人民报|营救李祥春|人与人权（简）|人与人权（繁）|祖国在危急中|国际援藏|四大广场|曙光网|星伴网|不锈钢老鼠|台湾人权促进会|多伦多在线|多伦多乱弹琴|幸运之轮|追查国际|中华资讯网|反对23条立法联盟|新生网|明心|新世纪|杨建利网站|燕玲梦屋|中国民主促进|亦凡书库|中国总统直选|正道网|正见|中国劳工观察|中国魂|好死不如赖活着|多党制|军队|转业|退伍|法西斯|独裁|民主|刘晓竹|蒋彦永|民运|赵紫阳|天安门情人|国家大剧院|瓦良格|退脏账号|咎爱宗|陶驷驹|沈浩波|心藏大恶|文革|文化大革命|李契克|钓鱼岛|后讨伐中宣部时代|仰融|华晨|国母|发愣功|何伟途|高句丽|北航|马德|刘治文|王匡|正邪大决战|救度世人|王道生|5号病|勒死|水电站|移民|警民冲突|潜艇|绿卡|苏联|枪击|东突|中国之声|鲁白|邹承鲁|饶毅|废除劳教|炮轰教育部|直选|司法|粮食产量|金融|财政|人大代表|苹果日报|中共|国企改革|集体请愿|矿难|非正常死亡|跨世纪的良心犯|遇难者|两岸关系的突破|澳门模式|两岸春节包机|华建敏|证监会主席|四川金融投资报|股市|阜新|矿难|闫连科|六方会谈|朝核|001工程|丁子霖|公开信|李述标|聂树斌|自由侯选人|大米稀饭|共和国之辉|红火蚁|中国天主教大陆主教团|反日|北京反日游行|粱云才|股权分置改革|程翔|陆建华|秦晖|滕兴善|吕德彬|公务员定州监狱|重特钢|东突|圣战|袁宝璟|三峡移民|移民问题|罢课|张春贤|许万平|新京报|郑茂清|杜湘成|副省长|省纪委副书记|姚文元|张其术|杨正午|张春贤|周伯华|孙载夫|戚和平|谢康生|黄建国|石玉珍|肖捷|梅克保|郑治栋|李江|于来山|蒋建国|吴向东|周时昌|唐之享|谢佑卿|庞道沐|颜永盛|郭俊秀|王四连|刘永寿|贺同新|杨泰波|许云昭|徐宪平|甘霖|罗桂求|袁建尧|胡彪|文选德|李贻衡|袁隆平|姚守拙|卢光琇|章锐夫|阳宝华|王汀明|刘晓|龙国键|谢勇|李刚铤|李今伟|黄明开|谭一兵|谢光豪|吴晓伟|王振杰|张家良|江必新|何素斌|吴定宪|卞翠屏|周阳生|李映华|苏仁华|丁来文|彭清国|郑佳明|覃晓光|刘道龙|罗志丹|田芦娥|彭对喜|张文雄|申昱|蒋和平|武吉海|曾晋成|佘友文|李晓玲|唐建|邱伯安|黄赤清|孔和平|刘志壁|李泽仁|熊继兴|陈刚|孙振华|季益贵|胡正扬|孙在田|陈兰新|匡代科|刘学文|陈本洪|严尧卿|欧阳耀祥|杨淑兰|田伏隆|孙青乃|李妙和|匡彦博|姜儒振|刘明欣|陈吉芳|陈吉湘|廖克勤|刘庆选|陈叔红|林武|张放平|王柯敏|王德靖|励明安|周红军|余长明|周敦扣|李友志|赵湘平|葛洪元|向世林|李安|陈明宪|陈彰清|钟志慧|黄选达|刘平凡|王孝忠|余英生|葛汉栋|毛叙保|金则恭|刘家望|李万郴|肖策群|陈小春|张芙蓉|吴宗源|莫德旺|卿渐伟|蒋益民|魏文彬|谷文龙|傅国良|马勇|张汉良|孔令志|吴科政|袁新华|王柏林|李后祥|吴松盛|罗月林|刘莲玉|周朗华|谢光祥|许冬生|刘鸣泰|彭国华|尹飞舟|谢光球|李万杰|贺安杰|陈树林|刘万清|董文华|贺德欣|刘征国|黄道望|唐纯初|谭新民|徐晨光|邓吉雄|胡锦昌|李凌沙|朱有志|黄美春|戴爱国|刘献华|李联山|旷佩林|柳光跃|龙新平|曹英华|陈远平|龚世益|邹卓鹏|熊金香|冯伟林|李德旗|胡铁牛|罗尧舜|张英维|杨长永|蔡畅元|丁春庭|易继元|盛忠|王本锡|丁辉|胡军|匡竹述|王四连|吴奇修|冯湘保|谭谈|江学恭|邹麦秋|李微微|唐浩民|侯炳文|宋建民|刘益民|王逸时|秦永远|夏纯玉|刘平|周新潮|哈小新|邓旭光|李效伟|孙显同|曹慧泉|李建国|胡衡华|何仁春|曹修运|傅少武|网络赚钱|日B|日逼|杨伯华|视频聊天|李静安|陈国平|李建新|裸体|阴道|詹纯新|徐春生|朱建纲|龚曙光|贺顺球|任立|张天明|邹庆国|赵龙江|邓军民|李绍云|陈书山|舒斌|任辉|王晓光|周建雄|吴金保|邓和平|吴启荣|龙建中|刘艾武|网赚|Q币|王毅|孙康敏|裸照|张文建|贺坚|陈耀年|侯严峰|于磊焰|程安亭|杨先杰|周昌贡|靳晨光|龙新平|李维建|祝燕德|张和平|张玉会|朱国斌|章干泉|文会国|王建根|汪世昌|张和光|朱友文|徐凌|唐彩臣|周和良|缪蔓聪|蒋民生|杨晓嘉|罗忠敏|王振|梅家祥|白涛|朱世强|王健强|孙建成|唐玲|殷绪文|蒋放鸣|任海东|唐献良|禹华初|杨克勤|周云贵|胡小钢|章小辉|蒯同文|程劲松|张东|王永中|刘英杰|江景星|袁清|雷清亮|林修建|鲁贵卿|伍青|廖前进|罗凌|杨柱安|全德辉|李瑞师|李建民|陈思勉|刘勇|王贵峰|王克林|刘健灵|朱民安|黄丹|张忠良|包拓华|汤晓壮|廖家凯|姚中华|陈鄂生|张泾生|杨洪普|李上福|熊和平|李纪卡|程弘|胡运良|庞小琳|张德明|朱泽华|王胜利|李华|陈学军|胡红江|张哲|李健|黄伯云|刘克利|谷士文|彭国甫|罗和安|游俊|李湘沅|凌球|张国骥|刘湘溶|刘强|周清明|张扬|郑健龙|肖国安|田银华|蔡光先|尤昭铃|刘殿兴|谢伯端|王汉青|李红|章怀云|刘国荣|彭时代|杨万柱|黎大志|李新国|赵运林|周玉明|许金生|温模健|谭镜星|胡建|陈建民|管天球|李白均|曹石珠|李咏芳|刘耘|黄懿斌|姜正国|蔡四桂|彭光武|聂荣华|陈最华|李仲文|龙汉荣|高正超|胡建新|肖斌|贺广华|黄溪云|唐湘岳|刘麟|梅克保|谭仲池|徐明华|贺仁雨|肖雅瑜|颜石生|陈润儿|彭宪法|易炼红|罗碧升|程海波|陈君文|蒋作斌|刘国湘|李大伦|戴道晋|曾庆炎|欧阳斌|陈志强|蔡利峰|刘云柱|GC党|杀人党|流氓党|腐败党|邪教党|陈勇|奥运|家乐福|抵制|示威|游行|华国锋)/ig;
	alert("您发布的信息中有不符合网络规定的文字:" + this.match(senReg) + ",请调整!");
	return senReg.test(this.trim());
}
/**
 * 验证充值卡卡号全是数字
 * 
 * @author 仲崇亮（2010.10.10）
 * @return 是返回true,不是返回false
 */
String.prototype.isAllNumber = function() {
	return (/^\d+$/.test(this.trim()));
}

/**
 * 给数组添加contains函数，用于判断数组是否包含指定元素
 * 
 * @author 张化龙
 * @return 如果数组包含指定元素返回true，否则返回false
 */
Array.prototype.contains = function(needle) {
	for (i in this) {
		if (this[i] == needle)
			return true;
	}
	return false;
}
