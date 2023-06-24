@extends('layouts.intapp')
@section('contents')

<div class="product-heading wow fadeIn " data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p style="float: left;font-weight: bold;"><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.PRODUCTS')}}</em> / <em> {{__('words.Listing')}}</em></p>
                            <h2>{{__('words.Products')}} <em>{{__('words.Grids')}}</em></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="on-grids wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
    <div class="container">
        <div class="recent-car-content">
            <div class="row py-5">
                <div class="col-md-12">
                    <div class="row">

                        @forelse ($allproducts as $item)

                            <div class="col-md-3">
                                <div class="car-item wow fadeIn" data-wow-duration="0.75s">
                                    <div class="thumb-content">
                                        <div class="thumb-inner">
                                            <a >
                                                <img src="{{ Voyager::image ($item->image)}}" style="height:240px;" alt=""></a>
                                                <!-- update -->
                                                <div class="overlay">
    
                                                    <ul class="sc-icons" style="font-size: xx-large;position: relative;left: -5px;">
                                                      <li style="width: 45px;"><a href="{{route('removeFavourite',$item->id)}}"><i class='fas fa-trash-alt'></i></a></li>
                                                      <li style="width: 45px;"><a href="{{ route('add', $item->id) }}"><i class="fa fa-shopping-cart"></i></a></li>
                                                      <li style="width: 45px;"><a href="{{ route('about') }}"><i class="fa fa-eye"></i></a></li>
                                                      <li style="width: 45px;"><a href="{{ route('details',$item->id) }}"><i class="fa fa-info-circle"></i> </a></li>
                                                    </ul>
                                                </div>
                                        </div>
                                    </div>
                                    <div class="down-content" style="height:160px;">
                                        @if (App::isLocale('ar') )
                                        <h4>{{$item->ar_name}}</h4>
                                        <span> {{$item->price}}  L.E</span>
                                       
                                        @else
                                        <h4>{{$item->name}}</h4>
                                        <span> {{$item->price}}  L.E</span>
                                       
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
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                         <ul class="car-info px-4" style="position:absolute; bottom:2rem; left:1px;">
                                           <li class="m-0 p-0"><a href="{{$item->jumiaLink}}" class="item"><img  src="{{ asset('images/jumia-logo.png') }}"style="width:98%"></a></li>
                                            <li class="m-0 p-0"><a href="{{$item->noonLink}}" class="item"><img class="img-fluid" src="{{ asset('images/Noon-01.png') }}"style="width:98%"></a></li>
                                            <li><a href="{{$item->souqLink}}" class="item"><img class="img-fluid" src="{{ asset('images/souq-logo-primary-en.svg') }}"style="width:98%"></a></li>
                                            <li ><a href="{{$item->facebookLink}}" class="item"><img class="img-fluid" src="{{ asset('images/facebook.png') }}"style="width:98%"></a></li>
                                         </ul>
                                    </div>
                                </div>
                            </div>
    
                            <div class="modal fade" id="exampleModalScrollable{{$item->id , $item->image,$item->name ,$item->price ,$item->description}}"  tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable  modal-dialog-centered modal-lg" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                    <h5 class="modal-title text-center" id="exampleModalScrollableTitle">{{$item->name}}</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-7">
                                             <img  src="{{ Voyager::image ($item->image)}}" class="img-fluid" alt=""/>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="car-details">
                                                    <h4>Perfect Cosmetic</h4>
                                                    <span style="color: #2959ad;">{{$item->price}} L.E</span>
                                                <p>{{$item->description}}</p>
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-7 offset-2">
                                                                <div class="rating"> <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label> <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
                                                                </div>
                                                            </div>
                                                    </div>
                                                    <div class="similar-info">
                                                        <div class="primary-button">
                                                            <a href='cart.html'>Add To Cart <i class="fa fa-dollar"></i></a>
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
                        @empty
                         <div class='col-md-12'>
                             <div class='alert alert-danger text-center'>
                                 @if(App::isLocale('ar'))
                                    لاتوجد منتجات مفضلة فى القائمة
                                 @else
                                    Not Found Any Favourite Products In List
                                 @endif
                             </div>
                         </div>  
                        @endforelse
                    </div>

                    <div class="col-md-12">
                        <div class="page-numbers w-50 float-right">
                                {{$allproducts->links()}}
                        </div>
                    </div>
                </div>


               
            </div>
        </div>
    </div>
</div>

<script>
    $('select').on('change', function (e) {
        var link = $("option:selected", this).val();
        if (link) {
            location.href = link;
        }
    });
</script>


@endsection
