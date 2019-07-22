<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%><!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/bootstrap-table-fixed-columns.css"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/bootstrap-table-fixed-columns.css"/>
    <link rel="stylesheet" href="<%=path%>/js/bootstrap-select-1.13.0/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="<%=path%>/js/ace/css/common.css"/>
    <style type="text/css">
        .changeColor {
            background-color: #ffe48d !important;
            color: #000;
        }

        .status {
            color: white !important;
        }

        table thead {
            background-color: #F8FAFC;
        }

        table {
            table-layout: fixed !important;
        }

        .bootstrap-table .fixed-table-container .table thead th .sortable {
            padding-right: 20px !important;
        }

        .modal-style {
            font-family: SimHei;
            font-size: 14px;
            color: #6F6F6F;
            margin-left: 5px;
        }

        .i-style {
            font-size: 20px
        }

        table td:hover {
            overflow: auto;
            white-space: pre-wrap;
        }

        #search_box {
            border-radius: 3px;
            border: 1px solid #BCE8F1;
            padding-bottom: 0px;
        }

        .modal-body .search_info {
            width: 520px !important;
        }

        .caret {
            display: none;
        }

        .open {
            max-height: 350px !important;
            min-width: 200px;
        }

    </style>
</head>

<body>
<div class="page-content">
    <div class="page_info">
        <div class="spelid_box_10"></div>
        <div id="search_box">
            <div class="search_tit">
                <i class="glyphicon glyphicon-search" style=""></i>
                查询条件
                <span class="right_icon" onclick="showSearchInfo(this)" name="0">
							<i class="glyphicon glyphicon-chevron-up" style=""></i>
				</span>
            </div>
            <div id="search_body" style="float: left; padding-bottom: 10px;">
                <div class="search_info">
                    <span></span>
                    <select id="usernameQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>登录密码</span>
                    <select id="passwordQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>昵称</span>
                    <select id="nicknameQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>手机号</span>
                    <select id="mobileQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>邮箱地址</span>
                    <select id="emailQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>QQ</span>
                    <select id="qqQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>生日</span>
                    <select id="birthdayQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>性别</span>
                    <select id="genderQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>头像地址</span>
                    <select id="avatarQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>超级管理员、管理员、普通用户</span>
                    <select id="userTypeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>注册IP</span>
                    <select id="regIpQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>最近登录IP</span>
                    <select id="lastLoginIpQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>最近登录时间</span>
                    <select id="lastLoginTimeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>登录次数</span>
                    <select id="loginCountQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>用户备注</span>
                    <select id="remarkQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>用户状态</span>
                    <select id="statusQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>注册时间</span>
                    <select id="createTimeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>更新时间</span>
                    <select id="updateTimeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info" style="width: auto;">
                    <button class="btn_own btn_toolbar btn-purple no-border" href="#" id="btn_query" onclick="query()"
                            style="border-width: 0;">
                        <i class="glyphicon glyphicon-search blue" class="btn_icon" style="color:rgb(105, 170, 70)"></i>查询
                    </button>
                    <button class="btn_own btn_toolbar btn-purple no-border" href="#" id="btn_reset"
                            onclick="resetSelect()" style="border-width: 0;">
                        <i class="glyphicon glyphicon-repeat blue" class="btn_icon"></i>重置
                    </button>
                </div>
            </div>
        </div>
        <div class="spelid_box_10"></div>
        <div class="table_box" style="clear: both">
            <div class="search_tit">
                <i class="glyphicon glyphicon-list" style=""></i>
                数据列表
            </div>
            <div id="toolbar" class="toolbar">
                <button class="btn_own btn_toolbar btn-info no-border" href="#" id="btn_refresh" onclick="refresh()"
                        style="border-width: 0;">
                    <i class="glyphicon glyphicon-refresh light-blue" class="btn_icon"
                       style="color: rgb(147, 203, 249)"></i>刷新
                </button>
                    <button class="btn_own btn_toolbar btn-purple no-border" href="#" id="btn_add" data-toggle="modal"
                            data-target="#add_box" style="border-width: 0;">
                        <i class="glyphicon glyphicon-plus blue" class="btn_icon"></i>新增
                    </button>
            </div>
            <section id="box" class="content" style="clear: both;">
                <div class="panel-body" style="padding-bottom:0px; padding: 0px;">
                    <div class="box">
                        <div class="box-body" style="height: 100%;">
                            <table class="table text-nowrap" id="tb_customer"
                                   data-response-handler="responseHandler"></table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- 新增框 -->
