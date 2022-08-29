<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpDoctorChambersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_doctor_chambers', function (Blueprint $table) {
            $table->id();
             $table->string('doctor_id')->nullable();
             $table->string('chamber_id')->nullable();
             $table->string('year')->nullable();
             $table->string('month')->nullable();
             $table->string('all_month')->nullable()->comment('1=true,0=false');
             $table->string('day')->nullable();
             $table->string('slot_from')->nullable();
             $table->string('slot_to')->nullable();
             $table->string('type')->nullable();
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
        Schema::dropIfExists('mhp_doctor_chambers');
    }
}
