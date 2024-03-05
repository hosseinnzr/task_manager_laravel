<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use  Illuminate\Database\Eloquent\Collection;

class Task extends Model
{
    use HasFactory;

    // public function getRouteKeyName(){
    //     return "slug";
    // }

    protected $fillable = ['title' ,'description' ,'long_description'];
    // protected $guarded = ['secret'];
    public function toggleComplete(){
        $this->completed = !$this->completed;
        $this->save();
    }
}
