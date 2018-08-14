@extends('theme::layouts.index')
@section('page_title', setting('site.title').' | Courses')
@section('header')
    @include('theme::partials.course.header')
@endsection
@section('breadcum')
    @include('theme::partials.course.breadcum')
@endsection
@section('content')
    @include('theme::partials.course.content')
@endsection