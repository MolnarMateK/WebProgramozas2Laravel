@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Notebook Adatbázis</h2>
    </header>
    <div class="content">
        <p>Az adatbázisban található összes, gyárilag felújított notebook. A lista a 3 tábla (`gep`, `processzor`, `oprendszer`) összekapcsolásával jött létre.</p>
        
        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Gyártó</th>
                        <th>Típus</th>
                        <th>Processzor</th>
                        <th>Memória (MB)</th>
                        <th>Merevlemez (GB)</th>
                        <th>Op. Rendszer</th>
                        <th>Ár (Ft)</th>
                        <th>Készlet (db)</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($gepek as $gep)
                        <tr>
                            <td>{{ $gep->gyarto }}</td>
                            <td>{{ $gep->tipus }}</td>
                            
                            <td>{{ $gep->processzor->tipus ?? 'N/A' }}</td>
                            
                            <td>{{ $gep->memoria }}</td>
                            <td>{{ $gep->merevlemez }}</td>

                            <td>{{ $gep->oprendszer->nev ?? 'Nincs' }}</td>

                            <td>{{ number_format($gep->ar, 0, ',', ' ') }} Ft</td>
                            <td>{{ $gep->db }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="8">Jelenleg nincsenek adatok az adatbázisban.</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</section>

@endsection