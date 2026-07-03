<?php
declare(strict_types=1);
namespace App\Core;
class Container{
    private array $items=[];
    public function set(string $id,mixed $value):void{$this->items[$id]=$value;}
    public function get(string $id):mixed{return $this->items[$id]??null;}
}
