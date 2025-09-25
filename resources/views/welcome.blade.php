<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Charlesson</title>
    @livewireStyles
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

            /* Fondo elegante en azul marino con un degradado radial */
            background: radial-gradient(circle at top, #0a1f33, #072146, #041322);
            color: #ffffff;
        }

        img {
            width: 70%;
            max-width: 900px;
            margin-bottom: 50px;
            animation: fadeIn 2s ease-in-out;
            filter: drop-shadow(0 6px 18px rgba(0,0,0,0.5));
        }

        a.btn {
            padding: 14px 36px;
            font-size: 1.1rem;
            font-weight: 600;
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            background: linear-gradient(90deg, #004481, #009EE5);
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
            transition: all 0.4s ease;
        }

        a.btn:hover {
            background: linear-gradient(90deg, #009EE5, #004481);
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.4);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <!-- Logo elegante -->
    <img src="{{ asset('charlesson-full-color.png') }}" alt="Charlesson Logo">

    <!-- Botón -->
    <a href="{{ url('/admin/login') }}" class="btn">Acceder al Panel</a>

    @livewireScripts
</body>
</html>
