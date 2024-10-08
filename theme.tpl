<!DOCTYPE html>
<html lang="<{$xoops_langcode|default:''}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{$smarty.session.bootstrap}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>
    <{php}>
    if ($_SESSION['bootstrap']==4) {
      $_SESSION['themes_tpl']="themes4_tpl";
    } else {
      $_SESSION['themes_tpl']="themes3_tpl";
    }
    <{/php}>
    <!--載入由使用者設定的各項佈景變數-->
    <{include file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>

    <{include file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename|default:''}> - <{$xoops_pagetitle|default:''}></title>

    <{include file="$xoops_rootpath/modules/tadtools/`$smarty.session.themes_tpl`/link_css.tpl"}>


    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header|default:''}>


    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.tpl 那就不需要這一部份 -->
    <{*
    <{include file="$xoops_rootpath/modules/tadtools/`$smarty.session.themes_tpl`/theme_css.tpl"}>
    *}>

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

  <body>
    <{$xoops_contents|default:''}>

    <!-- 載入bootstrap -->
    <{include file="$xoops_rootpath/modules/tadtools/`$smarty.session.themes_tpl`/bootstrap_js.tpl"}>

    <!-- 載入自訂js -->
    <{include file="$xoops_rootpath/modules/tadtools/`$smarty.session.themes_tpl`/my_js.tpl"}>


    <{$my_code|default:''}>
    <!-- 顯示參數，開發用，開發完可刪除 -->
    <{if $show_var=='1'}>
      <{include file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>
  </body>
</html>