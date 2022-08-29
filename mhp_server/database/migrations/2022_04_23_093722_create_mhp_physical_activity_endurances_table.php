<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpPhysicalActivityEndurancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_physical_activity_endurances', function (Blueprint $table) {
            $table->id();
            $table->string('patient_id')->nullable();
            $table->string('physical_activity_advice_id')->nullable();
            $table->string('endurance_id')->nullable();
            $table->string('value')->nullable();
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
        Schema::dropIfExists('mhp_physical_activity_endurances');
    }
}
