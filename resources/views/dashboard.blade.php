@extends('template')

@section('title', 'Dashboard')

@section('page', 'Dashboard')

@section('content')
<div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-four">
                            <div class="stat-icon dib">
                                <i class="fa fa-university text-muted"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-heading font-weight-bold">P. Ruang</div>
                                    <div class="stat-text">Total : {{ $count['ruang'] }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-four">
                            <div class="stat-icon dib">
                                <i class="fa fa-wrench text-muted"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-heading font-weight-bold">P. Alat</div>
                                    <div class="stat-text">Total : {{ $count['alat'] }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-four">
                            <div class="stat-icon dib">
                                <i class="fa fa-laptop text-muted"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-heading font-weight-bold">Jasa Installasi</div>
                                    <div class="stat-text">Total : {{ $count['installasi'] }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.col-->

            <div class="col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-four">
                            <div class="stat-icon dib">
                                <i class="fa fa-print text-muted"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-heading font-weight-bold">Jasa Print</div>
                                    <div class="stat-text">Total : {{ $count['print'] }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.col-->
@endsection