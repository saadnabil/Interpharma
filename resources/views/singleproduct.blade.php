@extends('layouts.intapp')
@section('contents')
<style>
.row{
    margin:0px;
}
    </style>
<div class="product-heading wow fadeIn" data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.products')}}</em> / <em> {{__('words.product Details')}}</em></p>
                            <h2>{{__('words.product')}} <em>{{__('words.Details')}}</em></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="recent-car single-car wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
    <div class="container">
        <div class="recent-car-content">
            <div class="row">
                <!--edit the image that is hidden-->
                <div class="col-md-6">
                    <div id="single-car" class="slider-pro">
                        <div class="sp-slides">

                            <div class="" >
                                <img class="" src="{{ Voyager::image($product->image) }}" alt="" style="width: 100%;height: 100%;margin-left: -3px;margin-top: 0px;"/>
                            </div>

                        </div>
                    </div>
                    <div class="mt-5" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                        @if (App::isLocale('ar') )
                        <h4>{{$product->ar_name}}</h4>
                        @else
                        <h4>{{$product->name}}</h4>
                        @endif

                        <span style="font-size: 16px;font-weight: 900;color: #2959ad;margin-bottom: 0px; text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">{{$product->price}} {{__('words.L_E')}}</span>
                        <p style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                            @if (App::isLocale('ar') )
                            {{$product->ar_description}}
                            @else
                            {{$product->description}}
                            @endif


                        </p>
                    </div>
                </div>
                <!--end of edit image to show in the project-->
                <div class="col-md-6" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                    <div class="car-details">

                        <div class="container">
                            <div class="row" dir="{{(App::isLocale('ar') ? 'rtl' : 'ltr')}}">
                                <span>{{__('words.Composition:')}}</span>
                                <p class="pt-3">

                                    @if (App::isLocale('ar') )
                                  <li> {{$product->ar_composition_des}} </li>
                                    @else
                                  <li>    {{$product->compostion_des}} </li>
                                    @endif

                                </p>

                                    <div class="col-md-6" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                                        <ul class="">
                                            @foreach($des1 as $item)
                                                <li>{{$item}}</li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    <div class="col-md-6 " style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                                        <ul class="">
                                        @foreach($des2 as $item)
                                            <li>{{$item}}</li>
                                        @endforeach
                                    </ul>
                                    </div>

                                <div class="" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                                    <span>{{__('words.Indicated for:')}}</span>
                                    <ul class="mt-4">
                                        @foreach($des3 as $item)
                                        <li>{{$item}}</li>
                                        @endforeach
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="similar-info">
                            <div class="primary-button">
                                <a href="{{ route('add', $product->id) }}">{{__('words.Add To Cart')}}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 mt-5 app" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                    <h3 style="color: #D71921;" >{{__('words.Application:')}}</h3>
                    <h6 class="">
                        @if (App::isLocale('ar') )
                        {{$product->ar_application_desc}}
                        @else
                        {{$product->application_desc}}
                        @endif

                    </h6>

                    <h3 style="color: #D71921;">{{__('words.Package:')}}</h3>
                    <h6>
                        @if (App::isLocale('ar') )
                        {{$product->ar_package_desc}}
                        @else
                        {{$product->package_desc}}
                        @endif

                    </h6>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
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
</div>
<div class="container">

    <div class="row">

        <div class="leave-comment">
            <div class="sep-section-heading">
                <h2>{{__('words.Leave')}} <em>{{__('words.Comment')}}</em></h2>
            </div>
            <div class="submit-comment">
                <form id="contact_form" action="{{ route('comment') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="product_id" value="{{$product->id}}">
                    <div class="row">
                        <div class=" col-md-4 col-sm-4 col-xs-6">
                            <input type="text" class="form-control-lg" name="name" placeholder="@lang('words.Your name...')" value="">
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-6">
                            <input type="email" class="form-control-lg" name="email" placeholder="@lang('words.Your email...')" value="">
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <input type="text" class=" form-control-lg" name="subject" placeholder="@lang('words.Subject...')" value="" >
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <textarea id="message" class="form-control-lg" name="message" cols="83" rows="4" placeholder="@lang('words.Message...')"></textarea>
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



@endsection
