@extends('layouts.intapp')
@section('contents')

<div class="blog-heading wow fadeIn" data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p style="float: left;font-weight: bold;"><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.Blog')}}</em> / <em> {{__('words.Grid')}}</em></p>
                            <h2>{{__('words.Blog')}} <em>{{__('words.Grids')}}</em></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="blog-page">
    <div class="container">
        <div class="row py-5" style="margin: 0px;">
            <div class="col-md-12 col-12 col-lg-12">  <!-- offset-2 -->
                <div class="blog-grid-post">
                    <div class="row" style="margin: 0px;">
                        @foreach ($allblog as $item)
                        <div class="col-md-6 col-12 col-lg-6">
                            <div class="item" style="height:35rem;">
                                 <div class="thumb-content">
                                    <div class="date-post">
                                        <a href="{{ route('post', $item->id) }}">{{  Carbon\Carbon::parse($item->date)->format('d  F') }}</a>
                                    </div>
                                    <div class="thumb-inner">
                                    <a href="{{ route('post', $item->id) }}"><img src="{{Voyager::image($item->image)}}" alt=""></a>
                                    </div>
                                </div>
                                <div class="down-content">
                                <a href="{{ route('post', $item->id) }}"><h4>

                                    @if (App::isLocale('ar') )
                                    {{$item->ar_name}}
                                    @else
                                    {{$item->name}}
                                    @endif
                                </h4></a>
                                    <ul>
                                        <li><span><em>{{__('words.Posted by:')}}</em><a>{{$item->posted_by}}</a></span></li>
                                        <li><span><em>{{__('words.Posted on:')}}</em>{{  Carbon\Carbon::parse($item->date)->format('d  F Y') }}</span></li>
                                    </ul>
                                    <p>
                                        @if (App::isLocale('ar') )
                                        {{$item->ar_little_description}}
                                    @else
                                    {{$item->little_description}}
                                    @endif

                                    </p>
                                    <div class="text-button">
                                        <a href="{{ route('post', $item->id) }}">{{__('words.Continue Reading')}} <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </div>
                              </div>
                        </div>
                        @endforeach


                        <div class="col-md-12 col-12 col-sm-12">
                            <div class="page-numbers ">   <!--w-50 float-right-->
                                    {{$allblog->links()}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {{-- <div class="col-md-4">
                <div class="sidebar-widgets">
                    <div class="sidebar-widget">
                        <div class="search-widget">
                            <input type="text" onfocus="this.value=''" value="Type keywords...">
                        </div>
                    </div>
                    <div class="sidebar-widget">
                        <div class="text-widget">
                            <div class="sidebar-heading">
                                <h4>Text Widget</h4>
                            </div>
                            <p>Messenger bag kogi aesthetic elsent master cleanse. Bespoke Marfa migas Austin Helvetica American Apparel before they sold.</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-widget">
                        <div class="categories">
                            <div class="sidebar-heading">
                                <h4>Categories</h4>
                            </div>
                            <ul>
                                <li><a href="#">Volkswagen</a></li>
                                <li><a href="#">Audi</a></li>
                                <li><a href="#">Aston Martin</a></li>
                                <li><a href="#">BMW</a></li>
                                <li><a href="#">Mercedess</a></li>
                                <li><a href="#">Land Rover</a></li>
                                <li><a href="#">Jeep</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-widget">
                        <div class="recent-posts">
                            <div class="sidebar-heading">
                                <h4>Recent Posts</h4>
                            </div>
                            <ul>
                                <li>
                                    <a href="single_post.html">
                                        <img src="http://placehold.it/70x70" alt="">
                                        <h6>Pabst Gastropub Synth Edge</h6>
                                        <span>January 13, 2019</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="single_post.html">
                                        <img src="http://placehold.it/70x70" alt="">
                                        <h6>Pabst Gastropub Synth Edge</h6>
                                        <span>January 13, 2019</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="single_post.html">
                                        <img src="http://placehold.it/70x70" alt="">
                                        <h6>Pabst Gastropub Synth Edge</h6>
                                        <span>January 13, 2019</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="single_post.html">
                                        <img src="http://placehold.it/70x70" alt="">
                                        <h6>Pabst Gastropub Synth Edge</h6>
                                        <span>January 13, 2019</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div> --}}
        </div>
    </div>
</div>

@endsection
