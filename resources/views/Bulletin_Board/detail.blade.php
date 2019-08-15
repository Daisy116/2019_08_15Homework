<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>詳細訊息</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<script src="/scripts/jquery-1.9.1.min.js"></script>
<script src="/scripts/jquery.mobile-1.3.2.min.js"></script>
<link rel="stylesheet" href="/scripts/jquery.mobile-1.3.2.min.css" />
<link rel="stylesheet" href="/styles.css" />
</head>
<body>
    <div class="action-list"></div>
    <div data-role="page" data-add-back-btn="true" data-theme="c">
        <div data-role="header">
            <h1>詳細內容</h1>
        </div>
        
        @foreach ($bulletinList as $emp)
            @if ($emp->id == $emp2->id)
                <div data-role="content">
                    {{-- <img src="/images/{{ $emp->picture }}" class="employee-pic" width="100" /> --}}
                    <div class="employee-details">
                        <h1>{{ $emp->title }}</h1>
                        <h2>發布單位 : {{ $emp->department }}</h2>
                        <p>發布時間 : {{ $emp->release_time }}</p>
                    </div>
        
                    <ul data-role="listview" data-inset="true" class="action-list" width:auto>
                        <li>
                            <h3 style="font-size:24px;display:inline-block">缺額職位 : </h3>
                            <p style="font-size:24px;display:inline-block">&nbsp;&nbsp;&nbsp;{{ $emp->position_in }}</p>
                        </li>

                        <li>
                            <h3 style="font-size:24px;display:inline-block">所需名額 : </h3>
                            <p style="font-size:24px;display:inline-block">&nbsp;&nbsp;&nbsp;{{ $emp->quota }}</p>
                        </li>

                        <li>
                            <h3 style="font-size:24px;">資格條件 : </h3>
                            <pre style="font-size:18px;overflow:scroll">{{ $emp->qualifications }}</pre>
                        </li>

                        <li>
                            <h3 style="font-size:24px;display:inline-block">Email : </h3>
                            <p style="font-size:24px;display:inline-block">&nbsp;&nbsp;&nbsp;{{ $emp->email }}</p>
                        </li>
                    </ul>
                </div>
            @endif   
        @endforeach

    </div>
</body>
</html>