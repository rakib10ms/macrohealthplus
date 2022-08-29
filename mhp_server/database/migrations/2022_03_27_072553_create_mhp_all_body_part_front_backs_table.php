<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpAllBodyPartFrontBacksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_all_body_part_front_backs', function (Blueprint $table) {
            $table->id();
            $table->string('AllBodyPartFrontBack_name')->nullable();
            $table->integer('delete_status')->default(0); 
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
        Schema::dropIfExists('mhp_all_body_part_front_backs');
    }
}