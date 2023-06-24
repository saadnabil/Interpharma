
@extends('layouts.intapp')
@section('contents')

<div class="page-heading wow fadeIn" data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.Blog')}}</em> / <em> {{__('words.Single Post')}}</em></p>
                            <h2>{{__('words.Single')}} <em>post</em></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="blog-page">
    <div class="container pt-5">
        <div class="row">
            <div class="col-md-8">
                <div class="single-post">
                    <div class="item">
                         <img src="{{Voyager::image ($blog->image)}}" alt="">
                        <div class="down-content">
                            @if (App::isLocale('ar') )
                            <h4>{{$blog->ar_name}}</h4>
                            @else
                            <h4>{{$blog->name}}</h4>
                            @endif

                            <ul>
                                <li><span><em>{{__('words.Posted by:')}}</em><a href="#">{{$blog->posted_by}}</a></span></li>
                                <li><span><em>{{__('words.Posted on:')}}</em>{{  Carbon\Carbon::parse($blog->date)->format('d  F Y') }}</span></li>
                                <li><span><em>{{__('words.Share on:')}}</em><a href="#">Facebook</a>,<a href="#"> Twitter</a>,<a href="#"> Linkedin</a></span></li>
                            </ul>
                            @if (App::isLocale('ar') )
                            <p>{{$blog->ar_little_description}}</p>
                            <br>
                            <p>{!!$blog->ar_full_description!!}</p>
                            @else
                            <p>{{$blog->little_description}}</p>
                            <br>
                            <p>{!!$blog->full_description!!}</p>
                            @endif

                        </div>
                    </div>
                    <div class="comments">
                        <div class="sep-section-heading">
                            <h2>{{__('words.Comments')}}</h2>
                        </div>
                        @foreach ($allcomment as $item)
                        <div class="comments-content first-comment">
                            <img src="https://picsum.photos/100/100" alt="">
                            <div class="continue-button">
                                {{-- <a>{{__('words.Reply')}}<i class="fa fa-reply"></i></a> --}}
                            </div>
                            <h6>{{$item->name}}</h6>
                            <span>{{$item->created_at}}</span>
                            <p>{{$item->message}}</p>
                        </div>
                        @endforeach
                    </div>
                    <div class="leave-comment">
                        <div class="sep-section-heading">
                            <h2>{{__('words.Leave')}} <em>{{__('words.Comment')}}</em></h2>
                        </div>
                        <div class="submit-comment">
                            <form id="contact_form" action="{{ route('comment') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" value="{{$blog->id}}" name="blog_id">
                                <div class="row">
                                    <div class=" col-md-4 col-sm-4 col-xs-6">
                                        <input type="text" class="blog-search-field" name="name" placeholder="@lang('words.Your name...')" value="">
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-6">
                                        <input type="text" class="blog-search-field" name="email" placeholder="@lang('words.Your email...')" value="">
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-12">
                                        <input type="text" class="subject" name="subject" placeholder="@lang('words.Subject...')" value="" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <textarea id="message" class="input" name="message" placeholder="@lang('words.Message...')"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="submit-coment col-md-12">
                                        <div class="primary-button">
                                            <button type="submit" class="btn btn-primary">{{__('words.Submit now')}}</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
                                <h4>{{__('words.Categories')}}</h4>
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
                                <h4>{{__('words.Recent Posts')}}</h4>
                            </div>
                            <ul>
                                <li>
                                    <a href="single_post.html">
                                        <img src="https://picsum.photos/100/100" alt="">
                                        <h6>Pabst Gastropub Synth Edge</h6>
                                        <span>January 13, 2019</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="single_post.html">
                                        <img src="https://picsum.photos/100/100" alt="">
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
