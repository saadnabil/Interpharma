@extends('layouts.intapp')
@section('contents')



{{-- this is the model to regester to our interpharme --}}
@guest



<div id="myModal" class="modal fade mt-5 col-sm-12" style="">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <img src="{{ asset('images/Logo-01.png') }}" width="100px" >
                <h5 style="margin-left: 20%; margin-top: 4%;color: #dc3545!important;">{{__('words.Welcome')}} </h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body" style="">
                <div class="col-md-6 col-10 mod_img" style="background-image: url(./images/WhatsAppImage2021-02-23at11.52.50AM.jpeg);background-size: cover;">

                </div>
                <div class="col-md-6">
                <p class="text-muted" style="font-size: 14px;color: #2959ad !important;font-weight: 500;">
                    {{__('words.To join our Beauty World of Interpharma Egycare')}}
                   <span style=" font-style: italic;color:#000;font-weight: 500;"> {{__('words.To Enjoy special offers , Free samples& More surprises')}}</span>
                </p>
                <p class="text-muted" style="font-size: 17px;color: #dc3545!important;">{{__('words.Please register here')}}</p>

        {{-- the popup form to register --}}
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="form-group row">
                        <div class="col-md-12">
                            <input id="name" type="text" placeholder="{{ __('words.name') }}" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-12">
                            <input id="email" type="email" placeholder="{{ __('words.email') }}" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-12">
                            <input id="password" type="password" placeholder="{{ __('words.password') }}" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-12">
                            <input id="password-confirm" placeholder="{{ __("words.confirm_password") }}" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                        </div>
                    </div>

                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-6">
                            <button type="submit" class="btn btn-primary">
                                {{ __('words.Register') }}
                            </button>
                        </div>
                    </div>
                </form>
            {{--end the popup form to register --}}
            </div>
            </div>
        </div>
    </div>
</div>
@endguest

{{-- this is the model to regester to our interpharme --}}
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="margin-top:10%;">
  <div class="carousel-inner">

      @foreach($sliders as $index=>$slider)
        <div class="carousel-item @if($index==0) active @endif">
          <img class="d-block w-100" src="{{ Voyager::image($slider->image) }}" alt="First slide" style="padding-top: 15px;">
          <!--<div class="secondary-button sec_btn" style="">-->
          <!--                  <a href="{{ route('product',1) }}">{{__('words.Order Now')}} <i class="fa fa-shopping-cart"></i></a>-->
          <!--              </div>-->
        </div>
      @endforeach

  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true" style=""></span>
    <span class="sr-only" >Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true" style=""></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!--<div class="Modern-Slider mt-5" style="margin-top:70px !important;height:560px !important;">-->
  <!-- Slide 1 -->
<!--  <div class="item" >-->
<!--    <div class="img-fill">-->
<!--        <div class="img-op" style="background-color: white;">-->
<!--         <img src="{{ asset('images/bg1.png') }}" class="img-fluid" alt="" style="height:460px !important;">-->
<!--        </div>-->
<!--      {{-- <div class="info">-->
<!--        <div >-->
<!--            <h5>Interpharma Egycare HAS THE BEST CHOICE</h5>-->
<!--              <h3>Looking For Perffect <em>cosmetic</em>?</h3>-->
<!--              <h6 class="secondary-button">-->
<!--                  <a href="#">Find Your product <i class="fa fa-shopping-cart"></i></a>-->
<!--              </h6>-->
<!--        </div>-->
<!--      </div> --}}-->
<!--    </div>-->
<!--  </div>-->
  <!-- // Slide 1 -->
  <!-- Slide 2 -->
<!--  <div class="item">-->
<!--    <div class="img-fill">-->
<!--        <div class="img-op" style="background-color: white;">-->
<!--      <img src="{{ asset('images/bg2.png') }}" alt="" style="height:460px !important;">-->
<!--    </div>-->
<!--      {{-- <div class="info">-->
<!--        <div>-->
<!--            <h5>Interpharma Egycare HAS THE BEST CHOICE</h5>-->
<!--              <h3>Looking For Perffect <em>Cosmetic</em>?</h3>-->
<!--              <h6 class="secondary-button">-->
<!--                  <a href="#">Find Your product <i class="fa fa-shopping-cart"></i></a>-->
<!--              </h6>-->
<!--        </div>-->
<!--      </div> --}}-->
<!--    </div>-->
<!--  </div>-->
  <!-- // Slide 2 -->
  <!-- Slide 3 -->
