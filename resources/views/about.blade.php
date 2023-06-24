
@extends('layouts.intapp')
@section('contents')

 <div class="overlay">
<div class="page-heading wow fadeIn" data-wow-duration="0.5s">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p style="float: left;font-weight: bold;"><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.About Us')}}</em></p>
                            <br>
                            <h2>{{__('words.About Us')}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>


<section>
    <div class="more-about-us">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="{{ asset('images/pexels-rebrand-cities-1367272.jpg') }}" alt="">
                </div>
                <div class="col-md-6"  style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
                    <div class="right-content">
                        {{-- <span>Interpharma Egycare MVV.</span> --}}
                        <h4>{{__('words.Who are We?')}}</h4>
                        <p><span class="fontfam">{{__('words.PAST :-')}}</span>{{__('words.PAST :-Yesterday, we have learned enough with a valuable experience at the level of manufacture, sales and marketing for drawing and building the future with clear vision and practical, professional and effective plan to achieve our Goals.')}}
                        </p>
                        <p>
                        <span class="fontfam">{{__('words.TODAY :-')}}</span>    {{__('words.TODAY :- Now we are planning to establish a promising National company at the intersection of pharmaceuticals and cosmeceuticals, We are planning to establish our pharmaceutical Factor at near future.')}}

                        </p>
                    </div>
                    <div class="py-3">
                        <a href="/images/myw3schoolsimage.jpg" class="btn btn-danger btn-lg" download> {{__('words.Company Profile (download)')}}</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<!--<section>-->
<!--    <div class="more-about-us">-->
<!--        <div class="container">-->
<!--            <div class="row">-->
<!--                <div class="col-md-12" style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">-->
<!--                    <div class="right-content">-->
<!--                       <h3 class="text-center">{{__('words.Our MVV ?')}}</h3>-->
<!--                        <h4 class="text-danger"> {{__('words.MISSION')}}</h4>-->
<!--                        <p>{{__('words.Improve the Health of the population by passionately create, discover, develop and deliver an innovative, high quality health care intervention "products, services" at a good price to reduce the patient suffering at the intersection of pharmaceuticals and cosmeceuticals. Our brands are formulated under supervision of Canadian consultants using latest Canadian technology in drug formulation, that ensures quality and effectiveness of our brand.')}}-->
<!--                        </p>-->
<!--                    {{-- </div> --}}-->


<!--                {{-- </div>-->
<!--                <div class="col-md-6"> --}}-->
<!--                    {{-- <div class="right-content"> --}}-->
<!--                        <h4 class="text-danger">{{__('words.VISION')}}</h4>-->
<!--                        <p>{{__('words.To be one of the most trusted Pioneer Pharmaceuticals and Cosmeceuticals company at the Egyptian market and Middle East  Through  understanding the market needs and good planning to satisfy that. PLUS our commitment towards our customers, shareholders, employees and society to be on time.')}}-->

<!--                        </p>-->
<!--                        <h4 class="text-danger">{{__('words.VALUES')}}</h4>-->
<!--                        <p>{{__('words.Business principles:-  "Responsibilities, creativity, Business integrity& Communication" are based on our values. Wherever we operate, we aim for the highest standards of performance and behavior in everything we do.')}}-->
<!--                        </p>-->
<!--                        <p>-->
<!--                            <span><h4 class="text-danger text-center">{{__('words.Our core principles and values:-')}}</h4> </span>-->
<!--                            <p>{{__('words.Our core principles are:- Deal with a respect and fairness, Act honestly  with integrity and sustainability.')}}-->
<!--                                </p>-->
<!--                                <p>{{__('words.Our core values are:- Customer focused, Deliver on commitments, Passion for excellence and Winning together. Our Values should be achieved in  a respect, Trust and Transparency manner.')}}-->
<!--                                </p>-->
<!--                        </p>-->
<!--                        <h4 class="text-danger text-center">{{__('words.Manpower')}}</h4>-->
<!--                        <p>{{__('words.Our SMART TEAM is the Corner Stone of our Success. We Work TOGETHER and Win TOGETHER because we Can DO  TOGETHER We have a clear , planned and promising Career pathway for our SMART TEAM.')}}-->

<!--                        </p>-->

<!--                    </div>-->


<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</section>-->

<h3 class="text-center mvv" style="font-weight: 800;font-size:2rem;margin-top:30px;">{{__('words.Our MVV')}}</h3>
<h5 class="text-center" style="font-weight: 500;color: #dc3545;">{{__('words.OUR MISSION VISION VALUES')}}</h5>
<div class="aboutus-section">
        <div class="container">
            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">{{__('words.Our core principles and values:-')}}</h2>
                        <p class="aboutus-text">{{__('words.Our core principles are:- Deal with a respect and fairness, Act honestly  with integrity and sustainability.')}}</p>
                        <p class="aboutus-text">{{__('words.Our core values are:- Customer focused, Deliver on commitments, Passion for excellence and Winning together. Our Values should be achieved in  a respect, Trust and Transparency manner.')}}</p>
                        <h2 class="aboutus-title">{{__('words.Manpower')}}</h2>
                         <p class="aboutus-text">{{__('words.Our SMART TEAM is the Corner Stone of our Success. We Work TOGETHER and Win TOGETHER because we Can DO  TOGETHER We have a clear , planned and promising Career pathway for our SMART TEAM.')}}</p>

                        <!--<a class="aboutus-more" href="#">read more</a>-->
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus-banner" style="margin-left:-45px;">
                        <img src="{{ asset('images/beautiful-young-female-doctor-looking-camera-office_1301-7807.png') }}" alt="" style="width:100%;">
                    </div>
                </div>
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="feature">
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">

                                    <span class="glyphicon icon"><i class="fas fa-cog"></i></span>
                                </div>
                                <div class="feature-content">
                                    <h4>{{__('words.MISSION')}}</h4>
                                    <p>{{__('words.Improve the Health of the population by passionately create, discover, develop and deliver an innovative, high quality health care intervention "products, services" at a good price to reduce the patient suffering at the intersection of pharmaceuticals and cosmeceuticals. Our brands are formulated under supervision of Canadian consultants using latest Canadian technology in drug formulation, that ensures quality and effectiveness of our brand.')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon icon"><i class="fas fa-cog"></i></span>
                                </div>
                                <div class="feature-content">
                                    <h4>{{__('words.VISION')}}</h4>
                                    <p>{{__('words.To be one of the most trusted Pioneer Pharmaceuticals and Cosmeceuticals company at the Egyptian market and Middle East  Through  understanding the market needs and good planning to satisfy that. PLUS our commitment towards our customers, shareholders, employees and society to be on time.')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon icon"><i class="fas fa-cog"></i></span>
                                </div>
                                <div class="feature-content">
                                    <h4>{{__('words.VALUES')}}</h4>
                                    <p>{{__('words.Business principles:-  "Responsibilities, creativity, Business integrity& Communication" are based on our values. Wherever we operate, we aim for the highest standards of performance and behavior in everything we do.')}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="services-first about-services wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
    <div class="container">
        <div class="row mt-5">
            <div class="col-md-12">
                <div class="section-heading">
                    <div class="icon">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <div class="text-content">
                        <h2>{{__('words.Availability')}}</h2>
                        <span>{{__('words.Check our recent products')}}</span>
                    </div>
                </div>
            </div>

        </div>
                 <div class="row">
                    <div class="col-md-6">
                        <label for="sel1">{{__('words.Governorate:')}}</label>
                        <br>
                        <form action="" method="POST" id="form1">
                            @csrf
                            <select class="form-control branchesinfo" name="id">
                                <option selected>{{__('words.Choose...')}}</option>
                                    @foreach ($allbranch as $item)
                                        <option value="{{ $item->id }}">{{$item->city}}</option>
                                    @endforeach
                            </form>
                        </select>

                    </div>
                    <div class="col-md-6 py-4">
                        <div class=" p-5 bg-white rounded " style="border-color: #8b4c54; box-shadow:2px 2px 3px 3px #36363681; ">
                            <h3 class="text-danger text-center" >{{__('words.All Branches')}}</h3>

                        <div class="det">
                                <h4 style="display: inline-block;">{{__('words.Address :')}} <span class="address_ajax"></span>  </h4>
                        <label id="address" class="h3 text-capitalize"></label></label>
                                <!-- <input disabled type="text" id="address" > -->
                          </div>

                         <div class="det">
                                <h4  style="display: inline-block;">{{__('words.Phone :')}}<span class="phone_ajax"></span> </h4>
                                <label id="phone"  class="h3 text-capitalize"></label>
                                <!-- <input disabled type="text" id="phone"> -->
                        </div>
                    </div>
                </div>


    </div>
</div>
@section('scripts')
<script>
    $(function(){

        $('.branchesinfo').on('change',function(){
            var formDat=new FormData($('#form1')[0]);

        $.ajax({
            method : "POST",
            enctype :"multipart/form-data",
            url :"{{route('ajax')}}",
            data: formDat,
            processData : false,
            contentType : false,
            cache : false,
            success : function(one,two,three){
                $('.phone_ajax').text(one.phone);
                $('.address_ajax').text(one.address);
            },
            error : function(one,two,three){
                console.log(one);
                console.log(two);
                console.log(three);
            },

            // Route::post('/ajax','mailController@ajaxshow')->name('ajax');
            // public function ajaxshow(Request $request)
            // {
            //     $user=\App\User::find($request->id)->email;
            //     return response()->json(["data"=>$user,'status'=> 200]);
            //     }


        });
        });
    });

    </script>

@endsection



{{-- <section>
    <div class="our-clients">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading">
                        <div class="icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="text-content">
                            <h2>{{__('words.Our Happy Clients')}}</h2>
                            <span>{{__('words.Here are our happy clients')}}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="owl-clients" class="owl-carousel owl-theme">

                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                        <div class="item">
                            <img src="https://picsum.photos/180/120" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}

@endsection
