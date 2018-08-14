@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | About')
@section('header')
    @include('theme::partials.about.header')
@endsection
@section('breadcum')
    @include('theme::partials.about.breadcum')
@endsection
@section('content')
    @include('theme::partials.about.content')
@endsection