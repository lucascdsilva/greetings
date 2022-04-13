<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class AppController extends AbstractController
{
    public function index()
    {
        return $this->json([
            'msg' => 'greetings'
        ], Response::HTTP_OK);
    }
}