<!-- 模态框使用注意，modal开头的都是必须要有的，自己写的内容就是titile，body和footer里面的，可以自行根据需求调整 -->
<div class="modal fade" id="add_box" tabindex="-1" data-backdrop="static" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" style="height: 520px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <font class="modal-title" id="myModalLabel">
                    <i class="glyphicon glyphicon-plus blue" class="btn_icon"></i><span
                        class="modal-style">新增</span>
                </font>
            </div>
            <div class="modal-body" style="float: left; ">
                <form id="applyForm">
                    <div class="search_info">
                        <span>：</span>
                        <input type="text" id="usernameA" name="username" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>登录密码：</span>
                        <input type="text" id="passwordA" name="password" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>昵称：</span>
                        <input type="text" id="nicknameA" name="nickname" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>手机号：</span>
                        <input type="text" id="mobileA" name="mobile" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>邮箱地址：</span>
                        <input type="text" id="emailA" name="email" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>QQ：</span>
                        <input type="text" id="qqA" name="qq" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>生日：</span>
                        <input type="text" id="birthdayA" name="birthday" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>性别：</span>
                        <input type="text" id="genderA" name="gender" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>头像地址：</span>
                        <input type="text" id="avatarA" name="avatar" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>超级管理员、管理员、普通用户：</span>
                        <input type="text" id="userTypeA" name="userType" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>注册IP：</span>
                        <input type="text" id="regIpA" name="regIp" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>最近登录IP：</span>
                        <input type="text" id="lastLoginIpA" name="lastLoginIp" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>最近登录时间：</span>
                        <input type="text" id="lastLoginTimeA" name="lastLoginTime" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>登录次数：</span>
                        <input type="text" id="loginCountA" name="loginCount" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>用户备注：</span>
                        <input type="text" id="remarkA" name="remark" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>用户状态：</span>
                        <input type="text" id="statusA" name="status" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>注册时间：</span>
                        <input type="text" id="createTimeA" name="createTime" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>更新时间：</span>
                        <input type="text" id="updateTimeA" name="updateTime" class="form-control"
                               placeholder="请输入">
                    </div>
                </form>
            </div>
            <div class="modal-footer" style="clear: both;">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="save_btn">
                    提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="up_box" tabindex="-1" data-backdrop="static" role="dialog" aria-labelledby="myModalLabelM"
     aria-hidden="true">
    <div class="modal-dialog" style="height: 520px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <font class="modal-title" id="myModalLabelM">
                    <i class="glyphicon glyphicon-edit i-style" style="color: rgb(255, 137, 42)"></i><span
                        class="modal-style">修改</span>
                </font>
            </div>
            <div class="modal-body" style="float: left; ">
                <div class="search_info">
                    <span>：</span>
                    <input type="text" id="usernameU" name="username" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>登录密码：</span>
                    <input type="text" id="passwordU" name="password" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>昵称：</span>
                    <input type="text" id="nicknameU" name="nickname" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>手机号：</span>
                    <input type="text" id="mobileU" name="mobile" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>邮箱地址：</span>
                    <input type="text" id="emailU" name="email" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>QQ：</span>
                    <input type="text" id="qqU" name="qq" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>生日：</span>
                    <input type="text" id="birthdayU" name="birthday" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>性别：</span>
                    <input type="text" id="genderU" name="gender" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>头像地址：</span>
                    <input type="text" id="avatarU" name="avatar" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>超级管理员、管理员、普通用户：</span>
                    <input type="text" id="userTypeU" name="userType" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>注册IP：</span>
                    <input type="text" id="regIpU" name="regIp" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>最近登录IP：</span>
                    <input type="text" id="lastLoginIpU" name="lastLoginIp" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>最近登录时间：</span>
                    <input type="text" id="lastLoginTimeU" name="lastLoginTime" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>登录次数：</span>
                    <input type="text" id="loginCountU" name="loginCount" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>用户备注：</span>
                    <input type="text" id="remarkU" name="remark" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>用户状态：</span>
                    <input type="text" id="statusU" name="status" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>注册时间：</span>
                    <input type="text" id="createTimeU" name="createTime" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>更新时间：</span>
                    <input type="text" id="updateTimeU" name="updateTime" class="form-control"
                           placeholder="请输入">
                </div>
                <input type="hidden" id="id">
            </div>
            <div class="modal-footer" style="clear: both;">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="mod_btn">
                    提交
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="see_box" tabindex="-1" role="dialog" aria-labelledby="myModalLabelS" aria-hidden="true">
    <div class="modal-dialog" style="width: 80%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <font class="modal-title" id="myModalLabelS">
                    <i class="glyphicon glyphicon-list-alt i-style" style="color: rgb(105, 170, 70);"></i><span
                        class="modal-style">详情</span>
                </font>
            </div>
            <div class="modal-body" style="float: left; ">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <colgroup>
                            <col class="col-xs-2">
                            <col class="col-xs-6">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row">
                                    <code></code>
                                </th>
                                <td id="usernameS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>登录密码</code>
                                </th>
                                <td id="passwordS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>昵称</code>
                                </th>
                                <td id="nicknameS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>手机号</code>
                                </th>
                                <td id="mobileS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>邮箱地址</code>
                                </th>
                                <td id="emailS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>QQ</code>
                                </th>
                                <td id="qqS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>生日</code>
                                </th>
                                <td id="birthdayS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>性别</code>
                                </th>
                                <td id="genderS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>头像地址</code>
                                </th>
                                <td id="avatarS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>超级管理员、管理员、普通用户</code>
                                </th>
                                <td id="userTypeS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>注册IP</code>
                                </th>
                                <td id="regIpS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>最近登录IP</code>
                                </th>
                                <td id="lastLoginIpS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>最近登录时间</code>
                                </th>
                                <td id="lastLoginTimeS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>登录次数</code>
                                </th>
                                <td id="loginCountS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>用户备注</code>
                                </th>
                                <td id="remarkS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>用户状态</code>
                                </th>
                                <td id="statusS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>注册时间</code>
                                </th>
                                <td id="createTimeS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>更新时间</code>
                                </th>
                                <td id="updateTimeS"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer" style="clear: both;">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>

