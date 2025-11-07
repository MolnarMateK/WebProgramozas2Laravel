@extends('layouts.main')

@section('content')

<section>
    <header class="major">
        <h2>Diagram</h2>
    </header>
    <div class="content">
        <p>A ReNew Kft. adatbázisában található gépek megoszlása gyártó szeritn. </p>
        
        <div style="height: 450px; width: 100%; margin-bottom: 2em;"> 
            <canvas id="gyartoDiagram"></canvas>
        </div>
        
        <p>Ez a statisztika segít áttekinteni, mely márkák dominálnak a felújított notebookok kínálatában. A diagram a gép táblában található adatok feldolgozásával jött létre.</p>
        
        <hr>
        
        <h3>Statisztikai Összegzés</h3>
        <p>A diagram azt mutatja, hogy az ASUS és a DELL a leggyakoribb gyártók a kínálatunkban, ami a nagy volumenű felújított állományra utal. A felhasználók a menüben található Adatbázis menüpontban tekintheted mge a részletes terméklistát.</p>
        
    </div>
</section>

@push('scripts')
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const ctx = document.getElementById('gyartoDiagram').getContext('2d');
        const gyartoDiagram = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: {!! json_encode($labels) !!},
                datasets: [{
                    label: 'Gépek száma gyártónként',
                    data: {!! json_encode($values) !!},
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)',
                        'rgba(199, 199, 199, 0.6)',
                        'rgba(83, 109, 254, 0.6)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)',
                        'rgba(199, 199, 199, 1)',
                        'rgba(83, 109, 254, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    });
</script>
@endpush