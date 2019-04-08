<?php
if (file_exists(XOOPS_ROOT_PATH . "/class/xoopsform/renderer/XoopsFormRendererBootstrap4.php")) {
    xoops_load('XoopsFormRendererBootstrap4');
    XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap4());
    $_SESSION['bootstrap'] = 4;
} else {
    xoops_load('XoopsFormRendererBootstrap3');
    XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap3());
    $_SESSION['bootstrap'] = 3;
}
