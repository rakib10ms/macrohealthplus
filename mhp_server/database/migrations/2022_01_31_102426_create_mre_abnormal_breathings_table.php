<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMreAbnormalBreathingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mre_abnormal_breathings', function (Blueprint $table) {
            $table->id();
                $table->string('abnormalbreathing_name')->nullable();
            $table->integer('status_id')->nullable();
            $table->string('selection_criteria')->nullable();
            $table->string('image')->nullable();
            $table->integer('delete_status')->default(0);
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
        Schema::dropIfExists('mre_abnormal_breathings');
    }
}
