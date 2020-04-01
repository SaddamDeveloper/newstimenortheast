
@extends('web.template.web_master')

@section('content')
    <section class="featured-post-area no-padding" style="padding-top: 20px">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 pad-r">
                    <div id="featured-slider" class="owl-carousel owl-theme featured-slider">
                        @if(isset($slider_post) && !empty($slider_post))
                            @foreach($slider_post as $post)
                            <div class="item" style="background-image:url({{asset('post/thumb/'.$post->image ?? 'web/images/news/tech/gadget2.jpg')}})">
                                <div class="featured-post">
                                    <div class="post-content">
                                    <a class="post-cat" href="posts/{{Str::of($post->title)->slug('-')}}/{{$post->id}}">{{$post->category_name}}</a>
                                        <h2 class="post-title title-extra-large">
                                            <a href="posts/{{Str::of($post->title)->slug('-')}}/{{$post->id}}">{!! Str::words($post->title, 6, ' ...') !!}</a>
                                        </h2>
                                        <span class="post-date">{{ date('F d, Y', strtotime($post->created_at))}}</span>
                                    </div>
                                </div><!--/ Featured post end -->
                                
                            </div><!-- Item 1 end -->
                            @endforeach
                        @endif
                    </div><!-- Featured owl carousel end-->
                </div><!-- Col 6 end -->

                <div class="col-lg-6 col-md-12 pad-l">
                    <div class="row">
                        @if(count($fourth_post) && !empty($fourth_post))
                            @foreach($fourth_post as $post)
                                <div class="col-md-6 pad-r-small">
                                    <div class="post-overaly-style contentTop fourNewsboxTop clearfix">
                                        <div class="post-thumb">
                                            <a href="#"><img class="img-fluid" src="{{asset('post/thumb/'.$post->image)}}" alt=""/></a>
                                        </div>
                                        <div class="post-content">
                                            <a class="post-cat" href="#">{{$post->category_name}}</a>
                                            <h2 class="post-title title-medium">
                                                <a href="posts/{{Str::of($post->title)->slug('-')}}/{{$post->id}}">{!! Str::words($post->title, 6, ' ...') !!}</a>
                                            </h2>
                                        </div><!-- Post content end -->
                                    </div><!-- Post Overaly end -->
                                </div><!-- Col end -->
                            @endforeach
                        @endif
                    </div><!-- Row end -->
                </div><!-- Col 6 end -->

            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- Trending post end -->


    <section class="latest-news block mega-menu-content-inner">
        <div class="container">
            <h3 class="block-title"><span>Latest Videos</span></h3>
            <div id="latest-news-slide" class="owl-carousel owl-theme latest-news-slide">
                <div class="item">
                    <ul class="list-post">
                        <li class="clearfix">
                              <div class="post-block-style clearfix">
                                <div class="post-thumb">
                                    <img class="img-fluid" src="{{asset('web/images/news/video/video4.jpg')}}" alt="">
                                    <a class="popup cboxElement" href="https://www.youtube.com/embed/XhveHKJWnOQ?autoplay=1&amp;loop=1">
                                  <div class="video-icon">
                                      <i class="fa fa-play"></i>
                                   </div>
                                </a>
                               </div><!-- Post thumb end -->
                                <div class="post-content">
                                     <h2 class="post-title title-small">
                                         <a href="#">Netcix cuts out the chill with an integrated...</a>
                                     </h2>
                                     <div class="post-meta">
                                         <span class="post-author"><a href="#">John Doe</a></span>
                                         <span class="post-date">Feb 24, 2017</span>
                                     </div>
                                 </div><!-- Post content end -->
                            </div><!-- Post Block style end -->
                        </li><!-- Li end -->
                    </ul><!-- List post 1 end -->

                </div><!-- Item 1 end -->

                <div class="item">

                    <ul class="list-post">
                        <li class="clearfix">
                              <div class="post-block-style clearfix">
                                <div class="post-thumb">
                                    <img class="img-fluid" src="{{asset('web/images/news/video/video3.jpg')}}" alt="">
                                    <a class="popup cboxElement" href="https://www.youtube.com/embed/XhveHKJWnOQ?autoplay=1&amp;loop=1">
                                  <div class="video-icon">
                                      <i class="fa fa-play"></i>
                                   </div>
                                </a>
                               </div><!-- Post thumb end -->
                                <div class="post-content">
                                     <h2 class="post-title title-small">
                                         <a href="#">Netcix cuts out the chill with an integrated...</a>
                                     </h2>
                                     <div class="post-meta">
                                         <span class="post-author"><a href="#">John Doe</a></span>
                                         <span class="post-date">Feb 24, 2017</span>
                                     </div>
                                 </div><!-- Post content end -->
                            </div><!-- Post Block style end -->
                        </li><!-- Li end -->
                    </ul><!-- List post 2 end -->
                    
                </div><!-- Item 2 end -->

                <div class="item">

                    <ul class="list-post">
                        <li class="clearfix">
                              <div class="post-block-style clearfix">
                                <div class="post-thumb">
                                    <img class="img-fluid" src="{{asset('web/images/news/video/video2.jpg')}}" alt="">
                                    <a class="popup cboxElement" href="https://www.youtube.com/embed/XhveHKJWnOQ?autoplay=1&amp;loop=1">
                                  <div class="video-icon">
                                      <i class="fa fa-play"></i>
                                   </div>
                                </a>
                               </div><!-- Post thumb end -->
                                <div class="post-content">
                                     <h2 class="post-title title-small">
                                         <a href="#">Netcix cuts out the chill with an integrated...</a>
                                     </h2>
                                     <div class="post-meta">
                                         <span class="post-author"><a href="#">John Doe</a></span>
                                         <span class="post-date">Feb 24, 2017</span>
                                     </div>
                                 </div><!-- Post content end -->
                            </div><!-- Post Block style end -->
                        </li><!-- Li end -->
                    </ul><!-- List post 3 end -->
                    
                </div><!-- Item 3 end -->

                <div class="item">
                    <ul class="list-post">
                        <li class="clearfix">
                            <div class="post-block-style clearfix">
                                <div class="post-thumb">
                                    <img class="img-fluid" src="{{asset('web/images/news/video/video1.jpg')}}" alt="">
                                    <a class="popup cboxElement" href="https://www.youtube.com/embed/XhveHKJWnOQ?autoplay=1&amp;loop=1">
                                  <div class="video-icon">
                                      <i class="fa fa-play"></i>
                                   </div>
                                </a>
                               </div><!-- Post thumb end -->
                                <div class="post-content">
                                     <h2 class="post-title title-small">
                                         <a href="#">Netcix cuts out the chill with an integrated...</a>
                                     </h2>
                                     <div class="post-meta">
                                         <span class="post-author"><a href="#">John Doe</a></span>
                                         <span class="post-date">Feb 24, 2017</span>
                                     </div>
                                 </div><!-- Post content end -->
                            </div>
                        </li><!-- Li end -->
                    </ul><!-- List post 4 end -->
                    
                </div><!-- Item 4 end -->
            </div><!-- Latest News owl carousel end-->
        </div>
    </section><!--- Latest Video end -->

    <section class="block-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <!--- Featured Tab startet -->
                    @if(isset($posts) && !empty($posts))
                    @foreach($posts as $post)
                    <div class="featured-tab">
                        <h3 class="block-title"><span>{{$post[0]->category_name}}<span></h3>
                        <div class="tab-content">
                            <div class="tab-pane active animated fadeInRight" id="tab_a">
                                  <div class="row">
                                      <div class="col-md-6">
                                          <div class="post-block-style clearfix">
                                                <div class="post-thumb">
                                                    <a href="posts/{{Str::of($post[0]->title)->slug('-')}}/{{$post[0]->id}}">
                                                        <img class="img-fluid" src="{{asset('post/thumb/'.$post[0]->image)}}" alt="" />
                                                    </a>
                                                </div>
                                                <div class="post-content">
                                                     <h2 class="post-title">
                                                     <a href="posts/{{Str::of($post[0]->title)->slug('-')}}/{{$post[0]->id}}">{{$post[0]->title}}</a>
                                                     </h2>
                                                     <div class="post-meta">
                                                         <span class="post-author"><a href="#">{{$post[0]->author}}</a></span>
                                                         <span class="post-date">{{ date('F d, Y', strtotime($post[0]->created_at))}}</span>
                                                     </div>
                                                     <p></p>
                                                </div><!-- Post content end -->
                                            </div><!-- Post Block style end -->
                                      </div><!-- Col end -->

                                      <div class="col-md-6">
                                          <div class="list-post-block">
                                                <ul class="list-post">
                                                    @foreach($post as $single)
                                                    @if ($loop->first) @continue @endif
                                                    <li class="clearfix">
                                                        <div class="post-block-style post-float clearfix">
                                                            <div class="post-thumb">
                                                                <a href="posts/{{Str::of($single->title)->slug('-')}}/{{$single->id}}">
                                                                    <img class="img-fluid" src="{{asset('post/thumb/'.$single->image)}}" alt="" />
                                                                </a>
                                                            </div><!-- Post thumb end -->

                                                            <div class="post-content">
                                                                 <h2 class="post-title title-small">
                                                                     <a href="posts/{{Str::of($single->title)->slug('-')}}/{{$single->id}}">{{$single->title}}</a>
                                                                 </h2>
                                                                 <div class="post-meta">
                                                                     <span class="post-date">{{ date('F d, Y', strtotime($single->created_at))}}</span>
                                                                 </div>
                                                             </div><!-- Post content end -->
                                                        </div><!-- Post block style end -->
                                                    </li><!-- Li 1 end -->
                                                    @endforeach                                        
                                                </ul><!-- List post end -->
                                            </div><!-- List post block end -->
                                      </div><!-- List post Col end -->
                                  </div><!-- Tab pane Row 1 end -->
                            </div><!-- Tab pane 1 end -->

                        </div><!-- tab content -->
                    </div><!-- Technology Tab end -->

                    <div class="gap-40"></div>
                    @endforeach
                    @endif
                    <div class="block">
                        <div class="row">
                            @if(isset($lifestyle_posts) && !empty($lifestyle_posts))
                            @foreach($lifestyle_posts as $post)
                            <div class="col-md-6 homecol2">
                                <h3 class="block-title"><span>Lifestyle</span></h3>
                                <div class="post-overaly-style clearfix">
                                    <div class="post-thumb">
                                        <a href="posts/{{Str::of($lifestyle_posts[0]->title)->slug('-')}}/{{$lifestyle_posts[0]->id}}">
                                            <img class="img-fluid" src="{{asset('post/thumb/'.$lifestyle_posts[0]->image)}}" alt="" />
                                        </a>
                                    </div>
                                    
                                    <div class="post-content">
                                         <h2 class="post-title">
                                             <a href="posts/{{Str::of($lifestyle_posts[0]->title)->slug('-')}}/{{$lifestyle_posts[0]->id}}">{!! Str::words($lifestyle_posts[0]->title, 9, ' ...') !!}</a>
                                         </h2>
                                         <div class="post-meta">
                                             <span class="post-date">{{ date('M d, Y', strtotime($lifestyle_posts[0]->created_at))}}</span>
                                         </div>
                                     </div><!-- Post content end -->
                                </div><!-- Post Overaly Article end -->

                                <div class="list-post-block">
                                    <ul class="list-post">
                                        <li class="clearfix">
                                            <div class="post-block-style post-float clearfix">
                                                <div class="post-thumb">
                                                    <a href="posts/{{Str::of($post->title)->slug('-')}}/{{$post->id}}">
                                                        <img class="img-fluid" src="{{asset('post/thumb/'.$post->image)}}" alt="" />
                                                    </a>
                                                </div><!-- Post thumb end -->

                                                <div class="post-content">
                                                     <h2 class="post-title title-small">
                                                         <a href="posts/{{Str::of($post->title)->slug('-')}}/{{$post->id}}">{!! Str::words($post->title, 9, ' ...') !!}</a>
                                                     </h2>
                                                     <div class="post-meta">
                                                         <span class="post-date">{{ date('M d, Y', strtotime($post->created_at))}}</span>
                                                     </div>
                                                 </div><!-- Post content end -->
                                            </div><!-- Post block style end -->
                                        </li><!-- Li 1 end -->

                                    </ul><!-- List post end -->
                                </div><!-- List post block end --> 
                            </div><!-- Col 1 end -->
                            @endforeach
                            @endif
                        </div><!-- Row end -->
                    </div><!-- Block Lifestyle end -->
                </div><!-- Content Col end -->
                <div class="col-lg-4 col-md-12">
                    <div class="sidebar sidebar-right">
                        <div class="widget">
                            <h3 class="block-title"><span>Follow Us</span></h3>

                            <ul class="social-icon">
                                <li><a href="#" target="_blank"><i class="fa fa-rss"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-vimeo-square"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-youtube"></i></a></li>
                            </ul>
                        </div><!-- Widget Social end -->							

                        <div class="widget text-center">
                            <img class="banner img-fluid" src="{{asset('web/images/banner-ads/ad-sidebar.png')}}" alt="" />
                        </div><!-- Sidebar Ad end -->

                        <div class="widget color-default">
                            <h3 class="block-title"><span>Popular News</span></h3>

                            <div class="post-overaly-style clearfix">
                                <div class="post-thumb">
                                    <a href="#">
                                        <img class="img-fluid" src="{{asset('web/images/news/lifestyle/health4.jpg')}}" alt="" />
                                    </a>
                                </div>
                                
                                <div class="post-content">
                                     <h2 class="post-title">
                                         <a href="#">Smart packs parking sensor tech and beeps when col…</a>
                                     </h2>
                                     <div class="post-meta">
                                         <span class="post-date">Feb 06, 2017</span>
                                     </div>
                                 </div><!-- Post content end -->
                            </div><!-- Post Overaly Article end -->


                            <div class="list-post-block">
                                <ul class="list-post">
                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            <div class="post-thumb">
                                                <a href="#">
                                                    <img class="img-fluid" src="{{asset('web/images/news/tech/gadget3.jpg')}}" alt="" />
                                                </a>
                                            </div><!-- Post thumb end -->

                                            <div class="post-content">
                                                 <h2 class="post-title title-small">
                                                     <a href="#">Panasonic's new Sumix CH7 an ultra portable filmmaker's drea…</a>
                                                 </h2>
                                                 <div class="post-meta">
                                                     <span class="post-date">Mar 13, 2017</span>
                                                 </div>
                                             </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 1 end -->

                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            <div class="post-thumb">
                                                <a href="#">
                                                    <img class="img-fluid" src="{{asset('web/images/news/lifestyle/travel5.jpg')}}" alt="" />
                                                </a>
                                            </div><!-- Post thumb end -->

                                            <div class="post-content">
                                                 <h2 class="post-title title-small">
                                                     <a href="#">Hynopedia helps female travelers find health care...</a>
                                                 </h2>
                                                 <div class="post-meta">
                                                     <span class="post-date">Jan 11, 2017</span>
                                                 </div>
                                             </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 2 end -->

                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            <div class="post-thumb">
                                                <a href="#">
                                                    <img class="img-fluid" src="{{asset('web/images/news/tech/robot5.jpg')}}" alt="" />
                                                </a>
                                            </div><!-- Post thumb end -->

                                            <div class="post-content">
                                                 <h2 class="post-title title-small">
                                                     <a href="#">Robots in hospitals can be quite handy to navigate around...</a>
                                                 </h2>
                                                 <div class="post-meta">
                                                     <span class="post-date">Feb 19, 2017</span>
                                                 </div>
                                             </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 3 end -->

                                    <li class="clearfix">
                                        <div class="post-block-style post-float clearfix">
                                            <div class="post-thumb">
                                                <a href="#">
                                                    <img class="img-fluid" src="{{asset('web/images/news/lifestyle/food1.jpg')}}" alt="" />
                                                </a>
                                            </div><!-- Post thumb end -->

                                            <div class="post-content">
                                                 <h2 class="post-title title-small">
                                                     <a href="#">Tacos ditched the naked chicken chalupa, so here's how…</a>
                                                 </h2>
                                                 <div class="post-meta">
                                                     <span class="post-date">Feb 27, 2017</span>
                                                 </div>
                                             </div><!-- Post content end -->
                                        </div><!-- Post block style end -->
                                    </li><!-- Li 4 end -->

                                </ul><!-- List post end -->
                            </div><!-- List post block end -->

                        </div><!-- Popular news widget end -->						

                        <div class="widget text-center">
                            <img class="banner img-fluid" src="{{asset('web/images/banner-ads/ad-sidebar2.png')}}" alt="" />
                        </div><!-- Sidebar Ad end -->

                    </div><!-- Sidebar right end -->
                </div><!-- Sidebar Col end -->

            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- First block end -->

    <section class="ad-content-area text-center no-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <img class="img-fluid" src="{{asset('web/images/banner-ads/ad-top-header.png')}}" alt="" />
                </div><!-- Col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- Ad content top end -->

    <section class="block-wrapper homecol3">
        <div class="container">
            <div class="row">
                @if(isset($gadget) && !empty($gadget))
                @foreach($gadget as $gad)
                <div class="col-lg-4 col-md-12">
                    @foreach($gad as $ga)

                    @foreach($ga->posts as $pst)
                    <div class="block">
                        <h3 class="block-title"><span>{{$gad[0]->category_name}}</span></h3>
                        <div class="post-overaly-style clearfix">
                            <div class="post-thumb">
                                <a href="posts/{{Str::of($ga->posts[0]->title)->slug('-')}}/{{$ga->posts[0]->id}}">
                                    <img class="img-fluid" src="{{asset('post/thumb/'.$ga->posts[0]->image)}}" alt="" />
                                </a>
                            </div>
                            
                            <div class="post-content">
                                 <h2 class="post-title">
                                     <a href="posts/{{Str::of($ga->posts[0]->title)->slug('-')}}/{{$ga->posts[0]->id}}">{{$ga->posts[0]->title}}</a>
                                 </h2>
                                 <div class="post-meta">
                                     <span class="post-date">{{ date('M d, Y', strtotime($ga->posts[0]->created_at))}}</span>
                                 </div>
                             </div><!-- Post content end -->
                        </div><!-- Post Overaly Article end -->

                        <div class="list-post-block">
                            <ul class="list-post">
                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/lifestyle/travel2.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Early tourists choices to the sea of Maldives in fancy dress…</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Mar 13, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 1 end -->
                            </ul><!-- List post end -->
                        </div><!-- List post block end -->
                    </div><!-- Block end -->
                    @endforeach
                    @endforeach
                </div><!-- Travel Col end -->
                @endforeach
                @endif

                {{-- <div class="col-lg-4 col-md-12">
                    <div class="block">
                        <h3 class="block-title"><span>Gadgets</span></h3>
                        <div class="post-overaly-style clearfix">
                            <div class="post-thumb">
                                <a href="#">
                                    <img class="img-fluid" src="{{asset('web/images/news/tech/gadget1.jpg')}}" alt="" />
                                </a>
                            </div>
                            
                            <div class="post-content">
                                 <h2 class="post-title">
                                     <a href="#">The best MacBook Pro alternatives in 2017 for Apple users</a>
                                 </h2>
                                 <div class="post-meta">
                                     <span class="post-date">Mar 03, 2017</span>
                                 </div>
                             </div><!-- Post content end -->
                        </div><!-- Post Overaly Article end -->

                        <div class="list-post-block">
                            <ul class="list-post">
                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/tech/gadget2.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Samsung Gear S3 review: A whimper, when smartwatches need...</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Jan 13, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 1 end -->

                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/tech/gadget3.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Panasonic's new Sumix CH7 an ultra portable filmmaker's drea…</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Mar 11, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 2 end -->

                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/tech/gadget4.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Soaring through Southern Patagonia with the Premium Byrd dro…</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Feb 19, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 3 end -->
                            </ul><!-- List post end -->
                        </div><!-- List post block end -->
                    </div><!-- Block end -->
                </div><!-- Gadget Col end -->

                <div class="col-lg-4 col-md-12">
                    <div class="block">
                        <h3 class="block-title"><span>Health</span></h3>
                        <div class="post-overaly-style clearfix">
                            <div class="post-thumb">
                                <a href="#">
                                    <img class="img-fluid" src="{{asset('web/images/news/lifestyle/health1.jpg')}}" alt="" />
                                </a>
                            </div>
                            
                            <div class="post-content">
                                 <h2 class="post-title">
                                     <a href="#">That wearable on your wrist could soon track your health as …</a>
                                 </h2>
                                 <div class="post-meta">
                                     <span class="post-date">Mar 03, 2017</span>
                                 </div>
                             </div><!-- Post content end -->
                        </div><!-- Post Overaly Article end -->

                        <div class="list-post-block">
                            <ul class="list-post">
                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/lifestyle/health2.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Can't shed those Gym? The problem might be in your health</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Mar 13, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 1 end -->

                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/lifestyle/health3.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Deleting fears from the brain means you might never need to …</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Jan 11, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 2 end -->

                                <li class="clearfix">
                                    <div class="post-block-style post-float clearfix">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img class="img-fluid" src="{{asset('web/images/news/lifestyle/health4.jpg')}}" alt="" />
                                            </a>
                                        </div><!-- Post thumb end -->

                                        <div class="post-content">
                                             <h2 class="post-title title-small">
                                                 <a href="#">Smart packs parking sensor tech and beeps when collisions</a>
                                             </h2>
                                             <div class="post-meta">
                                                 <span class="post-date">Feb 19, 2017</span>
                                             </div>
                                         </div><!-- Post content end -->
                                    </div><!-- Post block style end -->
                                </li><!-- Li 3 end -->
                            </ul><!-- List post end -->
                        </div><!-- List post block end -->
                    </div><!-- Block end -->
                </div><!-- Health Col end --> --}}

            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- 2nd block end -->

    <section class="block-wrapper p-bottom-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="more-news block">
                        <h3 class="block-title"><span>Business</span></h3>

                        <div id="more-news-slide" class="owl-carousel owl-theme more-news-slide">
                            @if(isset($business_posts) && !empty($business_posts))
                            @foreach($business_posts as $post)
                            <div class="item">
                                <div class="post-block-style post-float-half clearfix">
                                    <div class="post-thumb">
                                        <a href="#">
                                            <img class="img-fluid" src="{{asset('post/thumb/'.$post->image)}}" alt="" />
                                        </a>
                                    </div>
                                    <div class="post-content">
                                         <h2 class="post-title">
                                             <a href="#">{{$post->title}}</a>
                                         </h2>
                                         <div class="post-meta">
                                             <span class="post-author"><a href="#">{{$post->author}}</a></span>
                                             <span class="post-date">{{ date('M d, Y', strtotime($post->created_at))}}</span>
                                         </div>
                                         <p>{!! Str::words($post->body, 20, ' ...') !!}</p>
                                     </div><!-- Post content end -->
                                </div><!-- Post Block style 1 end -->

                                <div class="gap-30"></div>
                            </div><!-- Item 1 end -->

                            <div class="item">
                                <div class="post-block-style post-float-half clearfix">
                                    <div class="post-thumb">
                                        <a href="#">
                                            <img class="img-fluid" src="{{asset('post/thumb/'.$post->image)}}" alt="" />
                                        </a>
                                    </div>
                                    <div class="post-content">
                                         <h2 class="post-title">
                                             <a href="#">{{$post->title}}</a>
                                         </h2>
                                         <div class="post-meta">
                                             <span class="post-author"><a href="#">{{$post->author}}</a></span>
                                             <span class="post-date">{{ date('M d, Y', strtotime($post->created_at))}}</span>
                                         </div>
                                         <p>{!! Str::words($post->body, 20, ' ...') !!}</p>
                                     </div><!-- Post content end -->
                                </div><!-- Post Block style 5 end -->

                                <div class="gap-30"></div>
                            </div><!-- Item 2 end -->
                            @endforeach
                            @endif
                        </div><!-- More news carousel end -->
                    </div><!--More news block end -->
                </div><!-- Content Col end -->

                <div class="col-lg-4 col-md-12">
                    <div class="sidebar sidebar-right">
                        <h3 class="block-title"><span>Facebook</span></h3>

                        <div class="widget text-center">
                            <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&tabs=timeline&width=340&height=600&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="340" height="600" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                        </div><!-- Sidebar Ad end -->
                    </div><!--Sidebar right end -->
                </div><!-- Sidebar col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- 3rd block end -->

    <section class="ad-content-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <img class="img-fluid" src="{{asset('web/images/banner-ads/ad-top-header.png')}}" alt="" />
                </div><!-- Col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- Ad content two end -->
@endsection