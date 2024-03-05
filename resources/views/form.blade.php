@extends('layouts.app')

@section('title', isset($task) ? 'Edit Task' : 'Add Task')

@section('styles')
<style>
    .error-massage{
        color: red;
        font-size: 0.8rem;
    }
</style>
@endsection()

@section('content')

    <form method="POST" action="{{ isset($task) ? route('tasks.update', ['task' => $task->id]) : route('tasks.store')}}" >
        @csrf
        @isset($task)
            @method('PUT')
        @endisset
        <div>
            <label dir="rtl" for="title" class="block mb-2 text-sm font-medium text-gray-900">عنوان :</label>
            <input dir="rtl" type="text" name="title" id="title" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" value="{{ $task->title ?? old('title')}}">
            @error('title')
                <p class="error-massage">{{ $message }}</p>
            @enderror
        </div>
        <br>
        <div>

            
            <label dir="rtl" for="description" class="block mb-2 text-sm font-medium text-gray-900">توضیحات :</label>
            <textarea dir="rtl" name="description" id="description" rows="10" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">{{ $task->description ?? old('description')}}</textarea>

            @error('description')
                <p class="error-massage">{{ $message }}</p>
            @enderror
        </div>
        <br>
        <div>
            <label dir="rtl" for="long_description" class="block mb-2 text-sm font-medium text-gray-900">توضیحات بیشتر : </label>
            <textarea dir="rtl" name="long_description" id="long_description" rows="10" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">{{ $task->long_description ?? old('long_description')}}</textarea>
            @error('long_description')
                <p class="error-massage">{{ $message }}</p>
            @enderror
        </div>
        <br>
        <div>
            <a href="{{ route('tasks.index') }}" class="font-medium text-gray-700 border-2 border-gray-900 rounded-md p-1 bg-zinc-300">← بازگشت به لیست</a>
            <button type="submit">
                @isset($task)
                    <div  class="font-medium text-gray-700 border-2 border-gray-900 rounded-md p-1 bg-zinc-300"> بروز رسانی</div>
                @else
                    <div  class="font-medium text-gray-700 border-2 border-gray-900 rounded-md p-1 bg-zinc-300"> اضافه کردن </div>
                @endisset
            </button>
        </div>
    </form>

@endsection