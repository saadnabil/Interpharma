@extends('layouts.intapp')
@section('contents')

<div class="page-heading wow fadeIn" data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p style="float: left;font-weight: bold;"><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.products')}}</em> / <em> {{__('words.product Checkout')}}</em></p>
                            <h2>{{__('words.product')}} <em>{{__('words.Checkout')}}</em></h2>
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
              <!-- Main Content Wrapper Start -->
              <div class="main-content-wrapper">
                <div class="page-content-inner pt--80 pt-md--60 pb--72 pb-md--60">
                    <div class="container">
                        <div class="row">
                            <!-- Checkout Area Start -->
                            <div class="col-lg-6">
                                <div class="checkout-title mt--10">
                                    <h2 style="font-size: 20px;margin-bottom: 45px;font-weight: 700;color: #222;">{{__('words.Billing Details')}}</h2>
                                </div>
                                <div class="col-md-12">

                                    @if($errors->any)
                                        @foreach ($errors->all() as $error)
                                            <div class="alert alert-danger">
                                                {{$error}}
                                            </div>
                                        @endforeach
                                    @endif
                                    @if(session()->has("success"))
                                        <div class="alert alert-success">
                                            {{session()->get('success')}}
                                        </div>
                                    @endif
                                    @if(session()->has("error"))
                                        <div class="alert alert-danger">
                                            {{session()->get('error')}}
                                        </div>
                                    @endif
                                </div>
                                <div class="checkout-form">
                                    <form action="{{route('storeOrder')}}" class="form form--checkout" method="POST">
                                        @csrf
                                        <div class="form-row mb--20">
                                            <div class="form__group col-md-6 mb-sm--30">
                                                <label for="first_name" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.First Name')}}  <span class="required">*</span></label>
                                                <input type="text" name="first_name" id="billing_fname" class="form__input" style="height: 40px;padding-left: 10px;width: 100%;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                            <div class="form__group col-md-6">
                                                <label for="last_name" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Last Name')}}  <span class="required">*</span></label>
                                                <input type="text" name="last_name" id="billing_lname" class="form__input" style="height: 40px;padding-left: 10px;width: 100%;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="country_id" class="form__label" style="font-weight: 700;font-size: 20px;">{{__('words.Country')}} <span class="required">*</span></label>
                                                <select id="billing_country" name="country_id" class="form__input nice-select">
                                                    <option value="">@lang('words.Select a country')</option>
                                                    @foreach (\App\Country::all() as $country )
                                                        <option value="{{$country->id}} {{$country->price}}" shipPrice="{{$country->price}}">
                                                            @if(App::isLocale('ar'))
                                                                {{$country->name_ar}}
                                                            @else
                                                                {{$country->name_en}}
                                                            @endif
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <span>@lang('words.Shipping')=<span style='color:red;' class='shipPricevalue'></span>@lang('words.L_E')</span>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="street_address" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Street Address')}} <span class="required">*</span></label>
                                                <input type="text" name="street_address" id="billing_apartment" class="form__input" placeholder=""  style="height: 40px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="city" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Town / City')}} <span class="required">*</span></label>
                                                <input type="text" name="city" id="billing_city" class="form__input"  style="height: 40px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="government" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.State / County')}} <span class="required">*</span></label>
                                                <input type="text" name="government" id="billing_state" class="form__input"  style="height: 40px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="phone" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Phone')}} <span class="required">*</span></label>
                                                <input type="text" name="phone" id="billing_phone" class="form__input"  style="height: 40px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>
                                        <div class="form-row mb--20">
                                            <div class="form__group col-12">
                                                <label for="email" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Email Address')}}  <span class="required">*</span></label>
                                                <input type="email" name="email" id="billing_email" class="form__input"  style="height: 40px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;" required>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form__group col-12">
                                                <label for="note" class="form__label" style="margin-bottom: 8px;font-weight: 700;font-size: 20px;">{{__('words.Order Notes')}}</label>
                                                <textarea class="form__input form__input--textarea" id="note" name="note" placeholder="" style="height: 100px;padding-left: 10px;width: 100%;border-color: #e5e5e5;border: 1px solid #5c5958;border-radius: 4px;overflow: auto;resize: vertical;"></textarea>
                                            </div>
                                        </div>
                                        @if(Cart::session(auth()->id())->getTotalQuantity()>0)
                                          <button type="submit" class="btn btn-size-md btn-fullwidth" style="padding: 12px 30px;box-shadow: 2px 3px 2px 2px grey;text-transform: uppercase;text-align: center;width: 100%;font-weight: 700;border-radius: 500px;min-width: 180px;line-height: 28px;border: 1px solid #222;background-color: #222;color: #ffffff;">{{__('words.Place Order')}}</button>
                                        @else
                                            <button type="submit" disabled class="btn btn-size-md btn-fullwidth" style="padding: 12px 30px;box-shadow: 2px 3px 2px 2px grey;text-transform: uppercase;text-align: center;width: 100%;font-weight: 700;border-radius: 500px;min-width: 180px;line-height: 28px;border: 1px solid #222;background-color: #222;color: #ffffff;">{{__("words.add_bad")}}</button>
                                        @endif
                                    </form>
                                </div>
                            </div>


                            <div class="col-xl-6 col-lg-6 ">
                                <div class="order-details" style="box-shadow: 2px 3px 2px 2px grey;border: none;">
                                        <div class="checkout-title mt--10">
                                            <h2 style="font-weight: 700;font-size: 20px;">{{__('words.Your Order')}}</h2>
                                        </div>
                                        <div class="table-content table-responsive mb--30">
                                            <table class="table order-table order-table-2">
                                                <thead>
                                                    <tr>
                                                        <th style="font-weight: 700;font-size: 20px;">{{__('words.Product')}}</th>
                                                        <th class="text-right" style="font-weight: 700;font-size: 20px;">{{__('words.Total')}}</th>
                                                        {{-- <th class="text-right" style="font-weight: 700;font-size: 20px;">{{__('words.Action')}}</th> --}}
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach ($cartItem as $item)
                                                    <tr>
                                                        <th>{{$item->name}} <br>
                                                            <form action="{{ route('cart-update', $item->id) }}">
                                                                <div class="d-flex">
                                                                    @lang('words.Quantity') :
                                                                  <input name="quantity" type="number" value="{{$item->quantity}}" onchange="this.form.submit()" style="width: 40%;border: 1px solid black;">
                                                                </div>
                                                            </form>
                                                        </th>
                                                        <td class="text-right"> {{Cart::session(auth()->id())->get($item->id)->getPriceSum()}} @lang('words.L_E')</td>
                                                        <td class="text-center"><a href="{{ route('cart-delete', $item->id) }}" class=""><i class="fas fa-trash fa-2x text-danger"></i></a></td>
                                                    </tr>
                                                    @endforeach


                                                </tbody>
                                                <tfoot>
                                                    <tr class="cart-subtotal">
                                                        <th>{{__('words.Subtotal')}}</th>
                                                        <td class="text-right"><span class='total_price'>{{Cart::session(auth()->id())->getTotal()}}</span>@lang('words.L_E')</td>
                                                    </tr>
                                                    <tr class="shipping">
                                                        <th>{{__('words.Shipping')}}</th>
                                                        <td class="text-right">
                                                            <span id='shipPricevalue'></span>@lang('words.L_E')
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <!--{{Cart::session(auth()->id())->getTotal() + 20}}-->
                                                        <th>{{__('words.Order Total')}}</th>
                                                        <td class="text-right"><span class="order-total-ammount total_with_shipping"></span>@lang('words.L_E')</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div class="checkout-payment">
                                            <label class="payment-label" for="cash" style="font-weight: 700;font-size: 20px;">
                                                {{__('words.CASH ON DELIVERY')}}
                                            </label>
                                        </div>
                                        <div class="payment-info cash hide-in-default" data-method="cash">
                                            <p>{{__('words.Pay with cash upon delivery.')}}</p>
                                        </div>

                                        <div class="payment-group mt--20">
                                            <p class="mb--15">{{__('words.Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.')}}</p>

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
</div>



 @endsection
@section('scripts')
<script>
    $(function() {
        $("#billing_country").change(function(){
            var element = $(this);
            var myTag = element.val();
            var res= myTag.split(" ");
            $('.shipPricevalue').text(res[1]);
            $('#shipPricevalue').text(res[1]);
                $('.shipPricevalue').val(res[1]);
            $('#shipPricevalue').val(res[1]);
            var totalPrice=$('.total_price').text();
            $('.total_with_shipping').text(parseFloat(res[1])+parseFloat(totalPrice));
        });
    });
</script>
@endsection