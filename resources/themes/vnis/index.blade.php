@extends('theme::master')
@section('page_title', setting('site.title'))
@section('header')
	@include('theme::partials.header')
@endsection
@section('content')
    @include('theme::partials.top-post')        
    @include('theme::partials.lastest-post-area') 
    {{--@include('theme::partials.reason')
    @include('theme::partials.choose')
    @include('theme::partials.service')
    @include('theme::partials.danhgia') --}}
@endsection
@section('footer')
	@include('theme::partials.footer')
@endsection