@extends('layouts.dash')

@section('header')
    User Management
@endsection

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('admin') }}">Dashboard</a></li>
    <li class="breadcrumb-item active">User Create</li>
@endsection

@section('content')
    <div class="col-12">
        <div class="card">
            <div class="card-header p-0">
                <h3 class="card-title p-3">Create User</h3>
            </div>
            <div class="card-body">
                <form class="form-horizontal" action="{{ route('users.store') }}" method="POST">
                    @csrf
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName" placeholder="Name" name="name" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputNik" class="col-sm-2 col-form-label">NIK</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputNik" placeholder="NIK" name="nik" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputTypeSchool" class="col-sm-2 col-form-label">Lembaga</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="type_school_id" id="inputTypeSchool" required>
                                @foreach ($type_schools->filter(function ($type_school) {
                                    return $type_school->name === 'SMK'; // Hanya ambil yang SMK
                                }) as $type_school)
                                    <option value="{{ $type_school->id }}">{{ $type_school->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputGradeAt" class="col-sm-2 col-form-label">Tahun Angkatan</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputGradeAt" placeholder="Tahun Angkatan" name="grade_at" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                            <button type="reset" class="btn btn-warning">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
