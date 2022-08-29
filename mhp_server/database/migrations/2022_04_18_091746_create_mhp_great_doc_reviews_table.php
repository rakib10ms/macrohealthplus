<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMhpGreatDocReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mhp_great_doc_reviews', function (Blueprint $table) {
            $table->id();
             $table->string('review_name_id')->nullable();
             $table->string('review_limit')->nullable();
             $table->string('review_type')->nullable();
             $table->string('review_date')->nullable();
             $table->string('review_other')->nullable();
             $table->string('reminder_status')->nullable();
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
        Schema::dropIfExists('mhp_great_doc_reviews');
    }
}
