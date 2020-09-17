<%
    session.invalidate();
%>
    <!DOCTYPE html>
    <html lang="en-US">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="format-detection" content="telephone=no">
        <link rel="icon" type="image/x-icon" href="images/favicon.ico" />
        <title>GYM</title>
        <link rel='stylesheet' href='js/vendor/swiper/idangerous.swiper.css' type='text/css' media='all' />
        <link rel='stylesheet' href='js/vendor/revslider/rs-plugin/css/settings.css' type='text/css' media='all' />
        <link rel='stylesheet' href='css/fontello/css/fontello.css' type='text/css' media='all' />
        <link rel='stylesheet' href='css/shortcodes.css' type='text/css' media='all' />
        <link rel='stylesheet' href='css/core.animation.css' type='text/css' media='all' />
        <link rel='stylesheet' href='css/style.css' type='text/css' media='all' />
        <link rel='stylesheet' href='css/skin.css' type='text/css' media='all' />
        <style id='themerex-custom-style-inline-css' type='text/css'></style>
        <link rel='stylesheet' href='css/responsive.css' type='text/css' media='all' />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!--<link rel='stylesheet' href='custom_tools/css/front.customizer.css' type='text/css' media='all'/>-->

    </head>

    <body class="page body_style_fullscreen article_style_boxed top_panel_style_light top_panel_opacity_transparent top_panel_over menu_right sidebar_hide">
        <div class="modal fade" id="loginModal" role="dialog">
            <div class="modal-dialog modal-sm" style="margin-top: 25vh;">

                <!-- Modal content-->
                <div class="modal-content">
                    <form method="post" action="LoginServlet">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Login</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" name="pass" class="form-control" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Login</button>

                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>



        <div class="body_wrap">
            <div class="page_wrap">
                <div class="top_panel_fixed_wrap"></div>
                <header class="top_panel_wrap bg_tint_light bg_type_image menu_bg_color_3">
                    <div class="menu_main_wrap logo_left">
                        <div class="content_wrap clearfix">
                            <div class="logo">
                                <span class="logo_shape">
                                    <a href="index.jsp">
                                        <img src="images/logo_light.png" class="logo_main" alt="">
                                        <img src="images/logo_light.png" class="logo_fixed" alt="">
                                        <span class="logo_slogan"> </span>
                                </a>
                                </span>
                            </div>
                            <a href="#" class="menu_main_responsive_button icon-menu-1"> </a>
                            <nav role="navigation" class="menu_main_nav_area menu_color_bg_1">
                                <ul id="menu_main" class="menu_main_nav">
                                    <li class="menu-item">
                                        <a href="index.jsp">
                                            <span>Home</span>
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="about.jsp">
                                            <span>About Us</span>
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="contact.jsp">
                                            <span>Contact Us</span>
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a data-toggle="modal" data-target="#loginModal">
                                            <span>Login</span>
                                        </a>
                                    </li>

                                    <li id="blob">
                                        <span>
                                            <span></span>
                                        </span>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>

                <section id="mainslider_1" class="slider_wrap slider_fullwide slider_engine_revo slider_alias_homepage_slider_gym1 mainslider_1">
                    <div id="rev_slider_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container">

                        <div id="rev_slider_1" class="rev_slider fullwidthabanner">
                            <ul>
                                <li data-transition="slideup,slidedown,slideright,slideleft,fade,fadefromright,fadefromleft,fadefromtop,fadefrombottom" data-slotamount="7" data-randomtransition="on" data-masterspeed="300" data-saveperformance="off">
                                    <img src="images//main-slider-4.jpg" alt="main-slider-4" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                                    <div class="tp-caption lfl" data-x="-100" data-y="-180" data-speed="900" data-start="0" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <img src="images/main-slider-el-6.png" alt="">
                                    </div>
                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption lfr" data-x="870" data-y="-450" data-speed="900" data-start="500" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <img src="images/main-slider-el-7.png" alt="">
                                    </div>
                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption -main-title tp-fade tp-resizeme" data-x="340" data-y="280" data-speed="600" data-start="500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        IT'S YOUR
                                    </div>
                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption -main-title-sub tp-fade tp-resizeme" data-x="340" data-y="370" data-speed="600" data-start="1000" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        OWN WAY!
                                    </div>
                                    <!-- LAYER NR. 5 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="500" data-speed="600" data-start="1500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Feel all benefits of life with fitness
                                    </div>
                                    <!-- LAYER NR. 6 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="540" data-speed="600" data-start="1600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Become younger, live longer
                                    </div>
                                    <!-- LAYER NR. 7 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="580" data-speed="600" data-start="1700" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Choose Gym Style
                                    </div>
                                    <!-- LAYER NR. 8 -->
                                    <div class="tp-caption black tp-fade tp-resizeme" data-x="340" data-y="650" data-speed="600" data-start="2000" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <a data-toggle="modal" data-target="#loginModal" class='tp-button lightgrey '>GET STARTED</a>
                                    </div>

                                </li>
                                <!-- SLIDE  -->
                                <li data-transition="slideup,slidedown,slideright,slideleft,fade,fadefromright,fadefromleft,fadefromtop,fadefrombottom" data-slotamount="7" data-randomtransition="on" data-masterspeed="300" data-saveperformance="off">
                                    <!-- MAIN IMAGE -->
                                    <img src="images/main-slider-5.jpg" alt="main-slider-5" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                                    <!-- LAYERS -->
                                    <!-- LAYER NR. 1 -->
                                    <div class="tp-caption lfl" data-x="-100" data-y="-180" data-speed="900" data-start="0" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <img src="images/main-slider-el-6.png" alt="">
                                    </div>
                                    <!-- LAYER NR. 2 -->
                                    <div class="tp-caption lfr" data-x="870" data-y="-450" data-speed="900" data-start="500" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <img src="images/main-slider-el-7.png" alt="">
                                    </div>
                                    <!-- LAYER NR. 3 -->
                                    <div class="tp-caption -main-title tp-fade tp-resizeme" data-x="340" data-y="280" data-speed="600" data-start="500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        IT'S YOUR
                                    </div>
                                    <!-- LAYER NR. 4 -->
                                    <div class="tp-caption -main-title-sub tp-fade tp-resizeme" data-x="340" data-y="390" data-speed="600" data-start="1000" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        OWN WAY!
                                    </div>
                                    <!-- LAYER NR. 5 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="500" data-speed="600" data-start="1500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Willpower knows no obstacles
                                    </div>
                                    <!-- LAYER NR. 6 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="540" data-speed="600" data-start="1600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Be an inspiration for others
                                    </div>
                                    <!-- LAYER NR. 7 -->
                                    <div class="tp-caption -main-text tp-fade tp-resizeme" data-x="340" data-y="580" data-speed="600" data-start="1700" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        Make a habit of it
                                    </div>
                                    <!-- LAYER NR. 8 -->
                                    <div class="tp-caption black tp-fade tp-resizeme" data-x="340" data-y="670" data-speed="600" data-start="2000" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300">
                                        <a data-toggle="modal" data-target="#loginModal" data-toggle="modal" data-target="#loginModal" class='tp-button lightgrey '>GET STARTED</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>

                <div class="page_content_wrap">
                    <div class="content">
                        <article class="post_item post_item_single post_format_standard page">
                            <div class="post_content">

                                <section class="dark_section bg_tint_dark">
                                    <div class="container">
                                        <div class="row">
                                            <div class="sc_section">
                                                <div class="sc_content content_wrap">
                                                    <div class="sc_blogger layout_courses_3 template_portfolio sc_blogger_horizontal">
                                                        <div class="isotope_wrap" data-columns="3">
                                                            <div class="isotope_item isotope_item_courses isotope_item_courses_3 isotope_column_3">
                                                                <div class="post_item post_item_courses post_item_courses_3post_format_standard odd">
                                                                    <div class="post_content isotope_item_content ih-item colored square effect_gym left_to_right">
                                                                        <div class="post_featured img">
                                                                            <h4 class="post_title">
                                                                                <a href="#">Martial Arts</a>
                                                                            </h4>
                                                                            <div class="post_descr">
                                                                                <div class="post_excerpt">Judo, Karate, Olympic Freestyle Wrestling and Thai Box are amongst the list of our classes</div>
                                                                            </div>
                                                                            <a href="#">
                                                                                <img alt="Martial Arts" src="images/classes-3-400x400.jpg">
                                                                                <span class="sc1">
                                                                                    <span class="sc2">
                                                                                        <span class="sc3">
                                                                                            <span class="sc4">
                                                                                                <img alt="Martial Arts" src="images/classes-3-400x400.jpg">
                                                                                            </span>
                                                                                </span>
                                                                                </span>
                                                                                </span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="isotope_item isotope_item_courses isotope_item_courses_3 isotope_column_3">
                                                                <div class="post_item post_item_courses post_item_courses_3post_format_standard even">
                                                                    <div class="post_content isotope_item_content ih-item colored square effect_gym left_to_right">
                                                                        <div class="post_featured img">
                                                                            <a href="#">
                                                                                <img alt="Yoga &amp; Pilates" src="images/Depositphotos_18975361_l-400x400.jpg">
                                                                                <span class="sc1">
                                                                                    <span class="sc2">
                                                                                        <span class="sc3">
                                                                                            <span class="sc4">
                                                                                                <img alt="Yoga &amp; Pilates" src="images/Depositphotos_18975361_l-400x400.jpg">
                                                                                            </span>
                                                                                </span>
                                                                                </span>
                                                                                </span>
                                                                            </a>
                                                                            <h4 class="post_title">
                                                                                <a href="#">Yoga &#038; Pilates</a>
                                                                            </h4>
                                                                            <div class="post_descr">
                                                                                <div class="post_excerpt">From increased strength to flexibility to heart health, we have 38 benefits to rolling out the mat.</div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="isotope_item isotope_item_courses isotope_item_courses_3 isotope_column_3">
                                                                <div class="post_item post_item_courses post_item_courses_3post_format_standard odd last">
                                                                    <div class="post_content isotope_item_content ih-item colored square effect_gym left_to_right">
                                                                        <div class="post_featured img">
                                                                            <h4 class="post_title">
                                                                                <a href="#">Weight Training</a>
                                                                            </h4>
                                                                            <div class="post_descr">
                                                                                <div class="post_excerpt">Here are the basic guidelines, rules, and easy-to-follow workouts.</div>
                                                                            </div>
                                                                            <a href="#">
                                                                                <img alt="Weight Training" src="images/Depositphotos_24434163_original-400x400.jpg">
                                                                                <span class="sc1">
                                                                                    <span class="sc2">
                                                                                        <span class="sc3">
                                                                                            <span class="sc4">
                                                                                                <img alt="Weight Training" src="images/Depositphotos_24434163_original-400x400.jpg">
                                                                                            </span>
                                                                                </span>
                                                                                </span>
                                                                                </span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>


                                <section class="no_padding bg_image_13">
                                    <div class="container">
                                        <div class="row">
                                            <div class="sc_section overlay_padding_off bg_tint_none">
                                                <div class="sc_section_overlay">
                                                    <section class="red_opacity_section">
                                                        <div class="container">
                                                            <div class="sc_section_content">
                                                                <div class="sc_content content_wrap">
                                                                    <div class="sc_section bg_tint_dark aligncenter">
                                                                        <h2 class="sc_title">JOIN THE GYM STYLE!</h2>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </section>

                            </div>
                        </article>
                    </div>
                </div>




                <a href="#" class="scroll_to_top icon-up-dir" title="Scroll to top"></a>

                <div class="preloader">
                    <div class="preloader_image"></div>
                </div>
            </div>


            <script type='text/javascript' src='js/vendor/jquery-1.11.3.min.js'></script>
            <script type='text/javascript' src='js/vendor/jquery-migrate.min.js'></script>
            <script type='text/javascript' src='js/vendor/revslider/rs-plugin/js/jquery.themepunch.tools.min.js'></script>
            <script type='text/javascript' src='js/vendor/revslider/rs-plugin/js/jquery.themepunch.revolution.min.js'></script>

            <script type='text/javascript' src='js/custom/_main.js'></script>
            <script type='text/javascript' src='js/custom/_form_contact.js'></script>

            <script type='text/javascript' src='js/vendor/superfish.min.js'></script>
            <script type='text/javascript' src='js/vendor/jquery.slidemenu.min.js'></script>
            <script type='text/javascript' src='js/custom/core.utils.min.js'></script>
            <script type='text/javascript' src='js/custom/core.init.min.js'></script>
            <script type='text/javascript' src='js/custom/shortcodes.min.js'></script>
            <script type='text/javascript' src='js/vendor/jquery.isotope.min.js'></script>
            <script type='text/javascript' src='js/vendor/swiper/idangerous.swiper-2.7.js'></script>
            <script type='text/javascript' src='js/vendor/swiper/idangerous.swiper.scrollbar-2.4.js'></script>

            <!--<script type='text/javascript' src='custom_tools/js/skin.customizer.js'></script>-->
            <!--<script type='text/javascript' src='custom_tools/js/front.customizer.js'></script>-->

    </body>

    </html>