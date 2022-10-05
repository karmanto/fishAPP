<?php

namespace App\Controllers;

use App\Models\modelAll;

class DataAll extends BaseController
{

    protected $modelAll;

    public function __construct()
    {
        $this->modelAll = new modelAll();
    }

    public function dataFilterTimelapse()
    {
        $a = $this->request->getPost('startTimestamp');
        $b = $this->request->getPost('endTimestamp');
        $showOpt = $this->request->getPost('showOptions');
        $fishermanId = $this->request->getPost('fishermanId');

        $startTimestamp = (int)$a;
        $endTimestamp = (int)$b;

        if ($showOpt == "1") {
            $result = $this->modelAll->filterDate($startTimestamp, $endTimestamp, $fishermanId)->getResult();
        } elseif ($showOpt == "2") {
            $result = $this->modelAll->filterMarker2($startTimestamp, $endTimestamp, $fishermanId)->getResult();
        } elseif ($showOpt == "3") {
            $result = $this->modelAll->filterMarker3($startTimestamp, $endTimestamp, $fishermanId)->getResult();
        } elseif ($showOpt == "4") {
            $result = $this->modelAll->filterMarker4($startTimestamp, $endTimestamp, $fishermanId)->getResult();
        }

        $data = [
            'result' => $result,
            'fishermanId' => $fishermanId
        ];

        return $this->response->setJSON($data);
    }

    public function dataFilterLive()
    {
        $a = $this->request->getPost('startTimestamp');
        $b = $this->request->getPost('endTimestamp');
        $c = $this->request->getPost('lastId');

        $startTimestamp = (int)$a;
        $endTimestamp = (int)$b;
        $lastId = (int)$c;

        $result = $this->modelAll->filterDateLive($startTimestamp, $endTimestamp, $lastId)->getResult();

        $data = [
            'result' => $result
        ];

        return $this->response->setJSON($data);
    }
}
