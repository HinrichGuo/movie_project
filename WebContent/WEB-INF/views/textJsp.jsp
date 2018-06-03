<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/add" method="post">
		<input type="text" name="filmName"> <br> <input
			type="text" name="filmDirector"> <br> <input
			type="submit">
	</form>
	<form id="farmerAdd" action="<%=basePath%>FarmerAddServlet"
		method="post" class="form-horizontal form-bordered">
		<div class="form-group">
			<input type="hidden" value="" name="farmerCode" id="farmerCode">
			<label class="col-md-3 control-label" for="example-hf-email">
				户主姓名 <span class="text-danger">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" id="farmerName" name="farmerName"
					class="form-control"> <span class="help-block"
					id="farmerNameMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-hf-email">
				性别 </label>
			<div class="col-md-9">
				<label class="radio-inline" for="example-inline-radio1"> <input
					type="radio" id="example-inline-radio1" name="farmerSex" checked
					value="男"> 男
				</label> <label class="radio-inline" for="example-inline-radio2"> <input
					type="radio" id="example-inline-radio2" name="farmerSex" value="女">
					女
				</label>
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-3 control-label" for="example-hf-password">
				身份证号 <span class="text-danger">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" id="farmerIdcard" onblur="getBirth(this.value)"
					name="farmerIdcard" class="form-control"> <span
					id="farmerIdcardMsg" class="help-block"></span> <input
					type="hidden" name="card" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-3 control-label" for="example-hf-password">出生日期
				<span class="text-danger">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" id="birth" name="farmerBirthday"
					class="Wdate form-control" onclick="WdatePicker()"
					style="width: 300px">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				职务 <span class="text-danger">*</span>
			</label>
			<div class="col-md-5" style="position: relative;">
				<select id="job" name="farmerJob" class="select-select2"
					data-placeholer="请选择职务..." style="width: 300px;">
					<option></option>
					<option value="农民">农民</option>
					<option value="务农">务农</option>
					<option value="务农">学前教育</option>
					<option value="务农">学龄前儿童</option>
					<option value="学生">学生</option>
					<option value="教师">教师</option>
					<option value="律师">律师</option>
					<option value="医生">医生</option>
					<option value="军人">军人</option>
					<option value="0">其他</option>
				</select> <input type="text" id="jobScan" name="jobScan"
					placeholder="请输入其他职务" class="form-control" name="farmerBirthday"
					style="width: 300px; position: absolute; top: 0px; left: 320px; display: none;">
				<span class="help-block" id="jobMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				所在社/组 <span class="text-danger">*</span>
			</label>
			<div class="col-md-5">
				<select id="select-select2" name="commune_id" class="select-select2"
					data-placeholder="请选择村/社.." style="width: 300px;">
					<option></option>
					<!-- <option selected="selected" value="-1" >请选择社/组.......</option> -->
					<!-- Required for data-placeholder attribute to work with Chosen plugin -->
				</select> <span class="help-block" id="communeMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				服务处所 <span class="text-danger"></span>
			</label>
			<div class="col-md-9">
				<input type="text" id="farmerJobAddress" name="farmerJobAddress"
					class="form-control"> <span class="help-block"
					id="farmerJobAddressMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-hf-password">
				现居住地址 <span class="text-danger">*</span>
			</label>
			<div class="col-md-9">
				<input type="text" id="farmerAddress" name="farmerAddress"
					class="form-control"> <span class="farmerAddressMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				有无承包地及获得时间 <span class="text-danger"></span>
			</label>
			<div class="col-md-5">
				<input type="text" id="farmerContractLandTime"
					name="farmerContractLandTime" class="form-control"
					placeholder="若无请输入无，有请手动输入时间"> <span class="help-block"
					id="farmerContractLandTimeMsg"></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				户口迁入时间<span class="text-danger"></span>
			</label>
			<div class="col-xs-7">
				<input type="text" id="farmerImmigrationTime"
					name="farmerImmigrationTime" class="form-control"
					style="width: 300px" placeholder="请输入户口迁入时间">
			</div>
			<label class="col-md-3 control-label" for="example-chosen">
				户口迁入原因<span class="text-danger"></span>
			</label>
			<div class="col-xs-5">
				<input type="text" id="farmerImmigrationReason"
					name="farmerImmigrationReason" class="form-control"
					placeholder="请输入户口迁入原因">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-chosen">
				户口迁出时间<span class="text-danger"></span>
			</label>
			<div class="col-xs-7">
				<input type="text" id="farmerEmigrationTime"
					name="farmerEmigrationTime" class="form-control"
					style="width: 300px" placeholder="请输入户口迁出时间">
			</div>
			<label class="col-md-3 control-label" for="example-chosen">
				户口迁出原因<span class="text-danger"></span>
			</label>
			<div class="col-xs-5">
				<input type="text" id="farmerEmigrationReason"
					name="farmerEmigrationReason" class="form-control"
					placeholder="请输入户口迁出时间">
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label" for="example-hf-password">
				备 注 </label>
			<div class="col-md-9">
				<textarea id="example-textarea-input" name="farmerDesc" rows="7"
					class="form-control" placeholder="备注描述.."></textarea>
			</div>
		</div>
		<div class="form-group form-actions">
			<div class="col-md-9 col-md-offset-3">
				<button id="submitBtn" type="button"
					class="btn btn-block btn-primary">保 存</button>
			</div>
		</div>
	</form>
