<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeColumnForParty extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('party_manages', function (Blueprint $table) {
              // $table->increments('id');
            $table->string('party_name')->change()->nullable();
            $table->string('mob_num')->change()->nullable();
            $table->string('address')->change()->nullable();
            $table->string('email')->change()->nullable();
            $table->string('nature_of_busines')->change()->nullable();            
            // $table->SoftDeletes();
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('party_manages', function (Blueprint $table) {
            //
        });
    }
}
