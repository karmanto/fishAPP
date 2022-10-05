<?php

namespace App\Controllers;

use App\Models\modelGateway;
use App\Models\modelFisherman;
use App\Models\modelAll;

class Home extends BaseController
{
    protected $modelGateway;
    protected $modelFisherman;
    protected $modelAll;

    public function __construct()
    {
        $this->modelGateway = new modelGateway();
        $this->modelFisherman = new modelFisherman();
        $this->modelAll = new modelAll();
    }

    public function index()
    {
        $dataGateway = $this->modelGateway->findAll();
        $dataFisherman = $this->modelFisherman->findAll();

        $data = [
            'dataGateway' => $dataGateway,
            'dataFisherman' => $dataFisherman
        ];

        return view('viewHome', $data);
    }
}
