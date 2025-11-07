@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Processzor Szerkesztése: {{ $processzor->tipus }}</h2>
    </header>
    <div class="content">
        
        <form method="POST" action="{{ route('crud.update', $processzor) }}">
            @csrf
            @method('PUT')
            <div class="row gtr-uniform">
                <div class="col-4 col-12-xsmall">
                    <label for="id">ID (Nem módosítható)</label>
                    <input type="number" name="id" id="id" value="{{ $processzor->id }}" readonly disabled />
                </div>
                <div class="col-4 col-12-xsmall">
                    <label for="gyarto">Gyártó</label>
                    <input type="text" name="gyarto" id="gyarto" value="{{ old('gyarto', $processzor->gyarto) }}" />
                    @error('gyarto')
                        <p style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="col-4 col-12-xsmall">
                    <label for="tipus">Típus</label>
                    <input type="text" name="tipus" id="tipus" value="{{ old('tipus', $processzor->tipus) }}" />
                    @error('tipus')
                        <p style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</p>
                    @enderror
                </div>

                <div class="col-12">
                    <ul class="actions">
                        <li><input type="submit" value="Módosítások mentése" class="primary" /></li>
                        <li><a href="{{ route('crud.index') }}" class="button">Mégse</a></li>
                    </ul>
                </div>
            </div>
        </form>
    </div>
</section>

@endsection