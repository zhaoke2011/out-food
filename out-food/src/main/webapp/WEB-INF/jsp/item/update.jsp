<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <%@ include file="../common/init.jsp" %>
            <title>
                <c:out value="${pageTitle}" />
            </title>
             <link href="${ctx}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
			<script src="${ctx}/resources/js/jquery.min.js"></script>
			<link href="${ctx}/resources/css/style.css" rel='stylesheet' type='text/css' />
             <link rel="stylesheet" href="${ctx}/resources/css/webBase.css"/>
            <link rel="stylesheet" href="${ctx}/resources/css/base.css" />
            <link rel="stylesheet" href="${ctx}/resources/js/swfupload/default.css" />
            <link rel="stylesheet" href="${ctx}/resources/css/jquery.fileupload.css" />
                    <script type="text/javascript" src="${ctx}/resources/ueditor/ueditor.config.js"></script>
                    <script type="text/javascript" src="${ctx}/resources/ueditor/ueditor.all.js"></script>
                    
                    
            <link rel="stylesheet" href="${ctx}/resources/js/swfupload/default.css" />
            <link rel="stylesheet" href="${ctx}/resources/css/jquery.fileupload.css" />
            <script type="text/javascript" src="${ctx}/resources/ueditor/ueditor.config.js"></script>
            <script type="text/javascript" src="${ctx}/resources/ueditor/ueditor.all.js"></script>
                    <script src="${ctx}/resources/js/main.js"></script>
    </head>

    <body ref="${ctx}" ctx="${ctx}">
        <!-- 隐藏值区域 -->
        <input type="hidden" id="defaultImg" value="" />

        <%@ include file="../common/head1.jsp" %>
            <%@ include file="../common/seller_head.jsp" %>
                <%@ include file="../common/head_seller.jsp"%>
                    <div class="content content-box clear-float">
                        <%@include file="../common/left_menu_seller.jsp" %>
                            <div class="seller-center-info float-right">
                                <p class="small-nav">
                                    <a href="${ctx}/home.html">首页</a>&gt;<a href="${ctx }/item/toAdd.html">商品管理</a>&gt;<a href="${ctx }/item/toAdd.html">发布商品</a>
                                </p>
                                <div class="box-content">
                                    <div class="upload-pro">
                                    <input type="hidden" id= "id" value="${item.id}">
                                    <input type="hidden" id= "status" value="${item.status}">
                                        <font style="color: red">(提醒：刷新页面会丢失已填写的内容,城市不选默认是全国)</font>
                                        <p>
                                            <label><font style="color: red">*</font>商品名称:</label>
                                            <input id="name" type="text" value="${item.itemName}"/>
                                        </p>

                                        <p>
                                        <label>商品分类:</label>
                              				<select id="shopItemClassId" class="shortInput" >
											<option value="">请选择</option>
											<c:forEach items="${classList}" var="itemClass">
											<option value="${itemClass.id}" <c:if test="${item.shopItemClassId==itemClass.id}">selected="selected"</c:if>">${itemClass.className}</option>
											</c:forEach>
											</select>
                                        </p>
                                        <p>
                                            <label><font style="color: red">*</font>每日供量:</label>
                                            <input id="dayStock" type="text" class="shortInput" value="${item.dayStock}"/><span class="tips">如：100、998、3001</span>
                                        </p>
                                         <p>
                                            <label><font style="color: red">*</font>单价:</label>
                                            <input id="itemPrice" type="text" class="shortInput" value="${item.itemPrice}" /><span class="tips">保留两位小数</span>
                                        </p>
                                        </p>

                                                                    </p>
                            <p>
								<label>商品图片:</label>
							    <span class="fileinput-button">
								    <span><img width="102px" height="76px" src="${server}${item.itemImg}" id="itemImg1"/></span>
								    <input id="itemImg" type="file"  />
							    </span>
							    <span class="fileupload-process"></span>
							</p>
                                    </div>
                                        </script>
                                    </p>
                                    <p class="text-center buttonList" style="margin: 20px 0;">
                                        <button class="layui-btn button-orange layui-btn-big" onclick="save()">提交</button>
                                    </p>
                                </div>
                            </div>
                    </div>
                    </div>
                    <!-- 底部信息 -->
                    <%@ include file="../common/footer.jsp" %>
                        <!-- 底部信息 -->
                        </script>
                        <script type="text/javascript">
                        </script>
                        <script type="text/javascript" src="${ctx}/resources/js/swfupload/swfupload.js"></script>
                        <script type="text/javascript" src="${ctx}/resources/js/swfupload/swfupload.queue.js"></script>
                        <script type="text/javascript" src="${ctx}/resources/js/swfupload/fileprogress.js"></script>
                        <script type="text/javascript" src="${ctx}/resources/js/item.upload.handlers_1.js"></script>
                        <script type="text/javascript" src="${ctx}/resources/js/item.upload.handlers_2.js"></script>
                        <script type="text/javascript" src="${ctx}/resources/js/item.upload.handlers_3.js"></script>
                        <!--<script type="text/javascript" src="${ctx}/resources/js/item_add.js"></script>-->
                            <script type="text/javascript" src="${ctx}/resources/js/item/sellerItemAdd.js"></script>

                            <script src="${ctx}/resources/js/jquery.ui.widget.js"></script>
                            <script src="${ctx}/resources/js/jquery.iframe-transport.js"></script>
                            <script src="${ctx}/resources/js/jquery.fileupload.js"></script>
                            <script src="${ctx}/resources/js/jquery.fileupload-process.js"></script>
                            <script src="${ctx}/resources/js/jquery.fileupload-validate.js"></script>
                            
                            <script type="text/javascript">
                            function save() {
                            	var id = $.trim($("#id").val());
                            	var status = $.trim($("#status").val());
                            	var itemName = $.trim($("#name").val());
                            	var shopItemClassId = $.trim($("#shopItemClassId").val());
                            	var dayStock = $.trim($("#dayStock").val());
                            	var itemImg = $("#itemImg1")[0].src.split(server)[1]; 
                            	var itemPrice = $.trim($("#itemPrice").val());
                            	var params = {
                            		id:id,
                            		itemName : itemName,
                            		shopItemClassId : shopItemClassId,
                            		dayStock : dayStock,
                            		itemImg : itemImg,
                            		itemPrice : itemPrice,
                            		status : status
                            	};
                            	$.ajax({
                            		type:"POST",
                            		url:ctx + "/item/updateItem.html",
                            		data:params,
                            		dataType:"json",
                            		error:function(){
                            			layer.msg('请求网络失败，请重试!', {icon: 7});
                            		},
                            		success:function(data){
                            			if(data.data == "101"){
                                                    layer.msg('修改成功！', {icon: 1,time: 2000}, function(index){
                                                     // window.location.href = $('body').attr('ref') + "/item/toAdd.html";
                                                    });
                            				
                            			}else if(data.data == "102"){
                                                    layer.msg('修改失败，请重试!', {icon: 2,time: 2000}, function(index){
                                                    });
                            			}
                            		}
                            	});
                            }
                            </script>
    </body>

    </html>