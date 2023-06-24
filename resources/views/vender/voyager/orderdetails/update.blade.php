
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
        <a href="#">@lang('words.Update Order Details')</a>
    </h1>
@stop

    @section('content')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-header">
                            <form action="{{route('edit.orderdetails')}}" method="POST">
                                @csrf
                                <div class="row">
                                    <input type="hidden" name="id" value="{{$orderdetail->id}}">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label for="product_id">@lang('words.status')</label>
                                            <select name="product_id" class="form-control">
                                                <option value="">Choose The the Product</option>
                                                @foreach (\App\Product::all() as $product)
                                                    <option value="{{$product->id}}" @php if($orderdetail->product_id==$product->id) echo 'selected'; @endphp>
                                                            @if(App::isLocale('ar'))
                                                                    {{$product->ar_name}}
                                                            @else
                                                                    {{$product->name}}
                                                            @endif
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label for="status">@lang('words.Quentity')</label>
                                            <input type="number" name="quentity" class="form-control" value="{{$orderdetail->quentity}}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                            <input type="submit" value=@lang('words.edit') class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>

    @endsection
