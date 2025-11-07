@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Kapcsolat</h2>
    </header>
    <div class="content">
        <p>Kérdése van? Írjon nekünk üzenetet az alábbi űrlap segítségével.</p>

        @if (session('success'))
            <div class="alert alert-success" style="background-color: #d4edda; color: #155724; padding: 10px; border-radius: 5px; margin-bottom: 20px;">
                {{ session('success') }}
            </div>
        @endif
        
        @if (session('error'))
            <div class="alert alert-error" style="background-color: #f8d7da; color: #721c24; padding: 10px; border-radius: 5px; margin-bottom: 20px;">
                {{ session('error') }}
            </div>
        @endif

        <form method="POST" action="{{ route('kapcsolat.store') }}">
            @csrf
            <div class="row gtr-uniform">
                <div class="col-6 col-12-xsmall">
                    <label for="name">Név</label>
                    <input type="text" name="name" id="name" value="{{ old('name') }}" />
                    @error('name')
                        <p style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="col-6 col-12-xsmall">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" value="{{ old('email') }}" />
                    @error('email')
                        <p style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="col-12">
                    <label for="message">Üzenet</label>
                    <textarea name="message" id="message" rows="6">{{ old('message') }}</textarea>
                    @error('message')
                        <p style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</p>
                    @enderror
                </div>
                <div class="col-12">
                    <ul class="actions">
                        <li><input type="submit" value="Üzenet küldése" class="primary" /></li>
                        <li><input type="reset" value="Alaphelyzet" /></li>
                    </ul>
                </div>
            </div>
        </form>
    </div>
</section>

@endsection