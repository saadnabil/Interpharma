
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
        <i class="voyager-person"></i>
        @lang('words.clients')
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
                            <th style="width:10%">@lang('words.first_name')</th>
                            <th style="width:10%">@lang('words.last_name')</th>
                            <th style="width:10%">@lang('words.phone')</th>
                            <th style="width:20%">@lang('words.street_address')</th>
                            <th style="width:10%">@lang('words.city')</th>
                            <th style="width:10%">@lang('words.government')</th>
                            <th style="width:10%">@lang('words.field')</th>
                            <th style="width:20%">@lang('words.action')</th>
                        </tr>
                    </thead>
                    <tbody>
                    @if($clients->count() >0 )
                    @forelse($clients as $client)
                            <tr>
                                <td style="width:5%">{{$client->id}}</td>
                                <td style="width:10%">{{$client->first_name}}</td>
                                <td style="width:10%">{{$client->last_name}}</td>
                                <td style="width:10%">{{$client->phone}}</td>
                                <td style="width:20%">{{$client->street_address}}</td>
                                <td style="width:10%">{{$client->city}}</td>
                                <td style="width:10%">{{$client->government}}</td>
                                <td style="width:10%">
                                    @if(App::isLocale('ar'))
                                       {{$client->country->name_ar ?? ''}}
                                    @else
                                        {{$client->country->name_en ?? ''}}
                                    @endif
                                </td>
                                <td >
                                    <a href="{{route('client.deletecl',$client->id)}}" class="btn btn-danger">@lang('words.delete')</a>
                                    <a href="{{route('order.filter',$client->id)}}" class="btn btn-success">@lang('words.order')</a>
                                </td>
                            </tr>
                    @empty
                    
                    @endforelse
                    @endif
                    </tbody>
                </table>
            </div>
            {{$clients->links()}}
        </div>
        </div>
        </div>
        </div>

    @endsection
