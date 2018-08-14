@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | Notifi')
@section('header')
    @include('theme::partials.notifi.header')
@endsection
@section('breadcum')
    @include('theme::partials.notifi.breadcum')
@endsection
@section('content')
    @include('theme::partials.notifi.content')
@endsection