@extends('layouts.intapp')
@section('contents')

	<div class="contact-heading wow fadeIn" data-wow-duration="0.5s">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-content-bg wow fadeIn" data-wow-delay="0.75s" data-wow-duration="1s">
                    <div class="row">
                        <div class="heading-content col-md-12">
                            <p style="float: left;font-weight: bold;"><a href="index.html">{{__('words.Homepage')}}</a> / <em> {{__('words.Contact Us')}}</em></p>
                            <h2>{{__('words.Contact')}} <em>{{__('words.Us')}}</em></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class=" map wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
        <iframe src="{{$allcontact->location}}" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	</div>

    <section>
		<div class="contact-content wow fadeIn" data-wow-delay="0.5s" data-wow-duration="1s">
			<div class="container">
				<div class="row" dir="{{(App::isLocale('ar') ? 'rtl' : 'ltr')}}">
					<div class="col-md-8"  style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
						<div class="send-message">
							<div class="sep-section-heading">
								<h2>{{__('words.Send Us')}} <em>{{__('words.Message')}}</em></h2>
							</div>
                            @if(session()->has('success'))
                                <div class="alert alert-success">
                                    {{session()->get('success')}}
                                </div>
                            @endif
                             <form  action="{{ route('contactStore') }}" method="POST" >
                                @csrf
                                <div class="row">
									<div class=" col-md-6 col-sm-6 col-6 mb-3">
										<input type="text" class=" @error('name') is-invalid @enderror" name="name" placeholder="@lang('words.Your name...')" >
										@error('name')
										<div class="error">{{ $message }}</div>
										@enderror
                                    </div>

									<div class="col-md-6 col-sm-6 col-6 mb-3">
										<input type="text" class=" @error('email') is-invalid @enderror" name="email" placeholder="@lang('words.Your email...')" >
										@error('email')
										<div class="error">{{ $message }}</div>
										@enderror
                                    </div>

									<div class="col-md-6 col-sm-6 col-12 mb-3">
										<input type="text" class="@error('phone') is-invalid @enderror" name="phone" placeholder="@lang('words.phone...')"  >
										@error('phone')
										<div class="error">{{ $message }}</div>
										@enderror
									</div>
									<div class="col-md-6 col-sm-6 col-12 mb-3">
										<input type="text" class="@error('subject') is-invalid @enderror" name="subject" placeholder="@lang('words.Subject...')"  >
										@error('subject')
										<div class="error">{{ $message }}</div>
										@enderror
									</div>

								</div>
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<textarea id="message" class="input" name="message" placeholder="@lang('words.Message...')"></textarea>
									</div>
                                </div>
                                <button type="submit" class="btn btn-lg btn-primary" name="submit3">{{__('words.Submit')}}</button>
							</form>
						</div>
					</div>
					<div class="col-md-4"  style="text-align:{{(App::isLocale('ar') ? 'right' : 'left')}};">
						<div class="contact-info">
							<div class="sep-section-heading">
								<h2>@if(app()->getLocale() == 'en') {{__('words.Contact')}}  <em>{{__('words.Informations')}}</em>  @else<em>{{__('words.Informations')}}</em> {{__('words.Contact')}}  @endif</h2>
							</div>
							<div class="info-list">
                                <ul>
                                <li><i class="fas fa-map-marker-alt p-1 mr-1">
                                </i> <span class="align-center">
                                    @if (App::isLocale('ar') )
                                    {{$allcontact->address_ar}}
                                    @else
                                    {{$allcontact->address_en}}
                                    @endif

                                </span></li>
                                <li><i class="fa fa-phone p-1 mr-1"></i><span>{{$allcontact->phone}}</span></li>
								<li>
									@php  $emails = explode(' ', $allcontact->email) ;@endphp
									<ul>
										@foreach($emails as $email)
											<li>
												<div class="row">
													<div class="col-lg-2">
														<i class="fa fa-envelope p-1 mr-1" style=" margin-top: -13px;"></i>
													</div>
													<div class="col-lg-10">
														{{$email}}

													</div>
												</div>
											</li>
										@endforeach
									</ul>
								</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>

@endsection