<script src="<%=path%>/js/jquery-2.0.3.min.js"></script>
<script src="<%=path%>/js/ace/js/bootstrap.min.js"></script>
<script src="<%=path%>/js/ace/js/bootstrap-table.js"></script>
<script src="<%=path%>/js/ace/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=path%>/js/ace/js/bootstrap-table-fixed-columns.js"></script>
<script src="<%=path%>/js/ace/js/jquery.dataTables.min.js"></script>
<script src="<%=path%>/js/ace/js/jquery.dataTables.bootstrap.js"></script>
<script src="<%=path%>/js/ace/js/date-time/bootstrap-datetimepicker.min.js"></script>
<script src="<%=path%>/js/ace/js/date-time/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=path%>/js/layer/layer.js"></script>
<script src="<%=path%>/js/ace/js/common.js"></script>
<script src="<%=path%>/js/ace/js/bootstrap-tab.js"></script>
<script src="<%=path %>/js/bootstrap-select-1.13.0/js/bootstrap-select.min.js"></script>
<script src="<%=path %>/js/bootstrap-select-1.13.0/js/i18n/defaults-zh_CN.min.js"></script>
<script src="<%=path %>/js/Convert_Pinyin.js"></script>
<script src="<%=path %>/js/bootstrapUtil.js"></script>
<script type="text/javascript">
    var tableH;
    var allh;
    var rowsJson;
    $(function () {
        // 页面高度
        allh = $(window).height();
        // 查询条件高度
        var searchH = document.getElementById("search_box").offsetHeight;
        // 列表高度
        tableH = allh - searchH - 65;
        var oTable = new TableInit();
        oTable.Init();
        getAllDate();
    });

    function getAllDate() {
        $.ajax({
            url: '<%=path %>/deptInfo/listDeptInfo4Select.action',
            type: 'post',
            dataType: 'json',
            data: {},
            success: function (data) {
                var depts = data.depts;
                if (depts) {
                    for (var i = 0; i < depts.length; i++) {
                        var search = pinyin.getFullChars(depts[i].name) + "|" + pinyin.getCamelChars(depts[i].name) + "|" + (pinyin.getCamelChars(depts[i].name)).toLowerCase();
                        var op = $("<option>", {"text": depts[i].name, "value": depts[i].id, "data-tokens": search});
                        $('#nameQ').append(op);
                    }
                }
                $('.selectpicker').selectpicker('refresh');
            }
        });
    }

    // 打开和隐藏查询条件
    function showSearchInfo(obj) {
        // name 0-显示的 1-隐藏的
        var name = $(obj).attr('name')
        if (name == 0) {
            $(obj).children('.glyphicon').removeClass('glyphicon-chevron-up');
            $(obj).children('.glyphicon').addClass('glyphicon-chevron-down');
            $('#search_body').hide()
            $(obj).attr('name', 1);
        } else {
            $(obj).children('.glyphicon').removeClass('glyphicon-chevron-down');
            $(obj).children('.glyphicon').addClass('glyphicon-chevron-up');
            $('#search_body').show()
            $(obj).attr('name', 0);
        }
        resizeTableH();
    }

    // 窗口改变，table大小随着改变
    $(window).resize(function () {
        resizeTableH();
    });

    // 重新设置table高度
    function resizeTableH() {
        // 页面高度
        allh = $(window).height();
        // 查询条件高度
        var searchH = document.getElementById("search_box").offsetHeight;
        $('#tb_customer').bootstrapTable('resetView', {
            height: allh - searchH - 65
        });
    }

    $('#add_box').on('show.bs.modal', function () {
        $('#add_box').each(function () {
            var $clone = $(this).clone().css('display', 'block').appendTo('body');
            var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
            top = top > 0 ? top : 0;
            $clone.remove();
            $(this).find('.modal-content').css("margin-top", top);
        });
    });

    $('#up_box').on('show.bs.modal', function () {
        $('#up_box').each(function () {
            var $clone = $(this).clone().css('display', 'block').appendTo('body');
            var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
            top = top > 0 ? top : 0;
            $clone.remove();
            $(this).find('.modal-content').css("margin-top", top);
        });
    });

    // 点击table行后改变行颜色
    $('#tb_customer').on('click-row.bs.table', function (e, row, $element) {
        $('.change_color').removeClass('change_color');
        $($element).addClass('change_color');
        rowsJson = JSON.parse(JSON.stringify(row));
        TableInit();
    });
    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_customer').bootstrapTable({
                url: '<%=path%>/sys-user/list.action',         //请求后台的URL（*）
                method: 'post',                      //请求方式（*）获取表格使用get，不然获取不到参数；
                contentType: "application/x-www-form-urlencoded",//post请求的话就加上这个句话
                toolbar: '#toolbar',                //工具按钮用哪个容器
                striped: true,                      //是否显示行间隔色
                pagination: true,                   //分页
                // fixedColumns: true,                 //固定列
                // fixedNumber: 2,                     //固定列的数量
                paginationLoop: false,
                paginationPreText: '上一页',
                paginationNextText: '下一页',
                sortable: true,                     //是否启用排序
                sortOrder: "asc",                   //排序方式
                queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,                       //初始化加载第一页，默认第一页
                pageSize: 20,                       //每页的记录行数（*）
                pageList: [10, 20, 30, 50, 100],        //可供选择的每页的行数（*）
                singleSelect: true,               // 设置为true将禁止多选
                search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
                strictSearch: false,
                showColumns: false,                  //是否显示所有的列
                showRefresh: false,                  //是否显示刷新按钮
                minimumCountColumns: 1,             //最少允许的列数
                clickToSelect: true,                //是否启用点击选中行
                height: tableH,                     //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
                uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
                cardView: false,                  //是否显示详细视图
                detailView: false,                   //是否显示父子表
                showFooter: false,
                responseHandler: function (res) {
                    return {
                        "total": res.total,//总页数
                        "rows": res.rows   //数据
                    };
                },
                columns: [
                    {
                        align: "center",
                        width: 35,
                        title: '',//标题  可不加
                        formatter: function (value, row, index) {
                            return index + 1;
                        },
                        cellStyle: function (value, row, index) {
                            var bg_color = '#F2F2F2';
                            return {
                                css: {
                                    "background-color": bg_color
                                }
                            }
                        }
                    },
                    {
                        align: "center",
                        field: 'username',
                        title: '',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'password',
                        title: '登录密码',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'nickname',
                        title: '昵称',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'mobile',
                        title: '手机号',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'email',
                        title: '邮箱地址',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'qq',
                        title: 'QQ',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'birthday',
                        title: '生日',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'gender',
                        title: '性别',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'avatar',
                        title: '头像地址',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'userType',
                        title: '超级管理员、管理员、普通用户',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'regIp',
                        title: '注册IP',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'lastLoginIp',
                        title: '最近登录IP',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'lastLoginTime',
                        title: '最近登录时间',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'loginCount',
                        title: '登录次数',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'remark',
                        title: '用户备注',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'status',
                        title: '用户状态',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'createTime',
                        title: '注册时间',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'updateTime',
                        title: '更新时间',
                        sortable: 'false',
                    },
                    {
                        field: 'operate',
                        title: '操作',
                        align: 'center',
                        events: operateEvents,
                        formatter: operateFormatter
                    }
                ],
            });
        };

        //得到查询的参数 自动复制
        oTableInit.queryParams = function (params) {
            params.limit = params.limit   //页面大小
            params.offset = params.offset  //页码
            params.order = params.order
            params.sort = params.sort
            return params;
        };
        return oTableInit;
    };

    document.onkeydown = function (e) {
        var ev = document.all ? window.event : e;
        if (ev.keyCode == 13) {
            query();
        }
    }

    function operateFormatter(value, row, index) {

            return [
                '<a class="like" href="javascript:void(0)" title="修改">',
                '<i class="glyphicon glyphicon-edit" style="color: rgb(255, 137, 42)"></i>',
                '</a>  ',
                '<a class="information" href="javascript:void(0)" title="详情">',
                '<i class="glyphicon glyphicon-list-alt" style="color: rgb(105, 170, 70)"></i>',
                '</a>  ',
                '<a class="remove" href="javascript:void(0)" title="删除">',
                '<i class="glyphicon glyphicon-remove" style="color:rgb(221, 90, 67);"></i>',
                '</a>',
            ].join('');
        }

    }

    window.operateEvents = {
        'click .like': function (e, value, row, index) {
            dynamicAssignmentUp(row);
            $('#up_box').modal();
        },
        'click .remove': function (e, value, row, index) {
            layer.confirm("确定删除" + row.name + "？", {
                btn: ['确定', '取消'], //按钮
                title: '提示'
            }, function () {
                layer.closeAll('dialog');
                var index = layer.load(2, {shade: 0.1});
                $.ajax({
                    url: '<%=path%>/deptInfo/deleteDeptById.action',
                    type: 'post',
                    dataType: 'json',
                    data: {
                        "id": row.id
                    },
                    success: function (data) {
                        layer.close(index);
                        if (data.msgCode == '1') {
                            layer.confirm('删除成功！', {
                                btn: ['确定'], //按钮
                                title: '提示'
                            }, function () {
                                // 刷新当前页
                                layer.closeAll('dialog');
                                $('#tb_customer').bootstrapTable('refresh');
                            });
                        } else {
                            layer.msg('删除失败，请稍后重试！', {time: 1500});
                        }
                    }
                });
            }, function () {
                layer.closeAll('dialog');
            });
        },
        'click .information': function (e, value, rowDate, index) {
            dynamicAssignmentInfo(rowDate);
            $('#see_box').modal(); //开启模态框
        }
    };

    //重置搜索框
    function resetSelect() {
        rowsJson = "";
        refresh();
    }

    // 保存新增  var index = layer.load(2, {shade: 0.1});  layer.close(index);
    $('#save_btn').click(function () {
        var username = $('#usernameA').val();
            if (username == "") {
                layer.msg('请输入username', {time: 1500});//提示信息
                return;
            }
        var password = $('#passwordA').val();
            if (password == "") {
                layer.msg('请输入password', {time: 1500});//提示信息
                return;
            }
        var nickname = $('#nicknameA').val();
            if (nickname == "") {
                layer.msg('请输入nickname', {time: 1500});//提示信息
                return;
            }
        var mobile = $('#mobileA').val();
            if (mobile == "") {
                layer.msg('请输入mobile', {time: 1500});//提示信息
                return;
            }
        var email = $('#emailA').val();
            if (email == "") {
                layer.msg('请输入email', {time: 1500});//提示信息
                return;
            }
        var qq = $('#qqA').val();
            if (qq == "") {
                layer.msg('请输入qq', {time: 1500});//提示信息
                return;
            }
        var birthday = $('#birthdayA').val();
            if (birthday == "") {
                layer.msg('请输入birthday', {time: 1500});//提示信息
                return;
            }
        var gender = $('#genderA').val();
            if (gender == "") {
                layer.msg('请输入gender', {time: 1500});//提示信息
                return;
            }
        var avatar = $('#avatarA').val();
            if (avatar == "") {
                layer.msg('请输入avatar', {time: 1500});//提示信息
                return;
            }
        var userType = $('#userTypeA').val();
            if (userType == "") {
                layer.msg('请输入userType', {time: 1500});//提示信息
                return;
            }
        var regIp = $('#regIpA').val();
            if (regIp == "") {
                layer.msg('请输入regIp', {time: 1500});//提示信息
                return;
            }
        var lastLoginIp = $('#lastLoginIpA').val();
            if (lastLoginIp == "") {
                layer.msg('请输入lastLoginIp', {time: 1500});//提示信息
                return;
            }
        var lastLoginTime = $('#lastLoginTimeA').val();
            if (lastLoginTime == "") {
                layer.msg('请输入lastLoginTime', {time: 1500});//提示信息
                return;
            }
        var loginCount = $('#loginCountA').val();
            if (loginCount == "") {
                layer.msg('请输入loginCount', {time: 1500});//提示信息
                return;
            }
        var remark = $('#remarkA').val();
            if (remark == "") {
                layer.msg('请输入remark', {time: 1500});//提示信息
                return;
            }
        var status = $('#statusA').val();
            if (status == "") {
                layer.msg('请输入status', {time: 1500});//提示信息
                return;
            }
        var createTime = $('#createTimeA').val();
            if (createTime == "") {
                layer.msg('请输入createTime', {time: 1500});//提示信息
                return;
            }
        var updateTime = $('#updateTimeA').val();
            if (updateTime == "") {
                layer.msg('请输入updateTime', {time: 1500});//提示信息
                return;
            }

        var index = layer.load(2, {shade: 0.1});//加载
        $.ajax({
            url: '<%=path%>/sys-user/save',
            type: 'post',
            dataType: 'json',
            data: {
                "username": username,
                "password": password,
                "nickname": nickname,
                "mobile": mobile,
                "email": email,
                "qq": qq,
                "birthday": birthday,
                "gender": gender,
                "avatar": avatar,
                "userType": userType,
                "regIp": regIp,
                "lastLoginIp": lastLoginIp,
                "lastLoginTime": lastLoginTime,
                "loginCount": loginCount,
                "remark": remark,
                "status": status,
                "createTime": createTime,
                "updateTime": updateTime,
            },
            success: function (data) {
                layer.close(index);
                if (data.msgCode == '1') {
                    $('#add_box').modal('hide');
                    layer.confirm('新增成功！', {
                        btn: ['确定'] //按钮
                    }, function () {
                        window.location.reload();
                    });
                }
                else {
                    layer.msg('添加失败，请稍后重试！', {time: 1500});
                }
            }
        });
    });

    // 提交修改数据
    $('#mod_btn').click(function () {
        var username = $('#usernameU').val();
            if (username == "") {
            layer.msg('请输入username', {time: 1500});//提示信息
            return;
        }
        var password = $('#passwordU').val();
            if (password == "") {
            layer.msg('请输入password', {time: 1500});//提示信息
            return;
        }
        var nickname = $('#nicknameU').val();
            if (nickname == "") {
            layer.msg('请输入nickname', {time: 1500});//提示信息
            return;
        }
        var mobile = $('#mobileU').val();
            if (mobile == "") {
            layer.msg('请输入mobile', {time: 1500});//提示信息
            return;
        }
        var email = $('#emailU').val();
            if (email == "") {
            layer.msg('请输入email', {time: 1500});//提示信息
            return;
        }
        var qq = $('#qqU').val();
            if (qq == "") {
            layer.msg('请输入qq', {time: 1500});//提示信息
            return;
        }
        var birthday = $('#birthdayU').val();
            if (birthday == "") {
            layer.msg('请输入birthday', {time: 1500});//提示信息
            return;
        }
        var gender = $('#genderU').val();
            if (gender == "") {
            layer.msg('请输入gender', {time: 1500});//提示信息
            return;
        }
        var avatar = $('#avatarU').val();
            if (avatar == "") {
            layer.msg('请输入avatar', {time: 1500});//提示信息
            return;
        }
        var userType = $('#userTypeU').val();
            if (userType == "") {
            layer.msg('请输入userType', {time: 1500});//提示信息
            return;
        }
        var regIp = $('#regIpU').val();
            if (regIp == "") {
            layer.msg('请输入regIp', {time: 1500});//提示信息
            return;
        }
        var lastLoginIp = $('#lastLoginIpU').val();
            if (lastLoginIp == "") {
            layer.msg('请输入lastLoginIp', {time: 1500});//提示信息
            return;
        }
        var lastLoginTime = $('#lastLoginTimeU').val();
            if (lastLoginTime == "") {
            layer.msg('请输入lastLoginTime', {time: 1500});//提示信息
            return;
        }
        var loginCount = $('#loginCountU').val();
            if (loginCount == "") {
            layer.msg('请输入loginCount', {time: 1500});//提示信息
            return;
        }
        var remark = $('#remarkU').val();
            if (remark == "") {
            layer.msg('请输入remark', {time: 1500});//提示信息
            return;
        }
        var status = $('#statusU').val();
            if (status == "") {
            layer.msg('请输入status', {time: 1500});//提示信息
            return;
        }
        var createTime = $('#createTimeU').val();
            if (createTime == "") {
            layer.msg('请输入createTime', {time: 1500});//提示信息
            return;
        }
        var updateTime = $('#updateTimeU').val();
            if (updateTime == "") {
            layer.msg('请输入updateTime', {time: 1500});//提示信息
            return;
        }
        var id = $('#id').val();
        var index = layer.load(2, {shade: 0.1});
        $.ajax({
            url: '<%=path%>/sys-user/update.action',
            type: 'post',
            dataType: 'json',
            data: {
                "id": id,
                "username": username,
                "password": password,
                "nickname": nickname,
                "mobile": mobile,
                "email": email,
                "qq": qq,
                "birthday": birthday,
                "gender": gender,
                "avatar": avatar,
                "userType": userType,
                "regIp": regIp,
                "lastLoginIp": lastLoginIp,
                "lastLoginTime": lastLoginTime,
                "loginCount": loginCount,
                "remark": remark,
                "status": status,
                "createTime": createTime,
                "updateTime": updateTime,
            },
            success: function (data) {
                layer.close(index);
                if (data.msgCode == 1) {
                    $('#add_box').modal('hide');
                    layer.confirm('修改成功！', {
                        btn: ['确定'] //按钮
                    }, function () {
                        window.location.reload();
                    });
                }
                else {
                    layer.msg('修改失败，请稍后重试！', {time: 1500});
                }
            }
        });
    });

    function refresh() {
        //刷新
        $('#tb_customer').bootstrapTable('refresh');
    }

    $('#add_box').on('hidden.bs.modal', function () { //监听模态框隐藏事件
        clearForm($('#applyForm')); //清楚模态框中的数据，
    });

    function clearForm(form) {
        // input清空
        $(':input', form).each(function () {
            var type = this.type;
            var tag = this.tagName.toLowerCase(); // normalize case
            if (type == 'text' || type == 'password' || tag == 'textarea')
                this.value = "";
            // 多选checkboxes清空
            // select 下拉框清空
            else if (tag == 'select')
                this.selectedIndex = -1;
        });
    };

    // 查询
    function query() {
        $('#tb_customer').bootstrapTable('refreshOptions', {
            offset: 0,
            limit: 20,
        });
    }

</script>
</html>

