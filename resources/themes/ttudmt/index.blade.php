@extends('theme::layouts.index')
@section('page_title', setting('site.title'))
@section('header')
    @include('theme::partials.header')
@endsection
@section('content')
    @include('theme::partials.keysuccess')        
    @include('theme::partials.khoahoc') 
    @include('theme::partials.reason')
    @include('theme::partials.choose')
    @include('theme::partials.service')
    @include('theme::partials.danhgia')
@endsection


