<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
</head>
<body>
    <a href="{{route('news.create')}}">Agregar Noticia</a>
    <h1>Noticias</h1>
    @if(Session::has('exito'))
    <p>{{Session::get('exito')}}</p>
    @endif

    @if(Session::has('error'))
    <p>{{Session::get('error')}}</p>
    @endif
    <table>
        <thead>
            <tr>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Fecha</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody>

        @foreach($noticias as $noticia)
            <tr>
                <td>{{$noticia->titulo}}</td>
                <td>{{$noticia->autor}}</td>
                <td>{{$noticia->fecha}}</td>
<td>
    <form method="post" action="{{route('news.destroy', $noticia->id)}}">
        @csrf
        @method('delete')
        <a href={{route('news.edit', $noticia->id)}}"> 
        Editar
        </a>
        <button type="submit">Eliminar</button>
    </form>
</td>

        @endforeach
        </tbody>

    </table>
</body>
</html>