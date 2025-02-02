<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Blade;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Blade::directive('loggedin', function () {
            return "<?php if(auth()->check()): ?>";
        });
    
        Blade::directive('endloggedin', function () {
            return "<?php endif; ?>";
        }); 
    }
}
