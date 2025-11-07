@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Processzorok Kezelése (CRUD)</h2>
    </header>
    <div class="content">
        <p>A 'processzor' tábla tartalmának kezelése.</p>

        @if (session('success'))
            <div class="alert alert-success" style="background-color: #d4edda; color: #155724; padding: 10px; border-radius: 5px; margin-bottom: 20px;">
                {{ session('success') }}
            </div>
        @endif
        
        <ul class="actions">
            <li><a href="{{ route('crud.create') }}" class="button primary">Új processzor hozzáadása</a></li>
        </ul>

        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Gyártó</th>
                        <th>Típus</th>
                        <th>Műveletek</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($processzorok as $proc)
                        <tr>
                            <td>{{ $proc->id }}</td>
                            <td>{{ $proc->gyarto }}</td>
                            <td>{{ $proc->tipus }}</td>
                            <td>
                                <ul class="actions small">
                                    <li><a href="{{ route('crud.edit', $proc) }}" class="button small">Szerkesztés</a></li>
                                    <li>
                                        <form method="POST" action="{{ route('crud.destroy', $proc) }}" style="display: inline-block;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="button small" onclick="return confirm('Biztosan törli ezt a processzort?')">Törlés</button>
                                        </form>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4">Nincsenek processzorok az adatbázisban.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</section>

@endsection