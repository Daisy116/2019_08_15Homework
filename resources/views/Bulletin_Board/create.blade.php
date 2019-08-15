<!DOCTYPE html>
<html lang="en">
<head>
    <title>新增訊息</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">

    <script>
        $(function() {
            $( "#release_time" ).datepicker({dateFormat: "yy-mm-dd"});
        });
    </script>
</head>
<body>

<div class="container">

<form method="post" action="/Bulletin_Board" class="form-horizontal">
@csrf
<fieldset>

<h1>佈告內容</h1>
<hr style="margin-top:7px;border: 0;border-bottom: 2px solid black;">

<p style="text-align: left;color: red">PS : 必填欄位為 '公告標題' 和 '公告單位' ， 其餘欄位皆可空著不填!!</p>
<br>

<div class="form-group">
    <label class="col-md-4 control-label" for="title" 
            style="font-size:24px;padding: 0 10px;">
    公告標題 :
    </label> 

    <div class="col-md-4">

    <input id="title" name="title" type="text" placeholder="" 
            class="form-control input-md" 
            style="font-size:24px;">

    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="department" 
            style="font-size:24px;padding: 0 10px;">
    公告單位 :
    </label>  

    <div class="col-md-4">

    <input id="department" name="department" type="text" placeholder="" 
            class="form-control input-md" style="font-size:24px;">

    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="release_time" 
        style="font-size:24px;padding: 0 10px;">
    日期：
    </label>

    <div class="col-md-4">

    <input id="release_time" name="release_time" type="text"
            class="form-control input-md" >    
    {{-- 遮住日期選擇器(╯‵□′)╯︵┴─┴ --}}
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="position_in" 
        style="font-size:24px;padding: 0 10px;">
    缺額職位 : 
    </label>

    <div class="col-md-4">

    <input id="position_in" name="position_in" type="text"
            class="form-control input-md">
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="quota" 
        style="font-size:24px;padding: 0 10px;">
    所需名額 : 
    </label>

    <div class="col-md-4">

    <input id="quota" name="quota" type="text"
            class="form-control input-md">
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="qualifications" 
        style="font-size:24px;padding: 0 10px;">
    資格條件 :
    </label>

    <div class="col-md-4">

    <textarea class="form-control" rows="4" 
            id="qualifications" name="qualifications"
            style="font-size:20px;"></textarea>
    {{-- <input id="qualifications" name="qualifications" type="text"
            class="form-control input-lg"> --}}
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="email" 
        style="font-size:24px;padding: 0 10px;">
    Email :
    </label>

    <div class="col-md-4">

    <input id="email" name="email" type="text"
            class="form-control input-md">
    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="okOrCancel"></label>
    
    <div class="col-md-8">
    
        <button type="submit" id="okOrCancel" name="okOrCancel" class="btn btn-success">提交</button>
        <label class="btn btn-danger" onclick='goto()'>取消</label>
        
        <script>
        function goto(){
            document.location.href="http://127.0.0.1:8000/";
        } </script>

    </div>
</div>

</fieldset>
</form>


</div>

</body>
</html>