<!--  <div class="item">-->
<!--    <div class="img-fill">-->
<!--        <div class="img-op" style="background-color: white; ">-->
<!--      <img src="{{ asset('images/bg3.png') }}" width="100%" alt="" style="height:460px !important;">-->
<!--        </div>-->
<!--      {{-- <div class="info">-->
<!--        <div>-->
<!--            <h5>Interpharma Egycare HAS THE BEST CHOICE</h5>-->
<!--              <h3>Looking For Perffect <em>Cosmetic</em>?</h3>-->
<!--              <h6 class="secondary-button">-->
<!--                  <a href="#">Find Your product <i class="fa fa-shopping-cart"></i></a>-->
<!--              </h6>-->
<!--        </div>-->
<!--      </div> --}}-->
<!--    </div>-->
<!--  </div>-->
  <!-- // Slide 4 -->
<!--  <div class="item">-->
<!--    <div class="img-fill">-->
<!--        <div class="img-op" style="background-color: white;">-->
<!--      <img src="{{ asset('images/bg4.png') }}" class="" alt="" style="height:460px !important;">-->
<!--        </div>-->
<!--      {{-- <div class="info">-->
<!--        <div>-->
<!--            <h5>Interpharma Egycare HAS THE BEST CHOICE</h5>-->
<!--              <h3>Looking For Perffect <em>Cosmetic</em>?</h3>-->
<!--              <h6 class="secondary-button">-->
<!--                  <a href="#">Find Your product <i class="fa fa-shopping-cart"></i></a>-->
<!--              </h6>-->
<!--        </div>-->
<!--      </div> --}}-->
<!--    </div>-->
<!--  </div>-->
<!--</div>-->


<section class="slider-features wow fadeIn" data-wow-duration="1.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="slider-top-features">
                    <div id="owl-top-features" class="owl-carousel owl-theme">
                        @foreach ($topproducts as $item)
                            <div class="item car-item" >
                                <div class="thumb-content">
                                <a href="{{ route('details',$item->id.'#single-car') }}"><img src="{{Voyager::image ($item->image)}}"  alt=""></a>
                                </div>
                                <div class="down-content">
                                <a href="{{ route('details',$item->id.'#single-car') }}"><h6>
                                    @if (App::isLocale('ar') )
                                    <p>{{$item->ar_name}}</p>
                                    @else
                                    <p>{{$item->name}}</p>
                                    @endif
                                </h6></a>
                                    {{-- <span>{{$item->price}} L.E</span> --}}
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Start Feature Section not dyanmic-->
<section>
    <div class="features-search-section">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8">
                    <div class="row">
                        <div class="col-12 col-md-12">
                            <div class="service-item wow fadeIn" data-wow-duration="0.75s">
                                {{-- <i class="fa fa-car"></i> --}}
                                    @php $coms=App\Comeingsoon::latest()->first();@endphp
                                    <div class="text-content">
                                      <!--  <h3 class="text-danger sooon" style="">{{__('words.Coming Soon')}}</h3>-->
                                        <!--<img src="{{ voyager::image($coms->image) }}" width="100%"  alt="">-->
                                        <img src="{{ asset('images/EgyCareChristmas.jpeg') }}" width="100%"  alt="">
                                   <div class="row pt-4">


                                  <div class="col-12 col-md-2">      <section  style="width: 60px;height:50px">
