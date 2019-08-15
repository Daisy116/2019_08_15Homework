<!DOCTYPE html>
<html lang="en">
<head>
  <title>佈告欄</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h1>佈告欄 <a href="/Bulletin_Board/create" 
        class="btn btn-md btn-success pull-right">
        <span class="glyphicon glyphicon-plus"></span> 新增</a></h1>
        
  <table class="table table-hover">
    <thead>
      <tr>
        <th style="font-size:24px">標題</th>
        <th style="font-size:24px">公告單位</th>
        <th style="font-size:24px">發佈時間</th>
      </tr>
    </thead>

    <tbody>

        @foreach ($bulletinList as $emp)
            <tr>
            <td><a href="/Bulletin_Board_Details.html/{{ $emp ->id}}" style="color:black;">{{$emp->title}}</a></td>            
            <td>{{$emp->department}}</td>
            <td>{{$emp->release_time}}</td>           
            <td>
                <span class="pull-right">
                    <form method="post" action="/Bulletin_Board/{{$emp->id}}">   {{-- 雖然這一行method是post，但後面有加上@method('DELETE')，所以是執行delete!! --}}
                        <a href="/Bulletin_Board/{{$emp->id}}/edit" class="btn btn-xs btn-info"><span class="glyphicon glyphicon-pencil"></span> 修改</a> | 
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-remove"></span> 刪除</button>
                    </form>
                </span>
            </td>
        </tr>
        @endforeach
    
    </tbody>


  </table>
</div>

</body>
</html>