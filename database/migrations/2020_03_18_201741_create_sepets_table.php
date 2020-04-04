<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSepetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sepets', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->boolean('status');
            $table->integer('customer_id');
            $table->integer('total_amount');
            $table->integer('shipping_address_id');
            $table->integer('billing_address_id');
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
        Schema::dropIfExists('sepets');
    }
}
