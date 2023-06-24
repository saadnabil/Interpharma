
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
        @if(App::isLocale('ar'))
            <i class="voyager-warning"></i>
        @else
            <i class="voyager-basket"></i>
        @endif
        @lang('words.order')
    </h1>
@stop

    @section('content')
        <div class="row">
        <div class="col-md-12">
        <div class="panel panel-bordered">
        <div class="panel-header">
            <div>
                <form action="{{route('orders.date.filter')}}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-md-2">
                                <label for="end_date">@lang('words.from')</label>
                                <input type="date" class="form-control" name="start_date" value="{{old('start_date')}}">
                        </div>
                        <div class="col-md-2">
                                <label for="end_date">@lang('words.to')</label>
                                <input type="date" name="end_date" class="form-control" value="{{old('end_date')}}">
                        </div>
                        <div class="col-md-2">
                            <label for="status">@lang('words.chose the status')</label>
                            <select name="status" class="form-control">
                                <option value="">@lang('words.chose the status')</option>
                                <option value="0">@lang('words.not confirm')</option>
                                <option value="1">@lang('words.confirm')</option>
                            </select>
                        </div>
                        <div class="col-md-1">
                                <label for="submit"></label>
                                <input type="submit" value="@lang('words.search')" class="btn btn-block btn-primary">
                        </div>
                    </div>
                </form>
            </div>
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
                            <th style="width:10%">@lang('words.client')</th>
                            <th style="width:10%">@lang('words.status')</th>
                            <th style="width:10%">@lang('words.Shipping')</th>
                            <th style="width:10%">@lang('words.productPrice')</th>
                            <th style="width:10%">@lang('words.totalprice')</th>
                            <th style="width:10%">@lang('words.date')</th>
                            <th style="width:20%">@lang('words.action')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($orders as $order)
                            <tr>
                                <td style="width:5%">{{$order->id}}</td>
                                <td style="width:10%"><a href="{{route('client_filter',$order->client_id)}}">{{$order->client->first_name}} {{$order->client->last_name}}</a></td>
                                <td style="width:10%">
                                   @if($order->status==0)
                                      <span style="color:red">@lang('words.not confirm')</span>
                                   @else
                                        <span style="color:blue">@lang('words.confirm')</span>
                                   @endif
                                </td>
                                <td style="width:5%">{{$order->shipPrice}} @lang('words.L_E')</td>
                                <td style="width:5%">{{$order->total_price}} @lang('words.L_E')</td>
                                <td style="width:5%">{{$order->shipPrice+$order->total_price}} @lang('words.L_E')</td>
                                <td style="width:5%">{{$order->created_at}}</td>
                                <td >
                                    <a href="{{route('order.deletedel', $order->id)}}" class="btn btn-danger">@lang('words.delete')</a>
                                    <a href="{{route('updateOrders',$order->id)}}" class="btn btn-primary">@lang('words.update')</a>
                                    <a href="{{route('orderdetails.filter',$order->id)}}" class="btn btn-success">@lang('words.Orders Details')</a>
                                </td>
                            </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            {{$orders->links()}}
        </div>
        </div>
        </div>
        </div>

    @endsection
