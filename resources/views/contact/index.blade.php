@section('title', 'Contact')

@extends('layouts.default')

@extends('layouts.navbar')

@section('content')

<section class="ftco-section" >
      <div class="container hero" >
        <div class="row justify-content-center contact_us" style="padding-top: 20px; padding-bottom: 280px">
          <div class="col-lg-6 col-md-6 col-sm-12" >
            <div class="row" >
              <p class="heading" >Contact details</p>
              <span class="heading1">Telephone or FAX </span>
              <p class="heading2">(021) 7726 6503</p>
            </div>
            <div class="row"  style="margin-top: 55px">
              <div class="col-md-6 col-sm-6 contact_details">
                <a href="" class="button icon1"
                ><i class="fas fa-map-marker-alt"></i></a>
                <h3 class="heading4">Location</h3>
                <p class="heading3">11665 Fuqua ST Suite F 610 Houston, Texas 77034</p>
              </div>
              <div class="col-md-6 col-sm-6 contact_details">
                <a href="" class="button icon1"
                ><i class=""><i class="fas fa-mobile-alt"></i></i></a>
                <h3 class="heading4">Call Us</h3>
                <p class="heading3">+1 (713) 598 0728</p>
              </div>
              <div class="col-md-6 col-sm-6 contact_details" style=" margin-top: 60px;">
                <a href="" class="button icon1"
                ><i class="far fa-envelope"></i></i></a>
                <h3 class="heading4">Write to Us</h3>
                <p class="heading3">admin@andalas.us
               </p>
              </div>
              <div class="col-md-6 col-sm-6 contact_details" style=" margin-top: 60px;">
                <a href="" class="button icon1"
                ><i class="far fa-clock"></i></a>
                <h3 class="heading4">Working Hours</h3>
                <p class="heading3">Monday - Friday: 9am to 5pm
                </p>
              </div>
            </div>
            <div class="row">
              <i class="fa-brands fa-instagram"></i>
            </div>
          </div>

          <div class="col-lg-6 col-md-6 col-sm-12 have">
            <div class="row">
              <h1 class="heading" style="color: #517061">Have a question?</h1>
            </div>
            <form action="{{ route('feedback.store') }}" method="POST">
            {{ csrf_field()}}
            <div class="row heading1">
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Your name</label>
                @if (blank($data))
                <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="Enter your Name">
                @else
                <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="{{ $data->name }}">
                @endif
              </div>
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Your email address</label>
                @if (blank($data))
                <input type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="Enter your Name">
                @else
                <input type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="{{ $data->email }}">
                @endif
              </div>
              <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Subject</label>
                <input type="text" name="subject" class="form-control" id="exampleFormControlInput1" placeholder="Enter your Subject">
              </div>
              <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Your message</label>
                <textarea type="text" name="message" class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Enter your Message"></textarea>
              </div>
              <div class="mb-3">
              <button type="submit" class="btn btn-success" style="background-color:#517061">Submit Message</button>
              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    @include('layouts.footer')

    @endsection