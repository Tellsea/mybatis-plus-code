<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%><!DOCTYPE html>
<html lang="zh">
<head>
    <title>用户表</title>
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
                    <span>用户名</span>
                    <select id="usernameQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>密码</span>
                    <select id="passwordQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>盐值</span>
                    <select id="saltQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>部门ID</span>
                    <select id="deptIdQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>创建时间</span>
                    <select id="createTimeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>修改时间</span>
                    <select id="modifyTimeQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>头像</span>
                    <select id="avatarQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>手机</span>
                    <select id="phoneQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>性别 1男 2女</span>
                    <select id="sexQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>描述</span>
                    <select id="descriptionQ" class="selectpicker" data-live-search="true">
                        <option value="0">请选择</option>
                    </select>
                </div>
                <div class="search_info">
                    <span>状态 0 锁定 1有效</span>
                    <select id="statusQ" class="selectpicker" data-live-search="true">
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
                        <span>用户名：</span>
                        <input type="text" id="usernameA" name="username" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>密码：</span>
                        <input type="text" id="passwordA" name="password" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>盐值：</span>
                        <input type="text" id="saltA" name="salt" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>部门ID：</span>
                        <input type="text" id="deptIdA" name="deptId" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>创建时间：</span>
                        <input type="text" id="createTimeA" name="createTime" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>修改时间：</span>
                        <input type="text" id="modifyTimeA" name="modifyTime" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>头像：</span>
                        <input type="text" id="avatarA" name="avatar" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>手机：</span>
                        <input type="text" id="phoneA" name="phone" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>性别 1男 2女：</span>
                        <input type="text" id="sexA" name="sex" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>描述：</span>
                        <input type="text" id="descriptionA" name="description" class="form-control"
                               placeholder="请输入">
                    </div>
                    <div class="search_info">
                        <span>状态 0 锁定 1有效：</span>
                        <input type="text" id="statusA" name="status" class="form-control"
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
                    <span>用户名：</span>
                    <input type="text" id="usernameU" name="username" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>密码：</span>
                    <input type="text" id="passwordU" name="password" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>盐值：</span>
                    <input type="text" id="saltU" name="salt" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>部门ID：</span>
                    <input type="text" id="deptIdU" name="deptId" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>创建时间：</span>
                    <input type="text" id="createTimeU" name="createTime" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>修改时间：</span>
                    <input type="text" id="modifyTimeU" name="modifyTime" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>头像：</span>
                    <input type="text" id="avatarU" name="avatar" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>手机：</span>
                    <input type="text" id="phoneU" name="phone" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>性别 1男 2女：</span>
                    <input type="text" id="sexU" name="sex" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>描述：</span>
                    <input type="text" id="descriptionU" name="description" class="form-control"
                           placeholder="请输入">
                </div>
                <div class="search_info">
                    <span>状态 0 锁定 1有效：</span>
                    <input type="text" id="statusU" name="status" class="form-control"
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
                                    <code>用户名</code>
                                </th>
                                <td id="usernameS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>密码</code>
                                </th>
                                <td id="passwordS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>盐值</code>
                                </th>
                                <td id="saltS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>部门ID</code>
                                </th>
                                <td id="deptIdS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>创建时间</code>
                                </th>
                                <td id="createTimeS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>修改时间</code>
                                </th>
                                <td id="modifyTimeS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>头像</code>
                                </th>
                                <td id="avatarS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>手机</code>
                                </th>
                                <td id="phoneS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>性别 1男 2女</code>
                                </th>
                                <td id="sexS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>描述</code>
                                </th>
                                <td id="descriptionS"></td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <code>状态 0 锁定 1有效</code>
                                </th>
                                <td id="statusS"></td>
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
<script type="text/javascript">

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

    var TableInit = function () {
        var oTableInit = new Object();
        //初始化Table
        oTableInit.Init = function () {
            $('#tb_customer').bootstrapTable({
                url: '<%=path%>/user/list.action',         //请求后台的URL（*）
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
                        title: '用户名',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'password',
                        title: '密码',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'salt',
                        title: '盐值',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'deptId',
                        title: '部门ID',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'createTime',
                        title: '创建时间',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'modifyTime',
                        title: '修改时间',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'avatar',
                        title: '头像',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'phone',
                        title: '手机',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'sex',
                        title: '性别 1男 2女',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'description',
                        title: '描述',
                        sortable: 'false',
                    },
                    {
                        align: "center",
                        field: 'status',
                        title: '状态 0 锁定 1有效',
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
        var salt = $('#saltA').val();
            if (salt == "") {
                layer.msg('请输入salt', {time: 1500});//提示信息
                return;
            }
        var deptId = $('#deptIdA').val();
            if (deptId == "") {
                layer.msg('请输入deptId', {time: 1500});//提示信息
                return;
            }
        var createTime = $('#createTimeA').val();
            if (createTime == "") {
                layer.msg('请输入createTime', {time: 1500});//提示信息
                return;
            }
        var modifyTime = $('#modifyTimeA').val();
            if (modifyTime == "") {
                layer.msg('请输入modifyTime', {time: 1500});//提示信息
                return;
            }
        var avatar = $('#avatarA').val();
            if (avatar == "") {
                layer.msg('请输入avatar', {time: 1500});//提示信息
                return;
            }
        var phone = $('#phoneA').val();
            if (phone == "") {
                layer.msg('请输入phone', {time: 1500});//提示信息
                return;
            }
        var sex = $('#sexA').val();
            if (sex == "") {
                layer.msg('请输入sex', {time: 1500});//提示信息
                return;
            }
        var description = $('#descriptionA').val();
            if (description == "") {
                layer.msg('请输入description', {time: 1500});//提示信息
                return;
            }
        var status = $('#statusA').val();
            if (status == "") {
                layer.msg('请输入status', {time: 1500});//提示信息
                return;
            }

        var index = layer.load(2, {shade: 0.1});//加载
        $.ajax({
            url: '<%=path%>/user/save',
            type: 'post',
            dataType: 'json',
            data: {
                "username": username,
                "password": password,
                "salt": salt,
                "deptId": deptId,
                "createTime": createTime,
                "modifyTime": modifyTime,
                "avatar": avatar,
                "phone": phone,
                "sex": sex,
                "description": description,
                "status": status,
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
        var salt = $('#saltU').val();
            if (salt == "") {
            layer.msg('请输入salt', {time: 1500});//提示信息
            return;
        }
        var deptId = $('#deptIdU').val();
            if (deptId == "") {
            layer.msg('请输入deptId', {time: 1500});//提示信息
            return;
        }
        var createTime = $('#createTimeU').val();
            if (createTime == "") {
            layer.msg('请输入createTime', {time: 1500});//提示信息
            return;
        }
        var modifyTime = $('#modifyTimeU').val();
            if (modifyTime == "") {
            layer.msg('请输入modifyTime', {time: 1500});//提示信息
            return;
        }
        var avatar = $('#avatarU').val();
            if (avatar == "") {
            layer.msg('请输入avatar', {time: 1500});//提示信息
            return;
        }
        var phone = $('#phoneU').val();
            if (phone == "") {
            layer.msg('请输入phone', {time: 1500});//提示信息
            return;
        }
        var sex = $('#sexU').val();
            if (sex == "") {
            layer.msg('请输入sex', {time: 1500});//提示信息
            return;
        }
        var description = $('#descriptionU').val();
            if (description == "") {
            layer.msg('请输入description', {time: 1500});//提示信息
            return;
        }
        var status = $('#statusU').val();
            if (status == "") {
            layer.msg('请输入status', {time: 1500});//提示信息
            return;
        }
        var id = $('#id').val();
        var index = layer.load(2, {shade: 0.1});
        $.ajax({
            url: '<%=path%>/user/update.action',
            type: 'post',
            dataType: 'json',
            data: {
                "id": id,
                "username": username,
                "password": password,
                "salt": salt,
                "deptId": deptId,
                "createTime": createTime,
                "modifyTime": modifyTime,
                "avatar": avatar,
                "phone": phone,
                "sex": sex,
                "description": description,
                "status": status,
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

    // 查询
    function query() {
        $('#tb_customer').bootstrapTable('refreshOptions', {
            offset: 0,
            limit: 20,
        });
    }

</script>
</html>

