@extends('layouts.app')

@section('title', 'لیست وظایف')

@section('content')
    <br>
    <div>
        <a href="{{route('tasks.create')}}" class="font-medium text-gray-700 border-2 border-gray-900 rounded-md p-1">اضافه کردن وظیفه جدید</a>
    </div>
    <br>
    @forelse ( $tasks as $task )
        <div>
            <a href="{{route('tasks.show', ['task'=> $task->id])}}" @class(['decoration-8', 'decoration-red-700/50', 'line-through' => $task->completed])><div dit="rtl">- {{ $task->title }}</div></a>
        </div>
    @empty
    <div>there are no tasks</div>
    @endforelse 
    <br>
    @if($tasks->count())
        {{$tasks->links()}}
    @endif
@endsection
