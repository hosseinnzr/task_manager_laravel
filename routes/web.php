<?php

use App\Models\Task;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Requests\TaskRequest;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// show index
Route::get('/', function(){
    return redirect()->route('tasks.index');
});


// show single task
Route::get('/tasks', function () {
  return view('index', [
    'tasks'=> Task::latest()->paginate(5),
  ]);
})->name('tasks.index');


// show create page
Route::view('/tasks/create', 'create')->name('tasks.create');


// show edit page
Route::get('/tasks/{task}/edit', function (Task $task) {    
  return view('edit', [
    'task'=> $task
  ]);
})->name('tasks.edit');


// show task
Route::get('/tasks/{task}', function (Task $task) {    
  return view('show', [
    'task'=> $task
  ]);
})->name('tasks.show');


// action add new task 
Route::post('/tasks', function (TaskRequest $request) {
  $task = Task::create($request->validated());

  notify()->success('Task create successfully!');

  return redirect()->route('tasks.show', ['task'=> $task->id])
    ->with('success', true);

})->name('tasks.store');


// action edit task
Route::put('/tasks/{task}', function (TaskRequest $request, Task $task) {
  $task->update($request->validated());

  notify()->success('edit task successfully!');

  return redirect()->route('tasks.show', ['task'=> $task->id])
    ->with('success', true);

})->name('tasks.update');


// action delete task
Route::delete('/tasks/{task}', function (Task $task){
  $task->delete();

  notify()->success('delete task successfully');

  return redirect()->route('tasks.index')
    ->with('success', true);
})->name('tasks.desrtoy');


// change status
Route::put('/tasks/{task}/toggle-complete', function (Task $task) {
  $task->toggleComplete();

  notify()->success('Task status update succesfully!');

  return redirect()->back()->with('success',true);
})->name('tasks.toggle-complete');


// not found
Route::fallback(function () {
    return 'still got somewhere';
});
