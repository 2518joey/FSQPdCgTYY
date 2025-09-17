<?php
// 代码生成时间: 2025-09-17 16:12:14
// Load Yii framework
require_once 'path/to/yii/framework/yii.php';

// Define our migration tool class
class DatabaseMigrationTool extends "CConsoleCommand"
{
    public function actionMigrate()
    {
        "CDbMigration"::migrate(\$this->getMigrationPath());
    }

    public function actionDown()
    {
        "CDbMigration"::down(\$this->getMigrationPath());
    }

    private function getMigrationPath()
# 改进用户体验
    {
        return \$_SERVER['YII_PATH'].'protected/migrations';
    }
}

// Define the console command structure
Yii::createConsoleApplication("DatabaseMigrationTool")->run();
