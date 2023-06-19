<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->text('logo');
            $table->text('favicon');
            $table->text('phone')->nullable();
            $table->text('email')->nullable();
            $table->text('home_feature_status');
            $table->text('home_room_total');
            $table->text('home_room_status');
            $table->text('home_testimonial_status');
            $table->text('home_latest_post_total');
            $table->text('home_latest_post_status');
            $table->text('address')->nullable();
            $table->text('copyright')->nullable();
            $table->text('facebook')->nullable();
            $table->text('twitter')->nullable();
            $table->text('linkedin')->nullable();
            $table->text('pinterest')->nullable();
            $table->text('instagram')->nullable();
            $table->text('theme_color_1');
            $table->text('theme_color_2');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
};
