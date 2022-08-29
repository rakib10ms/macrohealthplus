<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpMedicationChartPartThreeAllTablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_medication_chart_part_three_all_tables', function (Blueprint $table) {
            $table->id();
            $table->string('duration5')->nullable();
            $table->string('qty5')->nullable();
            $table->string('tick_if_slow_checkbox_part3')->nullable();
            $table->string('continue_on_discharge_radio_part3')->nullable();
            $table->string('dispense_radio_part3')->nullable();
            $table->string('patient_id')->nullable();
            $table->string('doctor_id')->nullable();
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
        Schema::dropIfExists('mhp_medication_chart_part_three_all_tables');
    }
}
