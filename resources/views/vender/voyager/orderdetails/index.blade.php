
@extends('voyager::master')
@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        h3{
            color:red;
            font-size:50px;
        }
        table{
            background-color:#ddd;
        }
        table thead tr th
{
    color:black;
    font-weight: bold;
    font-size: 18px;

}

    </style>
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-archive"></i>
        @lang('words.orderdetails')
    </h1>
@stop

    @section('content')
        <div class="row">
        <div class="col-md-12">
        <div class="panel panel-bordered">
        <div class="panel-header">
            @if(session()->has('success'))
                <div class="alert alert-warning">
                    {{session()->get('success')}}
                </div>
            @endif

        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table id="dataTable" class="table table-hover">
                    <thead>
                        <tr>
                            <th style="width:5%">@lang('words.id')</th>
                            <th style="width:10%">@lang('words.Order_id')</th>
                            <th style="width:20px">@lang('words.product')</th>
                            <th style="width:10%">@lang('words.Price')</th>
                            <th style="width:10%">@lang('words.quentity')</th>
                            <th style="width:10%">@lang('words.totalprice')</th>
                            <th style="width:20%">@lang('words.action')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($orderdetails as $orderd)
                            <tr>
                                <td style="width:5%">{{$orderd->id}}</td>
                                <td style="width:10%">{{$orderd->order_id}}</td>
                                <td style="width:10%">
                                @php $product=\App\Product::find($orderd->product_id); @endphp
                                @if(App::isLocale('ar'))
                                    {{$product->ar_name}}
                                @else
                                    {{$product->name}}
                                @endif
                                </td>
                                <td style="width:10%">{{$orderd->price}} @lang('words.L_E')</td>
                                <td style="width:10%">{{$orderd->quentity}}</td>
                                <td style="width:10%">{{$orderd->quentity * $orderd->price}} @lang('words.L_E')</td>

                                <td >
                                    <a href="{{route('orderdetails.delete',$orderd->id)}}" class="btn btn-danger">@lang('words.delete')</a>
                                    <a href="{{route('update.orderdetails',$orderd->id)}}" class="btn btn-primary">@lang('words.update')</a>

                                </td>
                            </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            {{$orderdetails->links()}}
        </div>
        </div>
        </div>
        </div>

    @endsection
