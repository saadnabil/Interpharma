
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

    </style>
@stop

@section('page_header')
<h1 class="page-title">
    @if(App::isLocale('ar'))
    <i class="voyager-warning"></i>
@else
    <i class="voyager-basket"></i>
@endif    @lang('words.update')
    @lang('words.order')
</h1>
@stop

    @section('content')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-header">
                            <form action="{{route('edit.orders')}}" method="POST">
                                @csrf
                                <div class="row">
                                    <input type="hidden" name="id" value="{{$order->id}}">
                                    <div class="form-group">

                                        <div class="col-md-6">
                                            <select name="status" class="form-control">
                                                <option value="">@lang('words.chose the status')</option>
                                                <option value="0" @php if($order->id=='0') echo 'selected'; @endphp>@lang('words.not confirm')</option>
                                                <option value="1" @php if($order->id=='1') echo 'selected'; @endphp>@lang('words.confirm')</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                            <input type="submit" value="@lang('words.update')" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>

    @endsection
