<!DOCTYPE html>
<html lang="<{$xoops_langcode|default:''}>">
  <head>

    <{assign var="bootstrap" value=$smarty.session.bootstrap|default:$session.bootstrap}>
    <!--目前$_SESSION['bootstrap']="<{$bootstrap|default:''}>"; -->
    <!--目前$_SESSION['bootstrap']="<{$bootstrap|default:''}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var="theme_name" value=$xoTheme->folderName}>




    <{include file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename|default:''}> - <{$xoops_pagetitle|default:''}></title>

    <{include file="$xoops_rootpath/modules/tadtools/themes_tpl`$bootstrap`/link_css.tpl"}>


    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header|default:''}>

    <style type="text/css">
      body{
        font-family: <{$font_family|default:''}>;
      }

      #xoops_theme_left_zone{
        <{if $left_separate=='1'}>
          border-right:<{$separate_style|default:''}>;
        <{/if}>
      }

      #xoops_theme_right_zone{
        <{if $right_separate=='1'}>
          border-<{if $theme_type=="theme_type_3" or $theme_type=="theme_type_4" or $theme_type=="theme_type_8"}>top<{else}>left<{/if}>:<{$separate_style|default:''}>;
        <{/if}>
      }
    </style>
  </head>

  <body <{$prism_setup|default:''}>>
    <{$xoops_contents|default:''}>

    <!-- 載入bootstrap -->
    <{include file="$xoops_rootpath/modules/tadtools/themes_tpl`$bootstrap`/bootstrap_js.tpl"}>

    <!-- 載入自訂js -->
    <{include file="$xoops_rootpath/modules/tadtools/themes_tpl`$bootstrap`/my_js.tpl"}>


    <{$my_code|default:''}>
    <!-- 顯示參數，開發用，開發完可刪除 -->
    <{if $show_var=='1'}>
      <{include file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>
  </body>
</html>