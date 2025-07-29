<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="privacy.aspx.cs" Inherits="WebSiteCT2023.privacidade.privacy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">
    <title>Residencial Garoupa &#8211; Casa&amp;Terra Empreendimentos</title>
    <meta name="robots" content="max-image-preview:large">
    <link href="https://fonts.gstatic.com/" crossorigin rel="preconnect">
    <link rel="alternate" type="application/rss+xml" title="Feed para Casa&amp;Terra Empreendimentos &raquo;" href="./../feed/index.html">
    <link rel="alternate" type="application/rss+xml" title="Feed de comentários para Casa&amp;Terra Empreendimentos &raquo;" href="./../comments/feed/index.html">
    <style>
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 0.07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel="stylesheet" href="./../wp-content/plugins/bdthemes-element-pack/assets/css/bdt-uikit.css?ver=3.15.1" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/bdthemes-element-pack/assets/css/ep-helper.css?ver=6.14.1" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/font-awesome.min.css?ver=4.7.0" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/tf-header-footer/assets/css/tf-style.css?ver=6.2" media="all">
    <link rel="stylesheet" href="./../wp-includes/css/dist/block-library/style.min.css?ver=6.2" media="all">
    <link rel="stylesheet" href="./../wp-includes/css/classic-themes.min.css?ver=6.2" media="all">
    <style id="global-styles-inline-css">
        body {
            --wp--preset--color--black: #000000;
            --wp--preset--color--cyan-bluish-gray: #abb8c3;
            --wp--preset--color--white: #ffffff;
            --wp--preset--color--pale-pink: #f78da7;
            --wp--preset--color--vivid-red: #cf2e2e;
            --wp--preset--color--luminous-vivid-orange: #ff6900;
            --wp--preset--color--luminous-vivid-amber: #fcb900;
            --wp--preset--color--light-green-cyan: #7bdcb5;
            --wp--preset--color--vivid-green-cyan: #00d084;
            --wp--preset--color--pale-cyan-blue: #8ed1fc;
            --wp--preset--color--vivid-cyan-blue: #0693e3;
            --wp--preset--color--vivid-purple: #9b51e0;
            --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);
            --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
            --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);
            --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);
            --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
            --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
            --wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
            --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
            --wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
            --wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
            --wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
            --wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
            --wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');
            --wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');
            --wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');
            --wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');
            --wp--preset--duotone--midnight: url('#wp-duotone-midnight');
            --wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');
            --wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');
            --wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');
            --wp--preset--font-size--small: 13px;
            --wp--preset--font-size--medium: 20px;
            --wp--preset--font-size--large: 36px;
            --wp--preset--font-size--x-large: 42px;
            --wp--preset--spacing--20: 0.44rem;
            --wp--preset--spacing--30: 0.67rem;
            --wp--preset--spacing--40: 1rem;
            --wp--preset--spacing--50: 1.5rem;
            --wp--preset--spacing--60: 2.25rem;
            --wp--preset--spacing--70: 3.38rem;
            --wp--preset--spacing--80: 5.06rem;
            --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
            --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
            --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
        }

        :where(.is-layout-flex) {
            gap: 0.5em;
        }

        body .is-layout-flow > .alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-flow > .alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-flow > .aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > .alignleft {
            float: left;
            margin-inline-start: 0;
            margin-inline-end: 2em;
        }

        body .is-layout-constrained > .alignright {
            float: right;
            margin-inline-start: 2em;
            margin-inline-end: 0;
        }

        body .is-layout-constrained > .aligncenter {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
            max-width: var(--wp--style--global--content-size);
            margin-left: auto !important;
            margin-right: auto !important;
        }

        body .is-layout-constrained > .alignwide {
            max-width: var(--wp--style--global--wide-size);
        }

        body .is-layout-flex {
            display: flex;
        }

        body .is-layout-flex {
            flex-wrap: wrap;
            align-items: center;
        }

            body .is-layout-flex > * {
                margin: 0;
            }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        .has-black-color {
            color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-color {
            color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-color {
            color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-color {
            color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-color {
            color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-color {
            color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-color {
            color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-color {
            color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-color {
            color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-color {
            color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-color {
            color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-color {
            color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-background-color {
            background-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-background-color {
            background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-background-color {
            background-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-background-color {
            background-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-background-color {
            background-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-background-color {
            background-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-background-color {
            background-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-background-color {
            background-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-background-color {
            background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-background-color {
            background-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-border-color {
            border-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-border-color {
            border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-border-color {
            border-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-border-color {
            border-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-border-color {
            border-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-border-color {
            border-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-border-color {
            border-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-border-color {
            border-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-border-color {
            border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-border-color {
            border-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
            background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
        }

        .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
            background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
        }

        .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-orange-to-vivid-red-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
        }

        .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
            background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
        }

        .has-cool-to-warm-spectrum-gradient-background {
            background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
        }

        .has-blush-light-purple-gradient-background {
            background: var(--wp--preset--gradient--blush-light-purple) !important;
        }

        .has-blush-bordeaux-gradient-background {
            background: var(--wp--preset--gradient--blush-bordeaux) !important;
        }

        .has-luminous-dusk-gradient-background {
            background: var(--wp--preset--gradient--luminous-dusk) !important;
        }

        .has-pale-ocean-gradient-background {
            background: var(--wp--preset--gradient--pale-ocean) !important;
        }

        .has-electric-grass-gradient-background {
            background: var(--wp--preset--gradient--electric-grass) !important;
        }

        .has-midnight-gradient-background {
            background: var(--wp--preset--gradient--midnight) !important;
        }

        .has-small-font-size {
            font-size: var(--wp--preset--font-size--small) !important;
        }

        .has-medium-font-size {
            font-size: var(--wp--preset--font-size--medium) !important;
        }

        .has-large-font-size {
            font-size: var(--wp--preset--font-size--large) !important;
        }

        .has-x-large-font-size {
            font-size: var(--wp--preset--font-size--x-large) !important;
        }

        .wp-block-navigation a:where(:not(.wp-element-button)) {
            color: inherit;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        .wp-block-pullquote {
            font-size: 1.5em;
            line-height: 1.6;
        }
    </style>
    <link rel="stylesheet" href="./../wp-content/themes/hello-elementor/style.min.css?ver=2.7.1" media="all">
    <link rel="stylesheet" href="./../wp-content/themes/hello-elementor/theme.min.css?ver=2.7.1" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/eicons/css/elementor-icons.min.css?ver=5.18.0" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/css/frontend-lite.min.css?ver=3.12.1" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/swiper/v8/css/swiper.min.css?ver=8.4.5" media="all">
    <link rel="stylesheet" href="./../wp-content/uploads/elementor/css/post-5321.css?ver=1680620388" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/powerpack-elements/assets/css/min/frontend.min.css?ver=2.9.16" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor-pro/assets/css/frontend-lite.min.css?ver=3.12.1" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/full-screen-menu-for-elementor/assets/css/frontend.min.css?ver=1.0.6" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/selection-lite/css/sticky-effect.min.css?ver=1.8" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/ultimate-elementor/assets/min-css/uael-frontend.min.css?ver=1.36.14" media="all">
    <link rel="stylesheet" href="./../wp-content/uploads/elementor/css/post-2655.css?ver=1681232421" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/all.min.css?ver=4.9.53" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/v4-shims.min.css?ver=3.12.1" media="all">
    <link rel="stylesheet" href="./../wp-content/uploads/elementor/css/post-7116.css?ver=1680620388" media="all">
    <link rel="stylesheet" href="./../wp-content/uploads/elementor/css/post-5356.css?ver=1680620388" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementskit-lite/modules/elementskit-icon-pack/assets/css/ekiticons.css?ver=2.8.7" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementskit/modules/parallax/assets/css/style.css?ver=3.1.0" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementskit-lite/widgets/init/assets/css/widget-styles.css?ver=2.8.7" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementskit/widgets/init/assets/css/widget-styles-pro.css?ver=3.1.0" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementskit-lite/widgets/init/assets/css/responsive.css?ver=2.8.7" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/essential-addons-for-elementor-lite/assets/front-end/css/view/general.min.css?ver=5.7.0" media="all">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto+Slab%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CMontserrat%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CPrata%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CArchivo%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CPlayfair+Display%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CLato%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&#038;display=swap&#038;ver=6.2" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min.css?ver=5.15.3" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/solid.min.css?ver=5.15.3" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/regular.min.css?ver=5.15.3" media="all">
    <link rel="stylesheet" href="./../wp-content/plugins/elementor/assets/lib/font-awesome/css/brands.min.css?ver=5.15.3" media="all">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <script id="jquery-core-js-extra">var pp = { "ajax_url": ".\/\/wp-admin\/admin-ajax.php" };</script>
    <script src="./../wp-includes/js/jquery/jquery.min.js?ver=3.6.3" id="jquery-core-js"></script>
    <script src="./../wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.0" id="jquery-migrate-js"></script>
    <script id="wab-main-script-js-extra">var php_vars = { "startHour": "8", "endHour": "22", "limitHours": "0", "hideButtonType": null, "button_location": "right", "button_type": "wab-icon-plain", "plugins_url": ".\/\/wp-content\/plugins" };</script>
    <script src="./../wp-content/plugins/add-whatsapp-button/includes/../js/main.js?ver=6.2" id="wab-main-script-js"></script>
    <script src="./../wp-content/plugins/add-whatsapp-button/includes/../js/jquery-ui.drag.min.js?ver=6.2" id="jquery_draggable-js"></script>
    <script src="./../wp-content/plugins/add-whatsapp-button/includes/../js/jquery.ui.touch-punch.min.js?ver=6.2" id="jquery_touch_punch-js"></script>
    <script src="./../wp-content/plugins/elementor/assets/lib/font-awesome/js/v4-shims.min.js?ver=3.12.1" id="font-awesome-4-shim-js"></script>
    <script src="./../wp-content/plugins/elementskit/modules/parallax/assets/js/jarallax.js?ver=3.1.0" id="jarallax-js"></script>
    <link rel="https://api.w.org/" href="./../wp-json/index.html">
    <link rel="alternate" type="application/json" href="./../wp-json/wp/v2/pages/2655/index.html">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="./../xmlrpc.php?rsd">
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="./../wp-includes/wlwmanifest.xml">
    <meta name="generator" content="WordPress 6.2">
    <link rel="canonical" href="./index.html">
    <link rel="shortlink" href="./../index.html?p=2655">
    <link rel="alternate" type="application/json+oembed" href="./../wp-json/oembed/1.0/embed/index.html?url=.%2F%2Fgaroupa%2F">
    <link rel="alternate" type="text/xml+oembed" href="./../wp-json/oembed/1.0/embed/index.html?url=.%2F%2Fgaroupa%2F#038;format=xml">
    <style type="text/css">
        img.wab-chevron {
            height: 12px;
        }

            img.wab-chevron.wab-right {
                margin-left: 1px;
            }

            img.wab-chevron.wab-left {
                margin-right: 2px;
            }

        /**
             * Side Rectangle
             */
        .wab-side-rectangle.wab-pull-right {
            right: 0;
            left: initial !important;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-side-rectangle.wab-pull-left {
            left: 0;
            right: initial !important;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-side-rectangle.wab-cont {
            position: fixed;
            bottom: -1%;
            z-index: 99997;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

            .wab-side-rectangle.wab-cont .wab-pull-right {
                -webkit-transition: All 0.5s ease;
                -moz-transition: All 0.5s ease;
                -o-transition: All 0.5s ease;
                -ms-transition: All 0.5s ease;
                transition: All 0.5s ease;
            }

        .wab-side-rectangle #whatsAppButton {
            display: block;
            position: relative;
            direction: ltr;
            z-index: 9999;
            cursor: pointer;
            min-width: 50px;
            max-width: 236px;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            padding: 10px 14px;
            margin: 0 auto 0 auto;
            background: #20B038;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

            .wab-side-rectangle #whatsAppButton:after {
                margin-left: 5px;
                margin-right: 5px;
                /* content: url(http://localhost/wp-content/themes/html5blanknew/img/whatsapp-logo2.svg); */
                max-width: 20px;
                max-height: 20px;
                fill: currentColor;
            }

            .wab-side-rectangle #whatsAppButton svg path {
                fill: #fff;
            }

        .wab-side-rectangle #wab_close {
            display: none;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: -10px;
            left: -9px;
            z-index: 999999;
            background-color: #fff;
            font-weight: bold;
            font-size: 14px;
            border: 2px solid;
            border-radius: 12px;
            height: 20px;
            width: 20px;
            line-height: 1.2;
            text-align: center;
            cursor: pointer;
        }

        .wab-x {
            position: absolute;
            top: 1px;
            font-size: 15px;
        }

        #wab_cont.wab-side-rectangle.wab-hidden {
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        /**
             * Bottom Rectangle
             */
        .wab-bottom-rectangle.wab-cont {
            position: fixed;
            bottom: 0;
            z-index: 99999;
            width: 100%;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-bottom-rectangle #whatsAppButton {
            display: block;
            /* position: relative; */
            position: absolute;
            bottom: 0;
            width: 100%;
            direction: ltr;
            z-index: 9999;
            cursor: pointer;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            padding: 10px;
            margin: 0 auto 0 auto;
            background: #20B038;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-bottom-rectangle #wab_close {
            display: none;
            align-items: center;
            justify-content: center;
            position: absolute;
            bottom: 38px;
            left: 10px;
            z-index: 999999;
            background-color: #fff;
            font-weight: bold;
            font-size: 14px;
            border: 2px solid;
            border-radius: 10px;
            height: 20px;
            width: 20px;
            line-height: 1.2;
            text-align: center;
            cursor: pointer;
        }

        .wab-bottom-rectangle img.wab-chevron.wab-down {
            max-width: 64%;
            position: absolute;
            top: 20%;
            left: 18%;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-bottom-rectangle img.wab-chevron.wab-up {
            max-width: 64%;
            position: absolute;
            top: 12%;
            left: 18%;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        #wab_cont.wab-bottom-rectangle.wab-hidden {
            /* bottom: -36px; */
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        /* Icon */

        .wab-icon-styled.wab-cont, .wab-icon-plain.wab-cont {
            position: fixed;
            right: 10px;
            bottom: -1%;
            z-index: 99999;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-icon-styled #whatsAppButton, .wab-icon-plain #whatsAppButton {
            display: block;
            width: 80px;
            height: 80px;
            background-position: center center;
            background-size: cover;
            background-image: url(./../wp-content/plugins/add-whatsapp-button/includes/style-templates/../../img/wa-icon-original.png);
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .wab-icon-styled.wab-cont.wab-pull-left, .wab-icon-plain.wab-cont.wab-pull-left {
            left: 10px;
        }

        .wab-icon-styled.wab-cont.wab-pull-right, .wab-icon-plain.wab-cont.wab-pull-right {
            right: 10px;
        }

        .wab-icon-styled #wab_close, .wab-icon-plain #wab_close {
            display: none;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: -2px;
            left: -5px;
            z-index: 999999;
            background-color: #fff;
            font-weight: bold;
            font-size: 14px;
            border: 2px solid;
            border-radius: 10px;
            height: 20px;
            width: 20px;
            line-height: 1.2;
            text-align: center;
            cursor: pointer;
        }

        #wab_cont.wab-icon-styled.wab-hidden, #wab_cont.wab-icon-plain.wab-hidden {
            right: -64px;
            -webkit-transition: All 0.5s ease;
            -moz-transition: All 0.5s ease;
            -o-transition: All 0.5s ease;
            -ms-transition: All 0.5s ease;
            transition: All 0.5s ease;
        }

        .awb-displaynone {
            display: none;
        }
    </style>

    <meta name="generator" content="Elementor 3.12.1; features: e_dom_optimization, e_optimized_assets_loading, e_optimized_css_loading, a11y_improvements, additional_custom_breakpoints; settings: css_print_method-external, google_font-enabled, font_display-swap">

    <script type="text/javascript">var elementskit_module_parallax_url = ".//wp-content/plugins/elementskit/modules/parallax/"</script>
    <meta name="generator" content="Powered by Slider Revolution 6.6.11 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface.">
    <script>
        function setREVStartSize(e) {
            //window.requestAnimationFrame(function() {
            window.RSIW = window.RSIW === undefined ? window.innerWidth : window.RSIW;
            window.RSIH = window.RSIH === undefined ? window.innerHeight : window.RSIH;
            try {
                var pw = document.getElementById(e.c).parentNode.offsetWidth,
                    newh;
                pw = pw === 0 || isNaN(pw) || (e.l == "fullwidth" || e.layout == "fullwidth") ? window.RSIW : pw;
                e.tabw = e.tabw === undefined ? 0 : parseInt(e.tabw);
                e.thumbw = e.thumbw === undefined ? 0 : parseInt(e.thumbw);
                e.tabh = e.tabh === undefined ? 0 : parseInt(e.tabh);
                e.thumbh = e.thumbh === undefined ? 0 : parseInt(e.thumbh);
                e.tabhide = e.tabhide === undefined ? 0 : parseInt(e.tabhide);
                e.thumbhide = e.thumbhide === undefined ? 0 : parseInt(e.thumbhide);
                e.mh = e.mh === undefined || e.mh == "" || e.mh === "auto" ? 0 : parseInt(e.mh, 0);
                if (e.layout === "fullscreen" || e.l === "fullscreen")
                    newh = Math.max(e.mh, window.RSIH);
                else {
                    e.gw = Array.isArray(e.gw) ? e.gw : [e.gw];
                    for (var i in e.rl) if (e.gw[i] === undefined || e.gw[i] === 0) e.gw[i] = e.gw[i - 1];
                    e.gh = e.el === undefined || e.el === "" || (Array.isArray(e.el) && e.el.length == 0) ? e.gh : e.el;
                    e.gh = Array.isArray(e.gh) ? e.gh : [e.gh];
                    for (var i in e.rl) if (e.gh[i] === undefined || e.gh[i] === 0) e.gh[i] = e.gh[i - 1];

                    var nl = new Array(e.rl.length),
                        ix = 0,
                        sl;
                    e.tabw = e.tabhide >= pw ? 0 : e.tabw;
                    e.thumbw = e.thumbhide >= pw ? 0 : e.thumbw;
                    e.tabh = e.tabhide >= pw ? 0 : e.tabh;
                    e.thumbh = e.thumbhide >= pw ? 0 : e.thumbh;
                    for (var i in e.rl) nl[i] = e.rl[i] < window.RSIW ? 0 : e.rl[i];
                    sl = nl[0];
                    for (var i in nl) if (sl > nl[i] && nl[i] > 0) { sl = nl[i]; ix = i; }
                    var m = pw > (e.gw[ix] + e.tabw + e.thumbw) ? 1 : (pw - (e.tabw + e.thumbw)) / (e.gw[ix]);
                    newh = (e.gh[ix] * m) + (e.tabh + e.thumbh);
                }
                var el = document.getElementById(e.c);
                if (el !== null && el) el.style.height = newh + "px";
                el = document.getElementById(e.c + "_wrapper");
                if (el !== null && el) {
                    el.style.height = newh + "px";
                    el.style.display = "block";
                }
            } catch (e) {
                console.log("Failure at Presize of Slider:" + e)
            }
            //});
        };</script>
    <style id="wp-custom-css">
        /** Start Block Kit CSS: 135-3-c665d4805631b9a8bf464e65129b2f58 **/

        .envato-block__preview {
            overflow: visible;
        }

        /** End Block Kit CSS: 135-3-c665d4805631b9a8bf464e65129b2f58 **/



        /** Start Block Kit CSS: 69-3-4f8cfb8a1a68ec007f2be7a02bdeadd9 **/

        .envato-kit-66-menu .e--pointer-framed .elementor-item:before {
            border-radius: 1px;
        }

        .envato-kit-66-subscription-form .elementor-form-fields-wrapper {
            position: relative;
        }

            .envato-kit-66-subscription-form .elementor-form-fields-wrapper .elementor-field-type-submit {
                position: static;
            }

                .envato-kit-66-subscription-form .elementor-form-fields-wrapper .elementor-field-type-submit button {
                    position: absolute;
                    top: 50%;
                    right: 6px;
                    transform: translate(0, -50%);
                    -moz-transform: translate(0, -50%);
                    -webmit-transform: translate(0, -50%);
                }

        .envato-kit-66-testi-slider .elementor-testimonial__footer {
            margin-top: -60px !important;
            z-index: 99;
            position: relative;
        }

        .envato-kit-66-featured-slider .elementor-slides .slick-prev {
            width: 50px;
            height: 50px;
            background-color: #ffffff !important;
            transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            left: -25px !important;
            -webkit-box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
            -moz-box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
            box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
        }

            .envato-kit-66-featured-slider .elementor-slides .slick-prev:before {
                display: block;
                margin-top: 0px;
                margin-left: 0px;
                transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -webkit-transform: rotate(-45deg);
            }

        .envato-kit-66-featured-slider .elementor-slides .slick-next {
            width: 50px;
            height: 50px;
            background-color: #ffffff !important;
            transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            right: -25px !important;
            -webkit-box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
            -moz-box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
            box-shadow: 0px 1px 2px 1px rgba(0,0,0,0.32);
        }

            .envato-kit-66-featured-slider .elementor-slides .slick-next:before {
                display: block;
                margin-top: -5px;
                margin-right: -5px;
                transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -webkit-transform: rotate(-45deg);
            }

        .envato-kit-66-orangetext {
            color: #f4511e;
        }

        .envato-kit-66-countdown .elementor-countdown-label {
            display: inline-block !important;
            border: 2px solid rgba(255,255,255,0.2);
            padding: 9px 20px;
        }

        /** End Block Kit CSS: 69-3-4f8cfb8a1a68ec007f2be7a02bdeadd9 **/
    </style>
</head>
<body class="page-template-default page page-id-2655 wp-custom-logo elementor-default elementor-template-full-width elementor-kit-5321 elementor-page elementor-page-2655">
    <form id="form1" runat="server">
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-dark-grayscale">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0 0.49803921568627"></fefuncr>
                        <fefuncg type="table" tablevalues="0 0.49803921568627"></fefuncg>
                        <fefuncb type="table" tablevalues="0 0.49803921568627"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-grayscale">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0 1"></fefuncr>
                        <fefuncg type="table" tablevalues="0 1"></fefuncg>
                        <fefuncb type="table" tablevalues="0 1"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-purple-yellow">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0.54901960784314 0.98823529411765"></fefuncr>
                        <fefuncg type="table" tablevalues="0 1"></fefuncg>
                        <fefuncb type="table" tablevalues="0.71764705882353 0.25490196078431"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-blue-red">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0 1"></fefuncr>
                        <fefuncg type="table" tablevalues="0 0.27843137254902"></fefuncg>
                        <fefuncb type="table" tablevalues="0.5921568627451 0.27843137254902"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-midnight">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0 0"></fefuncr>
                        <fefuncg type="table" tablevalues="0 0.64705882352941"></fefuncg>
                        <fefuncb type="table" tablevalues="0 1"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-magenta-yellow">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0.78039215686275 1"></fefuncr>
                        <fefuncg type="table" tablevalues="0 0.94901960784314"></fefuncg>
                        <fefuncb type="table" tablevalues="0.35294117647059 0.47058823529412"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-purple-green">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0.65098039215686 0.40392156862745"></fefuncr>
                        <fefuncg type="table" tablevalues="0 1"></fefuncg>
                        <fefuncb type="table" tablevalues="0.44705882352941 0.4"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
            <defs>
                <filter id="wp-duotone-blue-orange">
                    <fecolormatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 "></fecolormatrix>
                    <fecomponenttransfer color-interpolation-filters="sRGB">
                        <fefuncr type="table" tablevalues="0.098039215686275 1"></fefuncr>
                        <fefuncg type="table" tablevalues="0 0.66274509803922"></fefuncg>
                        <fefuncb type="table" tablevalues="0.84705882352941 0.41960784313725"></fefuncb>
                        <fefunca type="table" tablevalues="1 1"></fefunca>
                    </fecomponenttransfer>
                    <fecomposite in2="SourceGraphic" operator="in"></fecomposite>
                </filter>
            </defs>
        </svg>
        <a class="skip-link screen-reader-text" href="#content">Skip to content</a>

        <div data-elementor-type="wp-page" data-elementor-id="2655" class="elementor elementor-2655">
            <section class="elementor-section elementor-top-section elementor-element elementor-element-4e698ce5 elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="4e698ce5" data-element_type="section" data-settings="{&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-273bd59b" data-id="273bd59b" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-69857a1 elementor-widget elementor-widget-image" data-id="69857a1" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="image.default">
                                <div class="elementor-widget-container">
                                    <style>
                                        /*! elementor - v3.12.1 - 02-04-2023 */
                                        .elementor-widget-image {
                                            text-align: center
                                        }

                                            .elementor-widget-image a {
                                                display: inline-block
                                            }

                                                .elementor-widget-image a img[src$=".svg"] {
                                                    width: 48px
                                                }

                                            .elementor-widget-image img {
                                                vertical-align: middle;
                                                display: inline-block
                                            }
                                    </style>
                                    <img decoding="async" src="./../wp-content/uploads/elementor/thumbs/logo2-3-q2uh1yjgcgm25nbkl16a7sxor9aexmp4zxxamr5d0m.png" title="logo2" alt="logo2" loading="lazy">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-1b7b3d2" data-id="1b7b3d2" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-65af429b elementor-widget__width-auto elementor-widget elementor-widget-tf-nav-menu" data-id="65af429b" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="tf-nav-menu.default">
                                <div class="elementor-widget-container">
                                    <div class="tf-nav-menu tf-alignment-left horizontal menu-panel-style-left tf_link_effect_underline tf_animation_line_slide tf-nav-642da8290bd70" data-id_random="tf-nav-642da8290bd70">
                                        <div class="nav-panel mobile-menu-alignment-center">
                                            <div class="wrap-logo-nav">
                                                <a href="./../index.aspx" class="logo-nav">
                                                    <img decoding="async" src="./../wp-content/uploads/2023/02/logo_branco.png" alt="Casa&amp;Terra Empreendimentos"></a>
                                            </div>
                                            <div class="mainnav-mobi">
                                                <div class="menu-container tf-menu-container">
                                                    <ul id="menu-principal" class="menu">
                                                        <li id="menu-item-8012" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-8012"><a href="./../index.aspx">Home<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                        <li id="menu-item-3313" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor menu-item-has-children menu-item-3313">
                                                            <a>Empreeendimentos<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                            <ul class="sub-menu">
                                                                <li id="menu-item-3314" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor menu-item-has-children menu-item-3314">
                                                                    <a>Amapá<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-3315" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-3315">
                                                                            <a>Santana<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                            <ul class="sub-menu">
                                                                                <%--<li id="menu-item-2656" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2655 current_page_item menu-item-2656"><a href="./index.aspx" aria-current="page">Residencial Garoupa<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>--%>
                                                                                <li id="menu-item-2656" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2656"><a href="./../garoupa/index.aspx">Residencial Garoupa<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                                <li id="menu-item-3398" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3398"><a href="./../tambaqui/index.aspx">Residencial Tambaqui<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                                <li id="menu-item-4145" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4145"><a href="./../tucunare/index.aspx">Residencial Tucunaré<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7348" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7348"><a href="#">Bahia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                <li id="menu-item-7349" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7349">
                                                                    <a href="#">Goiás<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7356" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7356"><a href="#">Ceres<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7357" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7357"><a href="#">Bom Jesus<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7358" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7358"><a href="#">Itapaci<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7359" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7359"><a href="#">Niquelândia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Novo Gama<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Posse<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Rubiataba<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7350" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7350">
                                                                    <a href="#">Mato Grosso<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7371" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7371"><a href="#">Campo Verde<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7372" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7372"><a href="#">Confresa<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7373" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7373"><a href="#">Vila Rica<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7374" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7374"><a href="#">Querencia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7351" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7351">
                                                                    <a href="#">Mato Grosso do Sul<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7375" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7375"><a href="#">Chapadão do Sul<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7376" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7376"><a href="#">Dourados<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7352" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7352">
                                                                    <a href="#">Maranhão<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7377" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7377"><a href="#">Açailândia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7378" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7378"><a href="#">Barra do Corda<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7379" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7379"><a href="#">Chapadinha<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7380" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7380"><a href="#">Colinas<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7381" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7381"><a href="#">Imperatriz<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7382" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7382"><a href="#">Itapecuru Mirim<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7383" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7383"><a href="#">Presidente Dutra<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7385" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7385"><a href="#">São Domingos<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7384" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7384"><a href="#">Santa Inês<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7353" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7353">
                                                                    <a href="#">Minas Gerais<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7386" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7386"><a href="#">Coromandel<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7354" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7354">
                                                                    <a href="#">Rondônia<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7387" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7387"><a href="#">Cacoal<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7388" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7388"><a href="#">Jaru<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7388" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7388"><a href="#">Ji Paraná<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7389" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7389"><a href="#">Machadinho do Oeste<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7390" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7390"><a href="#">Presidente Médice<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7391" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7391"><a href="#">Ouro Preto<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7392" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7392"><a href="#">Porto Velho<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7393" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7393"><a href="#">Rolim de Moura<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        <li id="menu-item-7394" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7394"><a href="#">Vilhena<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li id="menu-item-7355" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7355">
                                                                    <a href="#">Tocantins<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                    <ul class="sub-menu">
                                                                        <li id="menu-item-7395" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7395"><a href="#">São Miguel<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li id="menu-item-1648" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1648"><a href="./../escritorios/index.aspx">Escritórios<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                        <li id="menu-item-6144" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6144">
                                                            <a>Contato<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                            <ul class="sub-menu">
                                                                <li id="menu-item-6142" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6142"><a href="./../fale-conosco/index.aspx">Fale conosco<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                <li id="menu-item-6143" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6143"><a href="./../trabalhe-conosco/index.aspx">Trabalhe conosco<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                <li id="menu-item-6143" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6143"><a href="./../falecorretor/index.aspx">Fale com o corretor<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="wrap-close-menu-panel-style-default">
                                                <button class="close-menu-panel-style-default"><i class="fas fa-times"></i></button>
                                            </div>
                                        </div>
                                        <div class="mainnav nav">
                                            <div class="menu-container tf-menu-container">
                                                <ul id="menu-principal" class="menu">
                                                    <li id="menu-item-8012" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-8012"><a href="./../index.aspx">Home<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                    <li id="menu-item-3313" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor menu-item-has-children menu-item-3313">
                                                        <a>Empreeendimentos<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                        <ul class="sub-menu">
                                                            <li id="menu-item-3314" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor menu-item-has-children menu-item-3314">
                                                                <a>Amapá<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-3315" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-3315">
                                                                        <a>Santana<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                        <ul class="sub-menu">
                                                                            <li id="menu-item-2656" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2656"><a href="./../garoupa/index.aspx" aria-current="page">Residencial Garoupa<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                            <li id="menu-item-3398" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3398"><a href="./../tambaqui/index.aspx">Residencial Tambaqui<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                            <li id="menu-item-4145" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4145"><a href="./../tucunare/index.aspx">Residencial Tucunaré<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7348" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7348"><a href="#">Bahia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                            <li id="menu-item-7349" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7349">
                                                                <a href="#">Goiás<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7356" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7356"><a href="#">Ceres<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7357" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7357"><a href="#">Bom Jesus<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7358" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7358"><a href="#">Itapaci<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7359" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7359"><a href="#">Niquelândia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Novo Gama<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Posse<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7360" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7360"><a href="#">Rubiataba<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7350" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7350">
                                                                <a href="#">Mato Grosso<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7371" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7371"><a href="#">Campo Verde<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7372" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7372"><a href="#">Confresa<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7373" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7373"><a href="#">Vila Rica<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7374" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7374"><a href="#">Querencia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7351" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7351">
                                                                <a href="#">Mato Grosso do Sul<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7375" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7375"><a href="#">Chapadão do Sul<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7376" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7376"><a href="#">Dourados<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7352" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7352">
                                                                <a href="#">Maranhão<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7377" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7377"><a href="#">Açailândia<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7378" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7378"><a href="#">Barra do Corda<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7379" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7379"><a href="#">Chapadinha<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7380" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7380"><a href="#">Colinas<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7381" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7381"><a href="#">Imperatriz<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7382" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7382"><a href="#">Itapecuru Mirim<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7383" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7383"><a href="#">Presidente Dutra<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7385" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7385"><a href="#">São Domingos<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7384" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7384"><a href="#">Santa Inês<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7353" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7353">
                                                                <a href="#">Minas Gerais<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7386" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7386"><a href="#">Coromandel<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7354" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7354">
                                                                <a href="#">Rondônia<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7387" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7387"><a href="#">Cacoal<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7388" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7388"><a href="#">Jaru<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7388" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7388"><a href="#">Ji Paraná<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7389" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7389"><a href="#">Machadinho do Oeste<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7390" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7390"><a href="#">Presidente Médice<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7391" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7391"><a href="#">Ouro Preto<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7392" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7392"><a href="#">Porto Velho<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7393" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7393"><a href="#">Rolim de Moura<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                    <li id="menu-item-7394" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7394"><a href="#">Vilhena<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                            <li id="menu-item-7355" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-7355">
                                                                <a href="#">Tocantins<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                                <ul class="sub-menu">
                                                                    <li id="menu-item-7395" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7395"><a href="#">São Miguel<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li id="menu-item-1648" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1648"><a href="./../escritorios/index.aspx">Escritórios<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                    <li id="menu-item-6144" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-6144">
                                                        <a>Contato<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                                                        <ul class="sub-menu">
                                                            <li id="menu-item-6142" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6142"><a href="./../fale-conosco/index.aspx">Fale conosco<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                            <li id="menu-item-6143" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6143"><a href="./../trabalhe-conosco/index.aspx">Trabalhe conosco<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                            <li id="menu-item-6143" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-6143"><a href="./../falecorretor/index.aspx">Fale com o corretor<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mobile-menu-overlay">
                                            <button class="tf-close"><i class="fas fa-times"></i></button>
                                        </div>
                                        <button class="btn-menu-mobile">
                                            <span class="open-icon"><i class="fas fa-bars"></i></span>
                                        </button>
                                        <button class="btn-menu-only">
                                            <span class="open-icon"><i class="fas fa-bars"></i></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-1c8f80e" data-id="1c8f80e" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-59cfe00 elementor-widget__width-auto elementor-widget elementor-widget-elementskit-header-info" data-id="59cfe00" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-header-info.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <ul class="ekit-header-info">
                                            <li>
                                                <a>
                                                    <i aria-hidden="true" class="icon icon-team-carousel-slider"></i>Portal do cliente
                                            </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="elementor-section elementor-top-section elementor-element elementor-element-d759a0e elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="d759a0e" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_top&quot;:&quot;clouds&quot;,&quot;shape_divider_bottom&quot;:&quot;wave-brush&quot;,&quot;section_parallax_on&quot;:&quot;yes&quot;,&quot;section_parallax_x_value&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;section_parallax_value&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:-200,&quot;sizes&quot;:[]},&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                <div class="elementor-shape elementor-shape-top" data-negative="false">
                    <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 283.5 27.8" preserveaspectratio="xMidYMax slice">
                        <path class="elementor-shape-fill" d="M0 0v6.7c1.9-.8 4.7-1.4 8.5-1 9.5 1.1 11.1 6 11.1 6s2.1-.7 4.3-.2c2.1.5 2.8 2.6 2.8 2.6s.2-.5 1.4-.7c1.2-.2 1.7.2 1.7.2s0-2.1 1.9-2.8c1.9-.7 3.6.7 3.6.7s.7-2.9 3.1-4.1 4.7 0 4.7 0 1.2-.5 2.4 0 1.7 1.4 1.7 1.4h1.4c.7 0 1.2.7 1.2.7s.8-1.8 4-2.2c3.5-.4 5.3 2.4 6.2 4.4.4-.4 1-.7 1.8-.9 2.8-.7 4 .7 4 .7s1.7-5 11.1-6c9.5-1.1 12.3 3.9 12.3 3.9s1.2-4.8 5.7-5.7c4.5-.9 6.8 1.8 6.8 1.8s.6-.6 1.5-.9c.9-.2 1.9-.2 1.9-.2s5.2-6.4 12.6-3.3c7.3 3.1 4.7 9 4.7 9s1.9-.9 4 0 2.8 2.4 2.8 2.4 1.9-1.2 4.5-1.2 4.3 1.2 4.3 1.2.2-1 1.4-1.7 2.1-.7 2.1-.7-.5-3.1 2.1-5.5 5.7-1.4 5.7-1.4 1.5-2.3 4.2-1.1c2.7 1.2 1.7 5.2 1.7 5.2s.3-.1 1.3.5c.5.4.8.8.9 1.1.5-1.4 2.4-5.8 8.4-4 7.1 2.1 3.5 8.9 3.5 8.9s.8-.4 2 0 1.1 1.1 1.1 1.1 1.1-1.1 2.3-1.1 2.1.5 2.1.5 1.9-3.6 6.2-1.2 1.9 6.4 1.9 6.4 2.6-2.4 7.4 0c3.4 1.7 3.9 4.9 3.9 4.9s3.3-6.9 10.4-7.9 11.5 2.6 11.5 2.6.8 0 1.2.2c.4.2.9.9.9.9s4.4-3.1 8.3.2c1.9 1.7 1.5 5 1.5 5s.3-1.1 1.6-1.4c1.3-.3 2.3.2 2.3.2s-.1-1.2.5-1.9 1.9-.9 1.9-.9-4.7-9.3 4.4-13.4c5.6-2.5 9.2.9 9.2.9s5-6.2 15.9-6.2 16.1 8.1 16.1 8.1.7-.2 1.6-.4V0H0z"></path>
                    </svg>
                </div>
                <div class="elementor-shape elementor-shape-bottom" data-negative="false">
                    <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 283.5 27.8" preserveaspectratio="none">
                        <path class="elementor-shape-fill" d="M283.5,9.7c0,0-7.3,4.3-14,4.6c-6.8,0.3-12.6,0-20.9-1.5c-11.3-2-33.1-10.1-44.7-5.7	s-12.1,4.6-18,7.4c-6.6,3.2-20,9.6-36.6,9.3C131.6,23.5,99.5,7.2,86.3,8c-1.4,0.1-6.6,0.8-10.5,2c-3.8,1.2-9.4,3.8-17,4.7	c-3.2,0.4-8.3,1.1-14.2,0.9c-1.5-0.1-6.3-0.4-12-1.6c-5.7-1.2-11-3.1-15.8-3.7C6.5,9.2,0,10.8,0,10.8V0h283.5V9.7z M260.8,11.3	c-0.7-1-2-0.4-4.3-0.4c-2.3,0-6.1-1.2-5.8-1.1c0.3,0.1,3.1,1.5,6,1.9C259.7,12.2,261.4,12.3,260.8,11.3z M242.4,8.6	c0,0-2.4-0.2-5.6-0.9c-3.2-0.8-10.3-2.8-15.1-3.5c-8.2-1.1-15.8,0-15.1,0.1c0.8,0.1,9.6-0.6,17.6,1.1c3.3,0.7,9.3,2.2,12.4,2.7	C239.9,8.7,242.4,8.6,242.4,8.6z M185.2,8.5c1.7-0.7-13.3,4.7-18.5,6.1c-2.1,0.6-6.2,1.6-10,2c-3.9,0.4-8.9,0.4-8.8,0.5	c0,0.2,5.8,0.8,11.2,0c5.4-0.8,5.2-1.1,7.6-1.6C170.5,14.7,183.5,9.2,185.2,8.5z M199.1,6.9c0.2,0-0.8-0.4-4.8,1.1	c-4,1.5-6.7,3.5-6.9,3.7c-0.2,0.1,3.5-1.8,6.6-3C197,7.5,199,6.9,199.1,6.9z M283,6c-0.1,0.1-1.9,1.1-4.8,2.5s-6.9,2.8-6.7,2.7	c0.2,0,3.5-0.6,7.4-2.5C282.8,6.8,283.1,5.9,283,6z M31.3,11.6c0.1-0.2-1.9-0.2-4.5-1.2s-5.4-1.6-7.8-2C15,7.6,7.3,8.5,7.7,8.6	C8,8.7,15.9,8.3,20.2,9.3c2.2,0.5,2.4,0.5,5.7,1.6S31.2,11.9,31.3,11.6z M73,9.2c0.4-0.1,3.5-1.6,8.4-2.6c4.9-1.1,8.9-0.5,8.9-0.8	c0-0.3-1-0.9-6.2-0.3S72.6,9.3,73,9.2z M71.6,6.7C71.8,6.8,75,5.4,77.3,5c2.3-0.3,1.9-0.5,1.9-0.6c0-0.1-1.1-0.2-2.7,0.2	C74.8,5.1,71.4,6.6,71.6,6.7z M93.6,4.4c0.1,0.2,3.5,0.8,5.6,1.8c2.1,1,1.8,0.6,1.9,0.5c0.1-0.1-0.8-0.8-2.4-1.3	C97.1,4.8,93.5,4.2,93.6,4.4z M65.4,11.1c-0.1,0.3,0.3,0.5,1.9-0.2s2.6-1.3,2.2-1.2s-0.9,0.4-2.5,0.8C65.3,10.9,65.5,10.8,65.4,11.1	z M34.5,12.4c-0.2,0,2.1,0.8,3.3,0.9c1.2,0.1,2,0.1,2-0.2c0-0.3-0.1-0.5-1.6-0.4C36.6,12.8,34.7,12.4,34.5,12.4z M152.2,21.1	c-0.1,0.1-2.4-0.3-7.5-0.3c-5,0-13.6-2.4-17.2-3.5c-3.6-1.1,10,3.9,16.5,4.1C150.5,21.6,152.3,21,152.2,21.1z"></path>
                        <path class="elementor-shape-fill" d="M269.6,18c-0.1-0.1-4.6,0.3-7.2,0c-7.3-0.7-17-3.2-16.6-2.9c0.4,0.3,13.7,3.1,17,3.3	C267.7,18.8,269.7,18,269.6,18z"></path>
                        <path class="elementor-shape-fill" d="M227.4,9.8c-0.2-0.1-4.5-1-9.5-1.2c-5-0.2-12.7,0.6-12.3,0.5c0.3-0.1,5.9-1.8,13.3-1.2	S227.6,9.9,227.4,9.8z"></path>
                        <path class="elementor-shape-fill" d="M204.5,13.4c-0.1-0.1,2-1,3.2-1.1c1.2-0.1,2,0,2,0.3c0,0.3-0.1,0.5-1.6,0.4	C206.4,12.9,204.6,13.5,204.5,13.4z"></path>
                        <path class="elementor-shape-fill" d="M201,10.6c0-0.1-4.4,1.2-6.3,2.2c-1.9,0.9-6.2,3.1-6.1,3.1c0.1,0.1,4.2-1.6,6.3-2.6	S201,10.7,201,10.6z"></path>
                        <path class="elementor-shape-fill" d="M154.5,26.7c-0.1-0.1-4.6,0.3-7.2,0c-7.3-0.7-17-3.2-16.6-2.9c0.4,0.3,13.7,3.1,17,3.3	C152.6,27.5,154.6,26.8,154.5,26.7z"></path>
                        <path class="elementor-shape-fill" d="M41.9,19.3c0,0,1.2-0.3,2.9-0.1c1.7,0.2,5.8,0.9,8.2,0.7c4.2-0.4,7.4-2.7,7-2.6	c-0.4,0-4.3,2.2-8.6,1.9c-1.8-0.1-5.1-0.5-6.7-0.4S41.9,19.3,41.9,19.3z"></path>
                        <path class="elementor-shape-fill" d="M75.5,12.6c0.2,0.1,2-0.8,4.3-1.1c2.3-0.2,2.1-0.3,2.1-0.5c0-0.1-1.8-0.4-3.4,0	C76.9,11.5,75.3,12.5,75.5,12.6z"></path>
                        <path class="elementor-shape-fill" d="M15.6,13.2c0-0.1,4.3,0,6.7,0.5c2.4,0.5,5,1.9,5,2c0,0.1-2.7-0.8-5.1-1.4	C19.9,13.7,15.7,13.3,15.6,13.2z"></path>
                    </svg>
                </div>
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-e576045" data-id="e576045" data-element_type="column" data-settings="{&quot;animation&quot;:&quot;none&quot;,&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-e7df5b6 elementor-invisible elementor-widget elementor-widget-elementskit-heading" data-id="e7df5b6" data-element_type="widget" data-settings="{&quot;_animation&quot;:&quot;fadeInDown&quot;,&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-heading.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <div class="ekit-heading elementskit-section-title-wraper text_center   ekit_heading_tablet-   ekit_heading_mobile-">
                                            <h2 class="ekit-heading--title elementskit-section-title ">Politica de <span>privacidade</span></h2>

                                             <br />

                                            <strong style="font-size: 16px">Privacy Policy</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
                                                Casa e Terra Empreendimentos built the Casa e Terra app as a Free app. This SERVICE is provided by Casa e Terra Empreendimentos at no cost and is intended for use as is.
This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.
If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.
The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Casa e Terra unless otherwise defined in this Privacy Policy.
                                            </p>
                                            <br />
                                            <br />
                                            <strong style="font-size: 16px">Information Collection and Use</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
                                                For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Personal identification number(CPF), date of birth, IP. The information that we request will be retained by us and used as described in this privacy policy.
The app does use third-party services that may collect information used to identify you.
Link to the privacy policy of third-party service providers used by the app •Google Play Services
                                            </p>

                                            <strong style="font-size: 16px">Log Data</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
                                            We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p>

                                            <strong style="font-size: 16px">Cookies</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.
This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>

                                                                                        <strong style="font-size: 16px">Service Providers</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

We may employ third-party companies and individuals due to the following reasons:
•	To facilitate our Service;
•	To provide the Service on our behalf;
•	To perform Service-related services; or
•	To assist us in analyzing how our Service is used.
We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>

                                            <strong style="font-size: 16px">Security</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>

                                            <strong style="font-size: 16px">Links to Other Sites</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>

                                                                                        <strong style="font-size: 16px">Children’s Privacy</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.</p>

                                             <strong style="font-size: 16px">Changes to This Privacy Policy</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.
This policy is effective as of 2023-05-09.</p>

                                             <strong style="font-size: 16px">Contact Us</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">

If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at <strong>sistemas.ti@casaeterra.com</strong>

                                            </p>

                                            <br />
                                            <br />
                                            <br />
                                           
                                              <strong style="font-size: 16px"> Política de Privacidade</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
A Casa e Terra Empreendimentos criou o aplicativo Casa e Terra como um aplicativo gratuito. Este SERVIÇO é fornecido pela Casa e Terra Empreendimentos sem nenhum custo e destina-se ao uso como está.
Esta página é usada para informar os visitantes sobre nossas políticas de coleta, uso e divulgação de informações pessoais, caso alguém decida usar nosso serviço.
Se você optar por usar nosso Serviço, concorda com a coleta e o uso de informações relacionadas a esta política. As informações pessoais que coletamos são usadas para fornecer e melhorar o serviço. Não usaremos ou compartilharemos suas informações com ninguém, exceto conforme descrito nesta Política de Privacidade.
Os termos utilizados nesta Política de Privacidade têm os mesmos significados que em nossos Termos e Condições, que estão acessíveis na Casa e Terra, salvo disposição em contrário nesta Política de Privacidade.</p>

                                           
                                             <strong style="font-size: 16px">  Coleta e uso de informações</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Para uma melhor experiência, ao usar nosso Serviço, podemos exigir que você nos forneça certas informações de identificação pessoal, incluindo, entre outras, Número de Identificação Pessoal (CPF), data de nascimento, IP. As informações que solicitamos serão retidas por nós e usadas conforme descrito nesta política de privacidade.
O aplicativo usa serviços de terceiros que podem coletar informações usadas para identificá-lo.
Link para a política de privacidade de provedores de serviços terceirizados usados pelo app.</p>

                                           
                                            <strong style="font-size: 16px"> Serviços do Google Play</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
<strong>Dados de registro</strong>
                                                <br />
Queremos informar que sempre que você usa nosso Serviço, em caso de erro no aplicativo, coletamos dados e informações (através de produtos de terceiros) em seu telefone chamado Log Data. Esses dados de registro podem incluir informações como endereço de protocolo de Internet ("IP") do dispositivo, nome do dispositivo, versão do sistema operacional, configuração do aplicativo ao utilizar nosso serviço, hora e data de uso do serviço e outras estatísticas </p>

                                            
                                            <strong style="font-size: 16px">Cookies</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Cookies são arquivos com uma pequena quantidade de dados que são comumente usados como identificadores únicos anônimos. Estes são enviados para o seu navegador a partir dos sites que você visita e são armazenados na memória interna do seu dispositivo.
Este Serviço não usa esses “cookies” explicitamente. No entanto, o aplicativo pode usar código e bibliotecas de terceiros que usam “cookies” para coletar informações e melhorar seus serviços. Você tem a opção de aceitar ou recusar esses cookies e saber quando um cookie está sendo enviado ao seu dispositivo. Se você optar por recusar nossos cookies, talvez não consiga usar algumas partes deste Serviço.</p>

                                           
                                             <strong style="font-size: 16px"> Provedores de serviço</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Podemos empregar empresas e indivíduos terceirizados devido aos seguintes motivos:
Para facilitar nosso Serviço;
Para fornecer o Serviço em nosso nome;
Para realizar serviços relacionados ao Serviço; ou
Para nos ajudar a analisar como nosso Serviço é usado.
Queremos informar aos usuários deste Serviço que esses terceiros têm acesso às suas Informações Pessoais. O motivo é realizar as tarefas atribuídas a eles em nosso nome. No entanto, eles são obrigados a não divulgar ou usar as informações para qualquer outra finalidade.</p>


                                             <strong style="font-size: 16px"> Segurança</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Valorizamos sua confiança em nos fornecer suas informações pessoais, portanto, estamos nos esforçando para usar meios comercialmente aceitáveis de protegê-las. Mas lembre-se que nenhum método de transmissão pela internet, ou método de armazenamento eletrônico é 100% seguro e confiável, e não podemos garantir sua segurança absoluta.</p>

                                           
                                            <strong style="font-size: 16px">  Links para outros sites</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Este Serviço pode conter links para outros sites. Se você clicar em um link de terceiros, será direcionado para esse site. Observe que esses sites externos não são operados por nós. Portanto, recomendamos fortemente que você revise a Política de Privacidade desses sites. Não temos controle e não assumimos nenhuma responsabilidade pelo conteúdo, políticas de privacidade ou práticas de sites ou serviços de terceiros.</p>


                                             <strong style="font-size: 16px">Privacidade das crianças</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Esses Serviços não se destinam a menores de 13 anos. Não coletamos intencionalmente informações de identificação pessoal de crianças menores de 13 anos. No caso de descobrirmos que uma criança menor de 13 anos nos forneceu informações pessoais, nós as excluímos imediatamente de nossos servidores. Se você é pai ou responsável e está ciente de que seu filho nos forneceu informações pessoais, entre em contato conosco para que possamos tomar as medidas necessárias.</p>

                                            
                                             <strong style="font-size: 16px">Mudanças nesta Política de Privacidade</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Podemos atualizar nossa Política de Privacidade de tempos em tempos. Assim, você é aconselhado a revisar esta página periodicamente para quaisquer alterações. Iremos notificá-lo sobre quaisquer alterações publicando a nova Política de Privacidade nesta página.
Esta política é efetiva a partir de 2023-05-09.</p>


                                            <strong style="font-size: 16px">Contate-nos</strong>

                                            <p class="ekit-heading--subtitle elementskit-section-subtitle  elementskit-style-border">
Se tiver alguma dúvida ou sugestão sobre a nossa Política de Privacidade, não hesite em contactar-nos <strong>sistemas.ti@casaeterra.com</strong></p>
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="elementor-section elementor-top-section elementor-element elementor-element-57bac12 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-invisible" data-id="57bac12" data-element_type="section" data-settings="{&quot;animation&quot;:&quot;rotateInUpLeft&quot;,&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-2640dcc" data-id="2640dcc" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-2443149 elementor-widget elementor-widget-price-table" data-id="2443149" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="price-table.default">
                                <div class="elementor-widget-container">
                                    <style>
                                        /*! elementor-pro - v3.12.1 - 02-04-2023 */
                                        .elementor-widget-price-list .elementor-price-list {
                                            list-style: none;
                                            padding: 0;
                                            margin: 0
                                        }

                                            .elementor-widget-price-list .elementor-price-list li {
                                                margin: 0
                                            }

                                        .elementor-price-list li:not(:last-child) {
                                            margin-bottom: 20px
                                        }

                                        .elementor-price-list .elementor-price-list-image {
                                            max-width: 50%;
                                            flex-shrink: 0;
                                            padding-right: 25px
                                        }

                                            .elementor-price-list .elementor-price-list-image img {
                                                width: 100%
                                            }

                                        .elementor-price-list .elementor-price-list-header, .elementor-price-list .elementor-price-list-item, .elementor-price-list .elementor-price-list-text {
                                            display: flex
                                        }

                                        .elementor-price-list .elementor-price-list-item {
                                            align-items: flex-start
                                        }

                                            .elementor-price-list .elementor-price-list-item .elementor-price-list-text {
                                                align-items: flex-start;
                                                flex-wrap: wrap;
                                                flex-grow: 1
                                            }

                                            .elementor-price-list .elementor-price-list-item .elementor-price-list-header {
                                                align-items: center;
                                                flex-basis: 100%;
                                                font-size: 19px;
                                                font-weight: 600;
                                                margin-bottom: 10px;
                                                justify-content: space-between
                                            }

                                            .elementor-price-list .elementor-price-list-item .elementor-price-list-title {
                                                max-width: 80%
                                            }

                                            .elementor-price-list .elementor-price-list-item .elementor-price-list-price {
                                                font-weight: 600
                                            }

                                            .elementor-price-list .elementor-price-list-item p.elementor-price-list-description {
                                                flex-basis: 100%;
                                                font-size: 14px;
                                                margin: 0
                                            }

                                            .elementor-price-list .elementor-price-list-item .elementor-price-list-separator {
                                                flex-grow: 1;
                                                margin-left: 10px;
                                                margin-right: 10px;
                                                border-bottom-style: dotted;
                                                border-bottom-width: 2px;
                                                height: 0
                                            }

                                        .elementor-price-table {
                                            text-align: center
                                        }

                                            .elementor-price-table .elementor-price-table__header {
                                                background: var(--e-price-table-header-background-color,#555);
                                                padding: 20px 0
                                            }

                                            .elementor-price-table .elementor-price-table__heading {
                                                margin: 0;
                                                padding: 0;
                                                line-height: 1.2;
                                                font-size: 24px;
                                                font-weight: 600;
                                                color: #fff
                                            }

                                            .elementor-price-table .elementor-price-table__subheading {
                                                font-size: 13px;
                                                font-weight: 400;
                                                color: #fff
                                            }

                                            .elementor-price-table .elementor-price-table__original-price {
                                                margin-right: 15px;
                                                text-decoration: line-through;
                                                font-size: .5em;
                                                line-height: 1;
                                                font-weight: 400;
                                                align-self: center
                                            }

                                                .elementor-price-table .elementor-price-table__original-price .elementor-price-table__currency {
                                                    font-size: 1em;
                                                    margin: 0
                                                }

                                            .elementor-price-table .elementor-price-table__price {
                                                display: flex;
                                                justify-content: center;
                                                align-items: center;
                                                flex-wrap: wrap;
                                                flex-direction: row;
                                                color: #555;
                                                font-weight: 800;
                                                font-size: 65px;
                                                padding: 40px 0
                                            }

                                                .elementor-price-table .elementor-price-table__price .elementor-typo-excluded {
                                                    line-height: normal;
                                                    letter-spacing: normal;
                                                    text-transform: none;
                                                    font-weight: 400;
                                                    font-size: medium;
                                                    font-style: normal
                                                }

                                            .elementor-price-table .elementor-price-table__after-price {
                                                display: flex;
                                                flex-wrap: wrap;
                                                text-align: left;
                                                align-self: stretch;
                                                align-items: flex-start;
                                                flex-direction: column
                                            }

                                            .elementor-price-table .elementor-price-table__integer-part {
                                                line-height: .8
                                            }

                                            .elementor-price-table .elementor-price-table__currency, .elementor-price-table .elementor-price-table__fractional-part {
                                                line-height: 1;
                                                font-size: .3em
                                            }

                                            .elementor-price-table .elementor-price-table__currency {
                                                margin-right: 3px
                                            }

                                            .elementor-price-table .elementor-price-table__period {
                                                width: 100%;
                                                font-size: 13px;
                                                font-weight: 400
                                            }

                                            .elementor-price-table .elementor-price-table__features-list {
                                                list-style-type: none;
                                                margin: 0;
                                                padding: 0;
                                                line-height: 1;
                                                color: var(--e-price-table-features-list-color)
                                            }

                                                .elementor-price-table .elementor-price-table__features-list li {
                                                    font-size: 14px;
                                                    line-height: 1;
                                                    margin: 0;
                                                    padding: 0
                                                }

                                                    .elementor-price-table .elementor-price-table__features-list li .elementor-price-table__feature-inner {
                                                        margin-left: 15px;
                                                        margin-right: 15px
                                                    }

                                                    .elementor-price-table .elementor-price-table__features-list li:not(:first-child):before {
                                                        content: "";
                                                        display: block;
                                                        border: 0 solid hsla(0,0%,47.8%,.3);
                                                        margin: 10px 12.5%
                                                    }

                                                .elementor-price-table .elementor-price-table__features-list i {
                                                    margin-right: 10px;
                                                    font-size: 1.3em
                                                }

                                                .elementor-price-table .elementor-price-table__features-list svg {
                                                    margin-right: 10px;
                                                    fill: var(--e-price-table-features-list-color);
                                                    height: 1.3em;
                                                    width: 1.3em
                                                }

                                                    .elementor-price-table .elementor-price-table__features-list svg ~ * {
                                                        vertical-align: text-top
                                                    }

                                            .elementor-price-table .elementor-price-table__footer {
                                                padding: 30px 0
                                            }

                                            .elementor-price-table .elementor-price-table__additional_info {
                                                margin: 0;
                                                font-size: 13px;
                                                line-height: 1.4
                                            }

                                        .elementor-price-table__ribbon {
                                            position: absolute;
                                            top: 0;
                                            left: auto;
                                            right: 0;
                                            transform: rotate(90deg);
                                            width: 150px;
                                            overflow: hidden;
                                            height: 150px
                                        }

                                        .elementor-price-table__ribbon-inner {
                                            text-align: center;
                                            left: 0;
                                            width: 200%;
                                            transform: translateY(-50%) translateX(-50%) translateX(35px) rotate(-45deg);
                                            margin-top: 35px;
                                            font-size: 13px;
                                            line-height: 2;
                                            font-weight: 800;
                                            text-transform: uppercase;
                                            background: #000
                                        }

                                        .elementor-price-table__ribbon.elementor-ribbon-left {
                                            transform: rotate(0);
                                            left: 0;
                                            right: auto
                                        }

                                        .elementor-price-table__ribbon.elementor-ribbon-right {
                                            transform: rotate(90deg);
                                            left: auto;
                                            right: 0
                                        }

                                        .elementor-widget-price-table .elementor-widget-container {
                                            overflow: hidden;
                                            background-color: #f9fafa
                                        }

                                        .e-con-inner > .elementor-widget-price-list, .e-con > .elementor-widget-price-list {
                                            width: var(--container-widget-width);
                                            --flex-grow: var(--container-widget-flex-grow)
                                        }
                                    </style>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="elementor-section elementor-top-section elementor-element elementor-element-74288ef4 elementor-section-full_width elementor-section-height-default elementor-section-height-default elementor-invisible" data-id="74288ef4" data-element_type="section" data-settings="{&quot;animation&quot;:&quot;fadeInUp&quot;,&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-d12c5aa" data-id="d12c5aa" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-4754b734 elementor-widget elementor-widget-image" data-id="4754b734" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="image.default">
                                <div class="elementor-widget-container">
                                    <a href="">
                                        <img decoding="async" src="./../wp-content/uploads/elementor/thumbs/logo2-3-q2uh1yjfqj84kxwujm2xfbfifiep8p2vcsdmkj68ey.png" title="logo2" alt="logo2" loading="lazy">
                                    </a>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-390bc9be elementor-widget elementor-widget-elementskit-header-info" data-id="390bc9be" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-header-info.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <ul class="ekit-header-info">
                                            <li>
                                                <a>
                                                    <i aria-hidden="true" class="icon icon-map-marker"></i>SAAN QD 03, Lote 650, Zona Industrial, Brasilia/DF
                                            </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-3c871eb6 elementor-widget__width-auto elementor-widget elementor-widget-elementskit-header-info" data-id="3c871eb6" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-header-info.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <ul class="ekit-header-info">
                                            <li>
                                                <a>
                                                    <i aria-hidden="true" class="icon icon-email"></i>casaeterra@casaeterra.com
                                            </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-40b401cd elementor-widget__width-inherit elementor-widget elementor-widget-elementskit-header-info" data-id="40b401cd" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-header-info.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <ul class="ekit-header-info">
                                            <li>
                                                <a>
                                                    <i aria-hidden="true" class="icon icon-phone-handset"></i>(61) 3221-5700
                                            </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-b6874f0" data-id="b6874f0" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <section class="elementor-section elementor-inner-section elementor-element elementor-element-78d87fa2 elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="78d87fa2" data-element_type="section" data-settings="{&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                                <div class="elementor-container elementor-column-gap-default">
                                    <div class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-62bd9ca6" data-id="62bd9ca6" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                                        <div class="elementor-widget-wrap elementor-element-populated">
                                            <div class="elementor-element elementor-element-71abd130 elementor-widget elementor-widget-elementskit-page-list" data-id="71abd130" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-page-list.default">
                                                <div class="elementor-widget-container">
                                                    <div class="ekit-wid-con">
                                                        <div class="elementor-icon-list-items ">
                                                            <div class="elementor-icon-list-item   ">
                                                                <a target="_self" rel="" href="./../index.html?page_id=7009" class="elementor-repeater-item-01d06f0 ekit_badge_left">
                                                                    <div class="ekit_page_list_content">
                                                                        <span class="elementor-icon-list-text">
                                                                            <span class="ekit_page_list_title_title">Home</span>
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="elementor-icon-list-item   ">
                                                                <a target="_self" rel="" href="./../escritorios/index.html" class="elementor-repeater-item-324f54e ekit_badge_left">
                                                                    <div class="ekit_page_list_content">
                                                                        <span class="elementor-icon-list-text">
                                                                            <span class="ekit_page_list_title_title">Escritórios</span>
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="elementor-icon-list-item   ">
                                                                <a target="_self" rel="" href="./../trabalhe-conosco/index.html" class="elementor-repeater-item-5245ae1 ekit_badge_left">
                                                                    <div class="ekit_page_list_content">
                                                                        <span class="elementor-icon-list-text">
                                                                            <span class="ekit_page_list_title_title">Trabalhe conosco</span>
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="elementor-icon-list-item   ">
                                                                <a target="_self" rel="" href="./../acesso/index.html" class="elementor-repeater-item-9983cff ekit_badge_left">
                                                                    <div class="ekit_page_list_content">
                                                                        <span class="elementor-icon-list-text">
                                                                            <span class="ekit_page_list_title_title">Portal do cliente</span>
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <div class="elementor-icon-list-item   ">
                                                                <a target="_self" rel="" href="./../falecorretor/index.html" class="elementor-repeater-item-0481029 ekit_badge_left">
                                                                    <div class="ekit_page_list_content">
                                                                        <span class="elementor-icon-list-text">
                                                                            <span class="ekit_page_list_title_title">Fale com o corretor</span>
                                                                        </span>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-5f87403" data-id="5f87403" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                                        <div class="elementor-widget-wrap elementor-element-populated">
                                            <div class="elementor-element elementor-element-5344e830 elementor-widget elementor-widget-elementskit-social-media" data-id="5344e830" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-social-media.default">
                                                <div class="elementor-widget-container">
                                                    <div class="ekit-wid-con">
                                                        <ul class="ekit_social_media">
                                                            <li class="elementor-repeater-item-da8f4de">
                                                                <a href="https://www.facebook.com/casaeterra" aria-label="Facebook" class="facebook">

                                                                    <i aria-hidden="true" class="fasicon icon-facebook"></i>
                                                                </a>
                                                            </li>
                                                            <li class="elementor-repeater-item-8f886e8">
                                                                <a href="https://www.linkedin.com/company/casa-&#038;-terra-empreendimentos" aria-label="LinkedIn" class="linkedin">

                                                                    <i aria-hidden="true" class="fasicon icon-linkedin"></i>
                                                                </a>
                                                            </li>
                                                            <li class="elementor-repeater-item-c8596be">
                                                                <a href="https://www.instagram.com/casaeterraempreendimentos" aria-label="Instagram" class="2">

                                                                    <i aria-hidden="true" class="fasicon icon-instagram-2"></i>
                                                                </a>
                                                            </li>
                                                            <li class="elementor-repeater-item-8ccb807">
                                                                <a href="https://www.youtube.com/@casaterraempreendimentos1936" aria-label="Youtube" class="youtube">

                                                                    <i aria-hidden="true" class="fab fa-youtube"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>

                </div>
            </section>

            <section class="elementor-section elementor-top-section elementor-element elementor-element-6043fece elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="6043fece" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;mdp_selection_sticky_effect_enable&quot;:false,&quot;ekit_has_onepagescroll_dot&quot;:&quot;yes&quot;}">
                <div class="elementor-container elementor-column-gap-default">
                    <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-2bbf25bb" data-id="2bbf25bb" data-element_type="column" data-settings="{&quot;mdp_selection_sticky_column_effect_enable&quot;:false}">
                        <div class="elementor-widget-wrap elementor-element-populated">
                            <div class="elementor-element elementor-element-389c7e68 elementor-widget elementor-widget-elementskit-heading" data-id="389c7e68" data-element_type="widget" data-settings="{&quot;ekit_we_effect_on&quot;:&quot;none&quot;}" data-widget_type="elementskit-heading.default">
                                <div class="elementor-widget-container">
                                    <div class="ekit-wid-con">
                                        <div class="ekit-heading elementskit-section-title-wraper text_left   ekit_heading_tablet-   ekit_heading_mobile-text_center">
                                            <p class="ekit-heading--title elementskit-section-title ">©2023. Casa e Terra Empreendimentos. Todos os direitos reservados.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>


        <script>
            window.RS_MODULES = window.RS_MODULES || {};
            window.RS_MODULES.modules = window.RS_MODULES.modules || {};
            window.RS_MODULES.waiting = window.RS_MODULES.waiting || [];
            window.RS_MODULES.defered = true;
            window.RS_MODULES.moduleWaiting = window.RS_MODULES.moduleWaiting || {};
            window.RS_MODULES.type = 'compiled';</script>
        <link rel="stylesheet" id="elementskit-reset-button-for-pro-form-css-css" href="./../wp-content/plugins/elementskit/modules/pro-form-reset-button/assets/css/elementskit-reset-button.css?ver=3.1.0" media="all">
        <link rel="stylesheet" id="e-animations-css" href="./../wp-content/plugins/elementor/assets/lib/animations/animations.min.css?ver=3.12.1" media="all">
        <link rel="stylesheet" id="rs-plugin-settings-css" href="./../wp-content/plugins/revslider/public/assets/css/rs6.css?ver=6.6.11" media="all">
        <style id="rs-plugin-settings-inline-css">
            #rs-demo-id {
            }
        </style>
        <script id="essential-blocks-blocks-localize-js-extra">var EssentialBlocksLocalize = { "eb_plugins_url": ".\/\/wp-content\/plugins\/essential-blocks\/", "eb_wp_version": "6.2", "eb_version": "4.0.6", "eb_admin_url": ".\/\/wp-admin\/", "rest_rootURL": ".\/\/wp-json\/", "ajax_url": ".\/\/wp-admin\/admin-ajax.php", "nft_nonce": "b35f87b135" };</script>
        <script src="./../wp-content/plugins/essential-blocks/assets/js/eb-blocks-localize.js?ver=4.0.6" id="essential-blocks-blocks-localize-js"></script>
        <script src="./../wp-content/plugins/tf-header-footer/assets/js/svg-injector.min.js?ver=6.2" id="svg-injector-js"></script>
        <script src="./../wp-content/plugins/tf-header-footer/assets/js/tf-main.js?ver=6.2" id="tf-header-footer-main-js"></script>
        <script src="./../wp-content/plugins/revslider/public/assets/js/rbtools.min.js?ver=6.6.11" defer async id="tp-tools-js"></script>
        <script src="./../wp-content/plugins/revslider/public/assets/js/rs6.min.js?ver=6.6.11" defer async id="revmin-js"></script>
        <script id="rocket-browser-checker-js-after">
            "use strict"; var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || !1, descriptor.configurable = !0, "value" in descriptor && (descriptor.writable = !0), Object.defineProperty(target, descriptor.key, descriptor) } } return function (Constructor, protoProps, staticProps) { return protoProps && defineProperties(Constructor.prototype, protoProps), staticProps && defineProperties(Constructor, staticProps), Constructor } }(); function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) throw new TypeError("Cannot call a class as a function") } var RocketBrowserCompatibilityChecker = function () { function RocketBrowserCompatibilityChecker(options) { _classCallCheck(this, RocketBrowserCompatibilityChecker), this.passiveSupported = !1, this._checkPassiveOption(this), this.options = !!this.passiveSupported && options } return _createClass(RocketBrowserCompatibilityChecker, [{ key: "_checkPassiveOption", value: function (self) { try { var options = { get passive() { return !(self.passiveSupported = !0) } }; window.addEventListener("test", null, options), window.removeEventListener("test", null, options) } catch (err) { self.passiveSupported = !1 } } }, { key: "initRequestIdleCallback", value: function () { !1 in window && (window.requestIdleCallback = function (cb) { var start = Date.now(); return setTimeout(function () { cb({ didTimeout: !1, timeRemaining: function () { return Math.max(0, 50 - (Date.now() - start)) } }) }, 1) }), !1 in window && (window.cancelIdleCallback = function (id) { return clearTimeout(id) }) } }, { key: "isDataSaverModeOn", value: function () { return "connection" in navigator && !0 === navigator.connection.saveData } }, { key: "supportsLinkPrefetch", value: function () { var elem = document.createElement("link"); return elem.relList && elem.relList.supports && elem.relList.supports("prefetch") && window.IntersectionObserver && "isIntersecting" in IntersectionObserverEntry.prototype } }, { key: "isSlowConnection", value: function () { return "connection" in navigator && "effectiveType" in navigator.connection && ("2g" === navigator.connection.effectiveType || "slow-2g" === navigator.connection.effectiveType) } }]), RocketBrowserCompatibilityChecker }();
    </script>
        <script id="rocket-preload-links-js-extra">var RocketPreloadLinksConfig = { "excludeUris": "\/wordpress(\/index.php\/areacliente\/|\/index.php\/acesso\/cliente\/|\/index.php\/acesso\/cliente\/transferencias\/|\/index.php\/acesso\/cliente\/boletos\/|\/index.php\/home_v2\/cliente\/|\/index.php\/cliente\/|\/index.php\/boletos\/|\/index.php\/home_v2\/boletos\/|\/index.php\/home_v2\/acesso\/|\/index.php\/home_v2\/escrituras\/|\/|\/index.php\/acesso\/|\/index.php\/escrituras\/|\/index.php\/transferencias\/|\/index.php\/cliente-2\/|\/(.+\/)?feed\/?.+\/?|\/(?:.+\/)?embed\/|\/(index\\.php\/)?wp\\-json(\/.*|$))|\/wp-admin\/|\/logout\/|\/wp-login.php", "usesTrailingSlash": "1", "imageExt": "jpg|jpeg|gif|png|tiff|bmp|webp|avif", "fileExt": "jpg|jpeg|gif|png|tiff|bmp|webp|avif|php|pdf|html|htm", "siteUrl": ".\/", "onHoverDelay": "100", "rateThrottle": "3" };</script>
        <script id="rocket-preload-links-js-after">
            (function () {
                "use strict"; var r = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (e) { return typeof e } : function (e) { return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e }, e = function () { function i(e, t) { for (var n = 0; n < t.length; n++) { var i = t[n]; i.enumerable = i.enumerable || !1, i.configurable = !0, "value" in i && (i.writable = !0), Object.defineProperty(e, i.key, i) } } return function (e, t, n) { return t && i(e.prototype, t), n && i(e, n), e } }(); function i(e, t) { if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function") } var t = function () { function n(e, t) { i(this, n), this.browser = e, this.config = t, this.options = this.browser.options, this.prefetched = new Set, this.eventTime = null, this.threshold = 1111, this.numOnHover = 0 } return e(n, [{ key: "init", value: function () { !this.browser.supportsLinkPrefetch() || this.browser.isDataSaverModeOn() || this.browser.isSlowConnection() || (this.regex = { excludeUris: RegExp(this.config.excludeUris, "i"), images: RegExp(".(" + this.config.imageExt + ")$", "i"), fileExt: RegExp(".(" + this.config.fileExt + ")$", "i") }, this._initListeners(this)) } }, { key: "_initListeners", value: function (e) { -1 < this.config.onHoverDelay && document.addEventListener("mouseover", e.listener.bind(e), e.listenerOptions), document.addEventListener("mousedown", e.listener.bind(e), e.listenerOptions), document.addEventListener("touchstart", e.listener.bind(e), e.listenerOptions) } }, { key: "listener", value: function (e) { var t = e.target.closest("a"), n = this._prepareUrl(t); if (null !== n) switch (e.type) { case "mousedown": case "touchstart": this._addPrefetchLink(n); break; case "mouseover": this._earlyPrefetch(t, n, "mouseout") } } }, { key: "_earlyPrefetch", value: function (t, e, n) { var i = this, r = setTimeout(function () { if (r = null, 0 === i.numOnHover) setTimeout(function () { return i.numOnHover = 0 }, 1e3); else if (i.numOnHover > i.config.rateThrottle) return; i.numOnHover++, i._addPrefetchLink(e) }, this.config.onHoverDelay); t.addEventListener(n, function e() { t.removeEventListener(n, e, { passive: !0 }), null !== r && (clearTimeout(r), r = null) }, { passive: !0 }) } }, { key: "_addPrefetchLink", value: function (i) { return this.prefetched.add(i.href), new Promise(function (e, t) { var n = document.createElement("link"); n.rel = "prefetch", n.href = i.href, n.onload = e, n.onerror = t, document.head.appendChild(n) }).catch(function () { }) } }, { key: "_prepareUrl", value: function (e) { if (null === e || "object" !== (void 0 === e ? "undefined" : r(e)) || !1 in e || -1 === ["http:", "https:"].indexOf(e.protocol)) return null; var t = e.href.substring(0, this.config.siteUrl.length), n = this._getPathname(e.href, t), i = { original: e.href, protocol: e.protocol, origin: t, pathname: n, href: t + n }; return this._isLinkOk(i) ? i : null } }, { key: "_getPathname", value: function (e, t) { var n = t ? e.substring(this.config.siteUrl.length) : e; return n.startsWith("/") || (n = "/" + n), this._shouldAddTrailingSlash(n) ? n + "/" : n } }, { key: "_shouldAddTrailingSlash", value: function (e) { return this.config.usesTrailingSlash && !e.endsWith("/") && !this.regex.fileExt.test(e) } }, { key: "_isLinkOk", value: function (e) { return null !== e && "object" === (void 0 === e ? "undefined" : r(e)) && (!this.prefetched.has(e.href) && e.origin === this.config.siteUrl && -1 === e.href.indexOf("?") && -1 === e.href.indexOf("#") && !this.regex.excludeUris.test(e.href) && !this.regex.images.test(e.href)) } }], [{ key: "run", value: function () { "undefined" != typeof RocketPreloadLinksConfig && new n(new RocketBrowserCompatibilityChecker({ capture: !0, passive: !0 }), RocketPreloadLinksConfig).init() } }]), n }(); t.run();
            }());
    </script>
        <script src="./../wp-content/plugins/elementskit-lite/libs/framework/assets/js/frontend-script.js?ver=2.8.7" id="elementskit-framework-js-frontend-js"></script>
        <script id="elementskit-framework-js-frontend-js-after">
            var elementskit = {
                resturl: './/wp-json/elementskit/v1/',
            }</script>
        <script src="./../wp-content/plugins/elementskit-lite/widgets/init/assets/js/widget-scripts.js?ver=2.8.7" id="ekit-widget-scripts-js"></script>
        <script src="./../wp-content/plugins/elementskit/modules/parallax/assets/js/anime.js?ver=3.1.0" id="animejs-js"></script>
        <script defer src="./../wp-content/plugins/elementskit/modules/parallax/assets/js/parallax-frontend-scripts.js?ver=3.1.0" id="elementskit-parallax-frontend-defer-js"></script>
        <script id="eael-general-js-extra">var localize = { "ajaxurl": ".\/\/wp-admin\/admin-ajax.php", "nonce": "770cabd7b0", "i18n": { "added": "Added ", "compare": "Compare", "loading": "Loading..." }, "eael_translate_text": { "required_text": "is a required field", "invalid_text": "Invalid", "billing_text": "Billing", "shipping_text": "Shipping", "fg_mfp_counter_text": "of" }, "page_permalink": ".\/\/garoupa\/", "cart_redirectition": "", "cart_page_url": "", "el_breakpoints": { "mobile": { "label": "Celular em modo retrato", "value": 767, "default_value": 767, "direction": "max", "is_enabled": true }, "mobile_extra": { "label": "Celular em modo paisagem", "value": 880, "default_value": 880, "direction": "max", "is_enabled": false }, "tablet": { "label": "Tablet Portrait", "value": 1024, "default_value": 1024, "direction": "max", "is_enabled": true }, "tablet_extra": { "label": "Tablet Landscape", "value": 1200, "default_value": 1200, "direction": "max", "is_enabled": false }, "laptop": { "label": "Laptop", "value": 1366, "default_value": 1366, "direction": "max", "is_enabled": false }, "widescreen": { "label": "Widescreen", "value": 2400, "default_value": 2400, "direction": "min", "is_enabled": false } } };</script>
        <script src="./../wp-content/plugins/essential-addons-for-elementor-lite/assets/front-end/js/view/general.min.js?ver=5.7.0" id="eael-general-js"></script>
        <script id="bdt-uikit-js-extra">
            var element_pack_ajax_login_config = { "ajaxurl": ".\/\/wp-admin\/admin-ajax.php", "language": "pt", "loadingmessage": "Sending user info, please wait...", "unknownerror": "Unknown error, make sure access is correct!" };
            var ElementPackConfig = { "ajaxurl": ".\/\/wp-admin\/admin-ajax.php", "nonce": "9a30822147", "data_table": { "language": { "lengthMenu": "Show _MENU_ Entries", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "search": "Search :", "sZeroRecords": "No matching records found", "paginate": { "previous": "Previous", "next": "Next" } } }, "contact_form": { "sending_msg": "Sending message please wait...", "captcha_nd": "Invisible captcha not defined!", "captcha_nr": "Could not get invisible captcha response!" }, "mailchimp": { "subscribing": "Subscribing you please wait..." }, "search": { "more_result": "More Results", "search_result": "SEARCH RESULT", "not_found": "not found" }, "elements_data": { "sections": [], "columns": [], "widgets": [] } };</script>
        <script src="./../wp-content/plugins/bdthemes-element-pack/assets/js/bdt-uikit.min.js?ver=3.15.1" id="bdt-uikit-js"></script>
        <script src="./../wp-content/plugins/elementor/assets/js/webpack.runtime.min.js?ver=3.12.1" id="elementor-webpack-runtime-js"></script>
        <script src="./../wp-content/plugins/elementor/assets/js/frontend-modules.min.js?ver=3.12.1" id="elementor-frontend-modules-js"></script>
        <script src="./../wp-content/plugins/elementor/assets/lib/waypoints/waypoints.min.js?ver=4.0.2" id="elementor-waypoints-js"></script>
        <script src="./../wp-includes/js/jquery/ui/core.min.js?ver=1.13.2" id="jquery-ui-core-js"></script>
        <script id="elementor-frontend-js-extra">var uael_particles_script = { "uael_particles_url": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/min-js\/uael-particles.min.js", "particles_url": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/lib\/particles\/particles.min.js", "snowflakes_image": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/snowflake.svg", "gift": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/gift.png", "tree": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/tree.png", "skull": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/skull.png", "ghost": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/ghost.png", "moon": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/moon.png", "bat": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/bat.png", "pumpkin": ".\/\/wp-content\/plugins\/ultimate-elementor\/assets\/img\/pumpkin.png" };</script>
        <script id="elementor-frontend-js-before">
            var elementorFrontendConfig = {
                "environmentMode": { "edit": false, "wpPreview": false, "isScriptDebug": false }, "i18n": { "shareOnFacebook": "Compartilhar no Facebook", "shareOnTwitter": "Compartilhar no Twitter", "pinIt": "Fixar", "download": "Baixar", "downloadImage": "Baixar imagem", "fullscreen": "Tela cheia", "zoom": "Zoom", "share": "Compartilhar", "playVideo": "Reproduzir vídeo", "previous": "Anterior", "next": "Próximo", "close": "Fechar" }, "is_rtl": false, "breakpoints": { "xs": 0, "sm": 480, "md": 768, "lg": 1025, "xl": 1440, "xxl": 1600 }, "responsive": { "breakpoints": { "mobile": { "label": "Celular em modo retrato", "value": 767, "default_value": 767, "direction": "max", "is_enabled": true }, "mobile_extra": { "label": "Celular em modo paisagem", "value": 880, "default_value": 880, "direction": "max", "is_enabled": false }, "tablet": { "label": "Tablet Portrait", "value": 1024, "default_value": 1024, "direction": "max", "is_enabled": true }, "tablet_extra": { "label": "Tablet Landscape", "value": 1200, "default_value": 1200, "direction": "max", "is_enabled": false }, "laptop": { "label": "Laptop", "value": 1366, "default_value": 1366, "direction": "max", "is_enabled": false }, "widescreen": { "label": "Widescreen", "value": 2400, "default_value": 2400, "direction": "min", "is_enabled": false } } },
                "version": "3.12.1", "is_static": false, "experimentalFeatures": { "e_dom_optimization": true, "e_optimized_assets_loading": true, "e_optimized_css_loading": true, "a11y_improvements": true, "additional_custom_breakpoints": true, "e_swiper_latest": true, "theme_builder_v2": true, "landing-pages": true, "page-transitions": true, "notes": true, "loop": true, "form-submissions": true, "e_scroll_snap": true }, "urls": { "assets": ".\/\/wp-content\/plugins\/elementor\/assets\/" }, "swiperClass": "swiper", "settings": { "page": [], "editorPreferences": [] }, "kit": { "body_background_background": "classic", "active_breakpoints": ["viewport_mobile", "viewport_tablet"], "lightbox_enable_counter": "yes", "lightbox_enable_fullscreen": "yes", "lightbox_enable_zoom": "yes", "lightbox_enable_share": "yes", "lightbox_title_src": "title", "lightbox_description_src": "description" }, "post": { "id": 2655, "title": "Residencial%20Garoupa%20%E2%80%93%20Casa%26Terra%20Empreendimentos", "excerpt": "", "featuredImage": false }
            };</script>
        <script src="./../wp-content/plugins/elementor/assets/js/frontend.min.js?ver=3.12.1" id="elementor-frontend-js"></script>
        <script id="elementor-frontend-js-after">
            window.scope_array = [];
            window.backend = 0;
            jQuery.cachedScript = function (url, options) {
                // Allow user to set any option except for dataType, cache, and url.
                options = jQuery.extend(options || {}, {
                    dataType: "script",
                    cache: true,
                    url: url
                });
                // Return the jqXHR object so we can chain callbacks.
                return jQuery.ajax(options);
            };
            jQuery(window).on("elementor/frontend/init", function () {
                elementorFrontend.hooks.addAction("frontend/element_ready/global", function ($scope, $) {
                    if ("undefined" == typeof $scope) {
                        return;
                    }
                    if ($scope.hasClass("uael-particle-yes")) {
                        window.scope_array.push($scope);
                        $scope.find(".uael-particle-wrapper").addClass("js-is-enabled");
                    } else {
                        return;
                    }
                    if (elementorFrontend.isEditMode() && $scope.find(".uael-particle-wrapper").hasClass("js-is-enabled") && window.backend == 0) {
                        var uael_url = uael_particles_script.uael_particles_url;

                        jQuery.cachedScript(uael_url);
                        window.backend = 1;
                    } else if (elementorFrontend.isEditMode()) {
                        var uael_url = uael_particles_script.uael_particles_url;
                        jQuery.cachedScript(uael_url).done(function () {
                            var flag = true;
                        });
                    }
                });
            });
            jQuery(document).on("ready elementor/popup/show", () => {
                if (jQuery.find(".uael-particle-yes").length < 1) {
                    return;
                }
                var uael_url = uael_particles_script.uael_particles_url;
                jQuery.cachedScript = function (url, options) {
                    // Allow user to set any option except for dataType, cache, and url.
                    options = jQuery.extend(options || {}, {
                        dataType: "script",
                        cache: true,
                        url: url
                    });
                    // Return the jqXHR object so we can chain callbacks.
                    return jQuery.ajax(options);
                };
                jQuery.cachedScript(uael_url);
            });
    </script>
        <script src="./../wp-content/plugins/bdthemes-element-pack/assets/js/modules/ep-background-parallax.min.js?ver=6.14.1" id="ep-background-parallax-js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key&#038;ver=2.8.7" id="ekit-google-map-api-js"></script>
        <script src="./../wp-content/plugins/elementskit-lite/widgets/init/assets/js/gmaps.min.js?ver=2.8.7" id="ekit-google-gmaps-js"></script>
        <script src="./../wp-content/plugins/bdthemes-element-pack/assets/js/common/helper.min.js?ver=6.14.1" id="element-pack-helper-js"></script>
        <script src="./../wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.min.js?ver=3.12.1" id="elementor-pro-webpack-runtime-js"></script>
        <script src="./../wp-includes/js/dist/vendor/wp-polyfill-inert.min.js?ver=3.1.2" id="wp-polyfill-inert-js"></script>
        <script src="./../wp-includes/js/dist/vendor/regenerator-runtime.min.js?ver=0.13.11" id="regenerator-runtime-js"></script>
        <script src="./../wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0" id="wp-polyfill-js"></script>
        <script src="./../wp-includes/js/dist/hooks.min.js?ver=4169d3cf8e8d95a3d6d5" id="wp-hooks-js"></script>
        <script src="./../wp-includes/js/dist/i18n.min.js?ver=9e794f35a71bb98672ae" id="wp-i18n-js"></script>
        <script id="wp-i18n-js-after">
            wp.i18n.setLocaleData({ 'text directionltr': ['ltr'] });
    </script>
        <script id="elementor-pro-frontend-js-before">
            var ElementorProFrontendConfig = {
                "ajaxurl": ".\/\/wp-admin\/admin-ajax.php", "nonce": "95ff02d6b4", "urls": { "assets": ".\/\/wp-content\/plugins\/elementor-pro\/assets\/", "rest": ".\/\/wp-json\/" }, "shareButtonsNetworks": { "facebook": { "title": "Facebook", "has_counter": true }, "twitter": { "title": "Twitter" }, "linkedin": { "title": "LinkedIn", "has_counter": true }, "pinterest": { "title": "Pinterest", "has_counter": true }, "reddit": { "title": "Reddit", "has_counter": true }, "vk": { "title": "VK", "has_counter": true }, "odnoklassniki": { "title": "OK", "has_counter": true }, "tumblr": { "title": "Tumblr" }, "digg": { "title": "Digg" }, "skype": { "title": "Skype" }, "stumbleupon": { "title": "StumbleUpon", "has_counter": true }, "mix": { "title": "Mix" }, "telegram": { "title": "Telegram" }, "pocket": { "title": "Pocket", "has_counter": true }, "xing": { "title": "XING", "has_counter": true }, "whatsapp": { "title": "WhatsApp" }, "email": { "title": "Email" }, "print": { "title": "Print" } },
                "facebook_sdk": { "lang": "pt_BR", "app_id": "" }, "lottie": { "defaultAnimationUrl": ".\/\/wp-content\/plugins\/elementor-pro\/modules\/lottie\/assets\/animations\/default.json" }
            };</script>
        <script src="./../wp-content/plugins/elementor-pro/assets/js/frontend.min.js?ver=3.12.1" id="elementor-pro-frontend-js"></script>
        <script src="./../wp-content/plugins/elementor-pro/assets/js/elements-handlers.min.js?ver=3.12.1" id="pro-elements-handlers-js"></script>
        <script src="./../wp-content/plugins/elementskit-lite/widgets/init/assets/js/animate-circle.js?ver=2.8.7" id="animate-circle-js"></script>
        <script id="elementskit-elementor-js-extra">var ekit_config = { "ajaxurl": ".\/\/wp-admin\/admin-ajax.php", "nonce": "679e16d1bc" };</script>
        <script src="./../wp-content/plugins/elementskit-lite/widgets/init/assets/js/elementor.js?ver=2.8.7" id="elementskit-elementor-js"></script>
        <script src="./../wp-content/plugins/elementskit/widgets/init/assets/js/elementor.js?ver=3.1.0" id="elementskit-elementor-pro-js"></script>
        <script src="./../wp-content/plugins/elementor/assets/lib/swiper/swiper.min.js?ver=2.8.7" id="swiper-js"></script>
        <script defer src="./../wp-content/plugins/elementskit/modules/sticky-content/assets/js/elementskit-sticky-content.js?ver=3.1.0" id="elementskit-sticky-content-script-init-defer-js"></script>
        <script src="./../wp-content/plugins/elementskit/modules/pro-form-reset-button/assets/js/elementskit-reset-button.js?ver=3.1.0" id="elementskit-reset-button-js"></script>
        <script defer src="./../wp-content/plugins/elementskit/modules/parallax/assets/js/parallax-admin-scripts.js?ver=3.1.0" id="elementskit-parallax-admin-defer-js"></script>
        <script src="./../wp-content/plugins/selection-lite/js/sticky-effect.min.js?ver=1.8" id="mdp-selection-sticky-effect-js"></script>
        <script id="powerpack-frontend-js-extra">
            var ppLogin = { "empty_username": "Enter a username or email address.", "empty_password": "Enter password.", "empty_password_1": "Enter a password.", "empty_password_2": "Re-enter password.", "empty_recaptcha": "Please check the captcha to verify you are not a robot.", "email_sent": "A password reset email has been sent to the email address for your account, but may take several minutes to show up in your inbox. Please wait at least 10 minutes before attempting another reset.", "reset_success": "Your password has been reset successfully.", "ajax_url": ".\/\/wp-admin\/admin-ajax.php", "show_password": "Show password", "hide_password": "Hide password" };
            var ppRegistration = { "invalid_username": "This username is invalid because it uses illegal characters. Please enter a valid username.", "username_exists": "This username is already registered. Please choose another one.", "empty_email": "Please type your email address.", "invalid_email": "The email address isn’t correct!", "email_exists": "The email is already registered, please choose another one.", "password": "Password must not contain the character \"\\\\\"", "password_length": "Your password should be at least 8 characters long.", "password_mismatch": "Password does not match.", "invalid_url": "URL seems to be invalid.", "recaptcha_php_ver": "reCAPTCHA API requires PHP version 5.3 or above.", "recaptcha_missing_key": "Your reCAPTCHA Site or Secret Key is missing!", "show_password": "Show password", "hide_password": "Hide password", "ajax_url": ".\/\/wp-admin\/admin-ajax.php" };
            var ppCoupons = { "copied_text": "Copied" };</script>
        <script src="./../wp-content/plugins/powerpack-elements/assets/js/min/frontend.min.js?ver=2.9.16" id="powerpack-frontend-js"></script>
        <script src="./../wp-content/plugins/powerpack-elements/assets/lib/tooltipster/tooltipster.min.js?ver=2.9.16" id="pp-tooltipster-js"></script>
    </form>
</body>
</html>
