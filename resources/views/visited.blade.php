<html>
  <head>
    <title>Travel List</title>
  </head>

  <body>
    <h2>Places I've Already Been To</h2>
    <ul>
      @foreach ($visited as $place)
      <li>{{ $place->name }}</li>
      @endforeach
    </ul>
    <br>
    <a href="{{ url('') }}"><- Back Home</a>

  </body>
</html>
