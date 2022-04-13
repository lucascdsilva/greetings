<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AppController extends AbstractController
{
    #[Route('/', name: 'show_greetings', methods: ['GET'])]
    public function showGreetings()
    {
        return $this->json([
            'msg' => 'greetings'
        ], Response::HTTP_OK);
    }
}
