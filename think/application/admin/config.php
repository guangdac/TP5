<?php
return [
    // +----------------------------------------------------------------------
    // | 应用index模块的全局设置
    // +----------------------------------------------------------------------
    // 视图输出字符串内容替换
    'view_replace_str'       => [
		'__PUBLIC__'=> SITE_URL . '/static/admin',
		'__ROOT__' => '/',
    ],
    
    // +----------------------------------------------------------------------
    // | 模板设置
    // +----------------------------------------------------------------------
    'template'               => [
        // 模板路径
        'view_path'    => '',
        // 模板后缀
        'view_suffix'  => 'html',
    ],];