<script type="text/javascript" src="<%=basePath%>my97/WdatePicker.js">
</script>
<script src="<%=basePath%>js/validate.js"></script>
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
 <%-- <script src="<%=basePath%>artDialog/lib/jquery-1.10.2.js"></script> --%>
    <script src="<%=basePath%>artDialog/dist/dialog.js"></script>
<script>
	/* 输入身份证号后，自动显示出生日期 */
	function getBirth(idCard){
		/* 合法 */
		if(checkIdcard(idCard)){
			var year,month,day;
			if(idCard.length == 15){
				/* 15身份证号 */
				year = 19+""+idCard.substring(7,8);
				month = idCard.substring(8,10);
				day = idCard.substring(10,12);
				$("#birth").attr("value",year+"-"+month+"-"+day);
			}else{
				/* 18位身份证号 :620121 1995 08 09 281X*/
				year = idCard.substring(6,10);
				month = idCard.substring(10,12);
				day = idCard.substring(12,14);
				$("#birth").attr("value",year+"-"+month+"-"+day);
			}
		}
	}
	
	
	$(function(){
		$("#submitBtn").click(function(){
			var ok1=false;
		    var ok2=false;
		    var ok3=false;
		    var ok4=false;
		    var ok5=false;
			if(null == $("#farmerName").val()||"" == $("#farmerName").val().trim()){
				//alert($("#farmerName").val());
				var d = dialog({
					title : '系统提示',
					content : "用户姓名不能为空"
				});
				d.show();
				return ;
			}else{
				ok1 = true;
			}
			if(checkIdcard($("#farmerIdcard").val())){
				ok2 = true;
			}else{
				var d = dialog({
					title : '系统提示',
					content : "身份证号不合法"
				});
				d.show();
				return;
			}

			if($("select[name='commune_id']").val()==null||$("select[name='commune_id']").val()==""){
				var d = dialog({
					title : '系统提示',
					content : "请选择所在村社"
				});
				d.show();
				return ;
			}else{
				ok4 = true;
			}
			
			if($("select[name='commune_id']").val()==null||$("select[name='commune_id']").val().trim()==""){
				var d = dialog({
					title : '系统提示',
					content : "村社不能为空"
				});
				d.show();
				return ;
			}else{
				ok3 = true;
			}
			
			if($("input[name='farmerAddress']").val()==null||$("input[name='farmerAddress']").val()==""){
				var d = dialog({
					title : '系统提示',
					content : "详细地址不能为空"
				});
				d.show();
				return ;
			}else{
				ok5 = true;
			}
			if(ok1&&ok2&&ok3&&ok4&&ok5){
				$('form#farmerAdd').submit();
			}
		});
	})
</script>
</body>
</html>