<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMusculoSketalCarvicalSpinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('musculo_sketal_carvical_spines', function (Blueprint $table) {
            $table->id();
            $table->string('patient_id')->nullable();
            $table->string('posture')->nullable();
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
        Schema::dropIfExists('musculo_sketal_carvical_spines');
    }
}
