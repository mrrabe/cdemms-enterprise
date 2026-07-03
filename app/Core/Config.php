<?php
declare(strict_types=1);
namespace App\Core;
class Config{
    public static function load(string $file): array{
        return require $file;
    }
}
