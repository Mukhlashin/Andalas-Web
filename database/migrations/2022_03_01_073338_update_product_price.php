<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateProductPrice extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function($table) {
            $table->integer('price2')->after('price')->nullable();
            $table->integer('price2qty')->after('price2')->nullable();
            $table->integer('price3')->after('price2qty')->nullable();
            $table->integer('price3qty')->after('price3')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function($table) {
            $table->dropColumn('price2');
            $table->dropColumn('price2qty');
            $table->dropColumn('price3');
            $table->dropColumn('price3qty');
        });
    }
}