<svg class="chat_svg" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve"><a href="https://wa.me/201033310962" target="_blank">
<path style="fill:#4CAF50;" d="M256.064,0h-0.128l0,0C114.784,0,0,114.816,0,256c0,56,18.048,107.904,48.736,150.048l-31.904,95.104
l98.4-31.456C155.712,496.512,204,512,256.064,512C397.216,512,512,397.152,512,256S397.216,0,256.064,0z"/>
<path style="fill:#FAFAFA;" d="M405.024,361.504c-6.176,17.44-30.688,31.904-50.24,36.128c-13.376,2.848-30.848,5.12-89.664-19.264
C189.888,347.2,141.44,270.752,137.664,265.792c-3.616-4.96-30.4-40.48-30.4-77.216s18.656-54.624,26.176-62.304
c6.176-6.304,16.384-9.184,26.176-9.184c3.168,0,6.016,0.16,8.576,0.288c7.52,0.32,11.296,0.768,16.256,12.64
c6.176,14.88,21.216,51.616,23.008,55.392c1.824,3.776,3.648,8.896,1.088,13.856c-2.4,5.12-4.512,7.392-8.288,11.744
c-3.776,4.352-7.36,7.68-11.136,12.352c-3.456,4.064-7.36,8.416-3.008,15.936c4.352,7.36,19.392,31.904,41.536,51.616
c28.576,25.44,51.744,33.568,60.032,37.024c6.176,2.56,13.536,1.952,18.048-2.848c5.728-6.176,12.8-16.416,20-26.496
c5.12-7.232,11.584-8.128,18.368-5.568c6.912,2.4,43.488,20.48,51.008,24.224c7.52,3.776,12.48,5.568,14.304,8.736
C411.2,329.152,411.2,344.032,405.024,361.504z"/>
<g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
</a>
</svg>
                                        </section>
                                    </div>
                                    <div class="col-12 col-md-10 text-danger" style="position: relative;" >  <h3><a href="https://wa.me/201033310962" target="_blank">   {{ __('words.PromoCode') }} </a> </h3> </div>
                                   </div>

                                   </div>
                            </div>
                        </div>


                         {{-- <div class="col-md-6">
                            <div class="service-item wow fadeIn" data-wow-duration="0.75s">
                                <i class="fa fa-search"></i>
                                    <div class="text-content">
                                    <h6>Car Dealer Research</h6>
                                    <p>Irony actually meditation, ocupy mumble core wayfarers organic pickled.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="service-item wow fadeIn" data-wow-duration="0.75s">
                                <i class="fa fa-users"></i>
                                    <div class="text-content">
                                    <h6>Best Dealers</h6>
                                    <p>Irony actually meditation, ocupy mumble core wayfarers organic pickled.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="service-item wow fadeIn" data-wow-duration="0.75s">
                                <i class="fa fa-globe"></i>
                                    <div class="text-content">
                                    <h6>World Wide Known</h6>
                                    <p>Irony actually meditation, ocupy mumble core wayfarers organic pickled.</p>
                                </div>
                            </div>
                        </div>  --}}




                    </div>
                </div>
                <div class="col-md-4">
                    <div class="search-content wow fadeIn" data-wow-duration="0.75s">
                        <div class="search-heading">
                            <div class="icon">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="text-content">
                                <h2>{{__('words.Quick Search')}}</h2>
                                <span>{{__('words.We made a quick search just for you')}}</span>
                            </div>
                        </div>
                        <div class="search-form">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-select">
                                        <form >
                                            <select onchange="this.form.submit();">
                                                <option value="-1">{{__('words.Select Band')}}</option>
                                                @foreach ($topproducts as $item)
                                                <option value="{{ route('details', $item->id) }}">
                                                    @if (App::isLocale('ar') )
                                                    <h4>{{$item->ar_name}}</h4>
                                                    @else
                                                    <h4>{{$item->name}}</h4>
                                                    @endif
                                                </a>
                                                </option>

                                                @endforeach


                                            </select>
                                        </form>

                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="secondary-button">
                                        <a href="#" >{{__('words.Search')}}<i class="fa fa-search"></i></a>
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

<!--End Feature Section not dyanmic-->

<!-- end what this -->
<section>
    <div class="call-to-action wow fadeIn" data-wow-duration="0.75s">
        <div class="container">
            <div class="call-to-action-content">
                <div class="row">
                    <div class="col-md-12">
                        <p>@lang('words.banner') <em>
                            <a href="#" style="color:red">
                                @if(App::isLocale('ar'))
                                    أنترفرما
                                @else
                                    Interpharma
                                @endif
                            </a>
                        </em></p>
                        <div class="secondary-button">
                            <a href="{{ route('shop') }}">{{__('words.Take Now')}} <i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--end what this-->
