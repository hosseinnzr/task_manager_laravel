@extends('layouts.app')


    {{-- back --}}
    <a href="{{ route('tasks.index') }}" class="font-medium text-gray-700 border-2 border-gray-900 rounded-md p-1 bg-zinc-300">← بازگشت به لیست</a>
    <br><br>
<div dir="rtl">عنوان : </div> 
@section('title', $task->title)
<br>
@section('content')
<br>
<div dir="rtl">توضیحات : </div> 
<p dir="rtl">{{$task->description}}</p>
<br>
<div dir="rtl">توضیحات بیشتر : </div> 
@if ($task->long_description)
    <p dir="rtl">{{$task->long_description}}</p>
@endif
<br>
<p class="mb-4 text-sm text-slate-500">created {{$task->created_at->diffForHumans()}} • updated {{$task->updated_at->diffForHumans()}} • 
    @if($task->completed)
        <span class="font-medium text-green-500">تمام شده</span>
    @else
        <span class="font-medium text-red-500">نا تمام</span>
    @endif
</p>
<br>
<div class="flex gap-2">
    {{-- completed or not completed --}}
    <form method="POST" action="{{ route('tasks.toggle-complete', ['task' => $task]) }}">
        @csrf
        @method('PUT')
        <button type="submit">
           <div class="font-medium text-gray-700 rounded-md p-2 bg-cyan-400 bg-green-600"> تبدل به {{ $task->completed ? 'نا تمام' : 'تمام شده'}}</div>
        </button>
    </form>

    {{-- edit --}}
    <form method="GET" action="{{ route('tasks.edit', ['task' => $task->id])}}" >
        <button type="submit" class="font-medium text-gray-700 rounded-md p-2 bg-cyan-400">ویرایش</button>
    </form>

    {{-- delete --}}
    <form method="POSt" action="{{ route('tasks.desrtoy', ['task' => $task->id])}}">
        @csrf
        @method('DELETE')
        <button type="submit" class="font-medium text-gray-700 rounded-md p-2 bg-red-600">حذف</button>
    </form>
</div>

@endsection
