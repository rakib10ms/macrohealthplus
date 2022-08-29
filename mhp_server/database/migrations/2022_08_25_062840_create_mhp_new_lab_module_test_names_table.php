<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpNewLabModuleTestNamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_new_lab_module_test_names', function (Blueprint $table) {
            $table->id();
               $table->string("test_group_id")->nullable();

            $table->string("test_category_id")->nullable();
            $table->string("test_name")->nullable();
            $table->string("fee")->nullable();
            $table->string("test_parameter")->nullable();

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
        Schema::dropIfExists('mhp_new_lab_module_test_names');
    }
}
