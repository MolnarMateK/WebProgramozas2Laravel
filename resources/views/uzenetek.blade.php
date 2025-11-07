@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Beérkezett Üzenetek</h2>
    </header>
    <div class="content">
        <p>Az oldalon keresztül küldött üzenetek listája, fordított időrendi sorrendben.</p>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Dátum</th>
                        <th>Név</th>
                        <th>Email</th>
                        <th>Üzenet</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($messages as $message)
                        <tr>
                            <td>{{ $message->created_at->format('Y-m-d H:i') }}</td>
                            <td>{{ $message->name }}</td>
                            <td>{{ $message->email }}</td>
                            <td>{{ $message->message }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4">Jelenleg nincsenek üzenetek az adatbázisban.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</section>

@endsection