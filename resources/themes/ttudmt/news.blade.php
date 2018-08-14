@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | News')
@section('header')
    @include('theme::partials.news.header')
@endsection
@section('breadcum')
    @include('theme::partials.news.breadcum')
@endsection
@section('content')
    @include('theme::partials.news.content')
@endsection