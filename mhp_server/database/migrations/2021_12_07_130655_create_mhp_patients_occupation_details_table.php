<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpPatientsOccupationDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_patients_occupation_details', function (Blueprint $table) {
            $table->id();
            $table->string('patients_id')->nullable();
            $table->string('occupation_id')->nullable();
            $table->string('occupation_details')->nullable();
            $table->string('employee_id')->nullable();
            $table->string('year_commented')->nullable();
            $table->string('year_ceased')->nullable();
            $table->string('occupational_hazards_exposer')->nullable();
            $table->string('extra_details')->nullable();
            $table->string('delete_status')->default(0);
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
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
        Schema::dropIfExists('mhp_patients_occupation_details');
    }
}
