<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpLabModulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_lab_modules', function (Blueprint $table) {
            $table->id();
             $table->string('department_id')->nullable();
            $table->string('usual_provider_id')->nullable();
            $table->string('reference_id')->nullable();
            $table->string('date')->nullable();
            $table->string('test_type_id')->nullable();
            $table->string('test_name_id')->nullable();
            $table->string('report')->nullable();
            $table->string('patient_id')->nullable();
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
        Schema::dropIfExists('mhp_lab_modules');
    }
}
