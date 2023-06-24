@extends('layouts.intapp')
@section('contents')

<style>
.row{
    margin:0px;
}
    </style>

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

    @if(Cart::session(auth()->id())->getTotalQuantity()>0)
        <a class='btn btn-danger'style="position: relative;left: 47%;top: 10px;" href="{{route('cart-index')}}"><i class="fas fa-dollar-sign"></i>
            @if(App::isLocale('ar'))
                أفتح سلة التسوق
            @else
                View And Edit Cart
            @endif
        </a>    
    @else
        <a class='btn btn-danger'style="position: relative;left: 47%;top: 10px;" href="#"><i class="fas fa-dollar-sign"></i>
            @if(App::isLocale('ar'))
                أطلب 
            @else
               Order
            @endif
        </a>      
    @endif

<div class="on-grids wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
    <div class="container">
        <div class="recent-car-content">
            <div class="row py-5">
                <div class="col-md-12">
                    <div class="row">

                        @foreach ($allproducts as $item)

                        <div class="col-md-3">
                            <div class="car-item wow fadeIn" data-wow-duration="0.75s">
                                <div class="thumb-content">
                                    <div class="thumb-inner">
                                        <a >
                                            <img src="{{ Voyager::image ($item->image)}}" style="height:240px;" alt=""></a>
                                            <!-- update -->
                                            <div class="overlay">

                                                <ul class="sc-icons" style="font-size: xx-large;">
                                                  <li>
                                                      <a href="{{ route('add_favourite',$item->id) }}">
                                                         <i style='color:red;' class="fas fa-heart"></i>
                                                      </a>
                                                  </li>                                                  <li><a href="{{ route('add', $item->id) }}"><i class="fa fa-shopping-cart"></i></a></li>
                                                  <li><a href="{{ route('about') }}"><i class="fa fa-eye"></i></a></li>
                                                  <li><a href="{{ route('details',$item->id) }}"><i class="fa fa-info-circle"></i> </a></li>
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

                                     <ul class="car-info px-4" style="position:absolute; left:1px;">
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
                                <div class="modal-footer">
                                    <div class="col-12">
                                        <div class="comments">
                                          <div class="comment-box add-comment">
                                                <span class="commenter-pic">
                                                    <img src="{{ asset('images/user-icon.jpg') }}" class="img-fluid">
                                                </span>
                                                <span class="commenter-name">
                                                <input type="text" placeholder="Add a public comment" name="Add Comment">
                                                <button type="submit" class="btn btn-default">Comment</button>
                                                <button type="cancel" class="btn btn-default">Cancel</button>
                                                </span>
                                          </div>
                                          {{--<div class="comment-box">
                                            <span class="commenter-pic">
                                              <img src="assets/images/user-icon.jpg" class="img-fluid">
                                            </span>
                                            <span class="commenter-name">
                                              <a href="#">Happy markuptag</a> <span class="comment-time">2 hours ago</span>
                                            </span>
                                            <p class="comment-txt more">Suspendisse massa enim, condimentum sit amet maximus quis, pulvinar sit amet ante. Fusce eleifend dui mi, blandit vehicula orci iaculis ac.</p>
                                            <div class="comment-meta">
                                              <button class="comment-like"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 99</button>
                                              <button class="comment-dislike"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 149</button>
                                              <button class="comment-reply reply-popup"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</button>
                                            </div>
                                            <div class="comment-box add-comment reply-box">
                                              <span class="commenter-pic">
                                                <img src="assets/images/user-icon.jpg" class="img-fluid">
                                              </span>
                                              <span class="commenter-name">
                                                <input type="text" placeholder="Add a public reply" name="Add Comment">
                                                <button type="submit" class="btn btn-default">Reply</button>
                                                <button type="cancel" class="btn btn-default reply-popup">Cancel</button>
                                              </span>
                                            </div>
                                          </div>
                                           <div class="comment-box">
                                            <span class="commenter-pic">
                                              <img src="assets/images/user-icon.jpg" class="img-fluid">
                                            </span>
                                            <span class="commenter-name">
                                              <a href="#">Happy markuptag</a> <span class="comment-time">2 hours ago</span>
                                            </span>
                                            <p class="comment-txt more">Suspendisse massa enim, condimentum sit amet maximus quis, pulvinar sit amet ante. Fusce eleifend dui mi, blandit vehicula orci iaculis ac.</p>
                                            <div class="comment-meta">
                                              <button class="comment-like"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 99</button>
                                              <button class="comment-dislike"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 149</button>
                                              <button class="comment-reply"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</button>
                                            </div>
                                            <div class="comment-box replied">
                                              <span class="commenter-pic">
                                                <img src="assets/images/user-icon.jpg" class="img-fluid">
                                              </span>
                                              <span class="commenter-name">
                                                <a href="#">Happy markuptag</a> <span class="comment-time">2 hours ago</span>
                                              </span>
                                              <p class="comment-txt more">Suspendisse massa enim, condimentum sit amet maximus quis, pulvinar sit amet ante. Fusce eleifend dui mi, blandit vehicula orci iaculis ac.</p>
                                              <div class="comment-meta">
                                                <button class="comment-like"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 99</button>
                                                <button class="comment-dislike"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 149</button>
                                                <button class="comment-reply"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</button>
                                              </div>
                                              <div class="comment-box replied">
                                                <span class="commenter-pic">
                                                  <img src="assets/images/user-icon.jpg" class="img-fluid">
                                                </span>
                                                <span class="commenter-name">
                                                  <a href="#">Happy markuptag</a> <span class="comment-time">2 hours ago</span>
                                                </span>
                                                <p class="comment-txt more">Suspendisse massa enim, condimentum sit amet maximus quis, pulvinar sit amet ante. Fusce eleifend dui mi, blandit vehicula orci iaculis ac.</p>
                                                <div class="comment-meta">
                                                  <button class="comment-like"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 99</button>
                                                  <button class="comment-dislike"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 149</button>
                                                  <button class="comment-reply"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</button>
                                                </div>
                                              </div>
                                            </div>
                                          </div> --}}
                                        </div>
                                      </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        @endforeach
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
