<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpProcedureReportChartsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_procedure_report_charts', function (Blueprint $table) {
            $table->id();
            $table->string("item_numbers")->nullable();
            $table->string("indicateee")->nullable();
            $table->string("proceduree")->nullable();
            $table->string("findings")->nullable();
            $table->string("processs")->nullable();
            $table->string("antibiotics")->nullable();
            $table->string("pathology")->nullable();
            $table->string("discharge")->nullable();
            $table->string("followup")->nullable();
            $table->string("incision")->nullable();
            $table->string("drain")->nullable();
            $table->string("blood_loss")->nullable();
            $table->string("observation")->nullable();
            $table->string("diet")->nullable();
            $table->string("analgesia")->nullable();
            $table->string("dvt_prop")->nullable();
            $table->string("antibiotics_two")->nullable();
            $table->string("post_operative")->nullable();
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
        Schema::dropIfExists('mhp_procedure_report_charts');
    }
}