<section>
    <div class="recent-cars">
        <div class="container">
            <div class="recent-car-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <div class="icon">
                                <a href="{{ route('product',5000000000000) }}"><i class="fa fa-shopping-cart"></i></a>
                            </div>
                            <div class="text-content">
                                <h2>{{__('words.Popular Products')}}</h2>
                                <span>{{__('words.Check our recent products')}}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    @foreach ($allproducts as $item)
                    <div class="col-md-4 col-sm-6">
                        <div class="car-item wow fadeIn" data-wow-duration="0.75s" style="position: relative;">
                            <div class="thumb-content">
                                <div class="thumb-inner" style="">
                                    <a href="single_product.html">
                                        <img src="{{ Voyager::image ($item->image) }}" alt=""></a>  <!--style="height:280px;"-->
                                        <!-- update -->
                                        <div class="overlay">

                                            <ul class="sc-icons" style="font-size: xx-large;">
                                              <li>
                                                  <a href="{{ route('add_favourite',$item->id) }}">
                                                        <i style='color:red;' class="fas fa-heart"></i>
                                                  </a>
                                              </li>
                                              <li><a href="{{ route('add', $item->id) }}"><i class="fas fa-cart-plus"></i></a></li>
                                              <li><a href="{{ route('details',$item->id.'#single-car') }}"><i class="fa fa-eye"></i></a></li>
                                            <li><a  href="{{ route('about') }}">
                                               <i class="fa fa-info-circle"></i> </a></li>
                                            </ul>
                                        </div>
                                </div>

                            </div>

                            <div class="down-content" style=" min-height:500px">
                                @if (App::isLocale('ar'))
                                <h4>{{$item->ar_name}}</h4>
                                <span>{{$item->price}} L.E</span>
                                <p>{{$item->ar_description}}</p>
                                @else
                                <h4>{{$item->name}}</h4>
                                <span>{{$item->price}} L.E</span>
                                <p>{{substr($item->description,0,150)}}</p>
                                @endif

                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-2 offset-5">
                                            <div class="rating">
                                                @guest
                                                    <a href="{{route('addStar',$item->id)}}">
                                                         <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                    </a>
                                                    <a href="{{route('addStar',$item->id)}}">
                                                         <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                    </a>
                                                    <a href="{{route('addStar',$item->id)}}">
                                                         <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                    </a>
                                                    <a href="{{route('addStar',$item->id)}}">
                                                         <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                    </a>
                                                    <a href="{{route('addStar',$item->id)}}">
                                                         <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                    </a>
                                                @else
                                                    @php $star=App\Star::where('product_id',$item->id)->where('user_id',auth()->user()->id)->first(); $counter=$star->counter ?? 0; @endphp
                                                    @for($i=1 ; $i <= $counter ; $i++)
                                                        <a href="{{route('removeStar',$item->id)}}">
                                                             <i style='color:#FFD600;' class='fa fa-star fa-x'></i>
                                                        </a>
                                                    @endfor
                                                    @for($i=1 ; $i <= 5-$counter ; $i++)
                                                        <a href="{{route('addStar',$item->id)}}">
                                                             <i style='color:#FFD600' class='far fa-star fa-x'></i>
                                                        </a>
                                                    @endfor
                                                @endguest
                                                 <!--<input type="radio" name="rating" value="4" id="4"  style="font-size: x-large;">-->
                                                 <!--<label for="4"  style="font-size: x-large;">☆</label>-->
                                                 <!--<input type="radio" name="rating" value="3" id="3"  style="font-size: x-large;">-->
                                                 <!--<label for="3"  style="font-size: x-large;">☆</label>-->
                                                 <!--<input type="radio" name="rating" value="2" id="2"  style="font-size: x-large;">-->
                                                 <!--<label for="2"  style="font-size: x-large;">☆</label>-->
                                                 <!--<input type="radio" name="rating" value="1" id="1"  style="font-size: x-large;">-->
                                                 <!--<label for="1"  style="font-size: x-large;">☆</label>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <ul class="car-info pt-4 social-box" style="text-align: center" >
                                   <!--style="position:absolute; bottom:2rem; left:1px;" <li class="m-0 p-0"><a href="{{$item->jumiaLink}}" class="item"><img  src="{{ asset('images/jumia-logo.png') }}"style="width:98%"></a></li>
                                        <li class="m-0 p-0"><a href="{{$item->noonLink}}" class="item"><img class="img-fluid" src="{{ asset('images/Noon-01.png') }}"style="width:98%"></a></li>
                                        <li><a href="{{$item->souqLink}}" class="item"><img class="img-fluid" src="{{ asset('images/souq-logo-primary-en.svg') }}"style="width:98%"></a></li>

                                        <li ><a href="{{$item->facebookLink}}" class="item"><img class="img-fluid" src="{{ asset('images/facebook.png') }}"style="width:98%"></a></li>
                                    <li class="m-0 p-0"><a href="{{$item->tiktok}}" class="item"><img  src="{{ asset('images/tiktok.png') }}"style="width:45px;height:30px;"></a></li>
                                        <li ><a href="{{$item->instgram}}" class="item"><img class="img-fluid" src="{{ asset('images/instagram.jpg') }}"style="width:75px;height:35px;"></a></li>

                                    -->

                                      <!--  <li class="youtube"><a href="{{$item->noonLink}}" target="_new"><i class="fab fa-tiktok"></i></a></li>
                                        <li class="twitter"><a href="{{$item->souqLink}}" target="_new"><i class="fab fa-instagram"></i></a></li>

                                        <li class="facebook"><a href="{{$item->facebookLink}}" target="_new"><i class="fab fa-facebook-f"></i></a></li>-->
                                </ul>
                            </div>
                        </div>
                    </div>

                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
{{-- this is the start of testmonials --}}


