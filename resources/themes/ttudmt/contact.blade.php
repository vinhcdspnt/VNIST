@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | Contact')
@section('header')
    @include('theme::partials.contact.header')
@endsection
@section('breadcum')
    @include('theme::partials.contact.breadcum')
@endsection
@section('content')
    @include('theme::partials.contact.content')
@endsection