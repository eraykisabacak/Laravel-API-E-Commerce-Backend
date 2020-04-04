<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('adres', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('customer_id');
            $table->boolean('status');
            $table->string('type');
            $table->string('name');
            $table->string('address');
            $table->string('city');
            $table->string('tc_no');
            $table->string('mobile');
            $table->string('phone');
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
        Schema::dropIfExists('adres');
    }
}
