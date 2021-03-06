<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MpSales extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mp_sales', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('party_id');
            $table->string('customers_id')->references('id')->on('customers')->nullable();
            $table->string('gstin')->nullable();
            $table->string('invoice_number')->nullable();
            $table->string('total_amount')->nullable();
            $table->string('due_amount')->nullable();
            $table->timestamp('paid_amount')->nullable();
            $table->string('tax_amount')->nullable();   
            $table->string('payment_type')->nullable();         
            $table->SoftDeletes();
            $table->timestamps();
        });
         Schema::table('mp_sales', function (Blueprint $table) {
          // $table->unsignedInteger('party_id');
              $table->foreign('party_id')->references('id')->on('party_manages')->onDelete('cascade');
    
        });
       
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::create('mp_sales', function (Blueprint $table) {
            //
        });
    }
}