<section>
    <div class="testimonials">
        <div class="container">
            <div class="row pt-5">
                <div class="col-md-12">
                    <div class="section-heading">
                        <div class="icon">
                            <i class="fa fa-comments"></i>
                        </div>
                        <div class="text-content">
                            <h2>{{__('words.Reviews')}}</h2>
                            <span>{{__('words.Check our recent products')}}</span>
                        </div>
                    </div>
                </div>
            </div>
                <div id="owl-testimonials" class="owl-carousel owl-theme">

                    @foreach (\App\Comment::where('show',1)->inRandomOrder()->limit(9)->get() as $comment )
                        <div class="item wow fadeIn" data-wow-duration="0.75s">
                            <ul class="star-rating">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <div class="line-dec"></div>
                            <p><em>"</em>{{substr($comment->message,0,100)}}<em>"</em></p>
                            <div class="author-rate">
                                <img src="https://picsum.photos/100/100" alt="">
                                <h4>{{$comment->name}}</h4>
                                <div class="line-dec2"></div>
                                <span>
                                    @if($comment->blog_id==null)
                                        @if(App::isLocale('ar'))
                                            {{$comment->product->ar_name}}
                                        @else
                                            {{$comment->product->name}}
                                        @endif
                                    @else
                                        @if(App::isLocale('ar'))
                                            {{$comment->blog->ar_name}}
                                        @else
                                            {{$comment->blog->name}}
                                        @endif
                                    @endif

                                </span>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>



{{-- this is the end of testmonials --}}


<section>
    <div class="latest-news">
        <div class="container">
            <div class="latest-news-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <div class="icon">
                                <i class="fa fa-file"></i>
                            </div>
                            <div class="text-content">
                                <h2>{{__('words.Blog')}}</h2>
                                <span>{{__('words.Here are our latest products')}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                @foreach ($allblog as $item)
                <div class="col-md-4" >
                    <div class="item" style="height:37rem;">
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
                                        <li><span><em>{{__('words.Posted by:')}}</em>{{$item->posted_by}}</span></li>
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

            </div>
        </div>
    </div>
</section>

<script>
    $('select').on('change', function (e) {
        var link = $("option:selected", this).val();
        if (link) {
            location.href = link;
        }
    });
    $('.like-btn').on('click', function() {
   $(this).toggleClass('is-active');
});
</script>






@endsection
