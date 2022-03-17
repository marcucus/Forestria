<?php

namespace App\Controller;

use App\Repository\ParcoursRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FrontController extends AbstractController
{
    #[Route('/', name: 'front', methods: ['GET'])]
    public function index(ParcoursRepository $parcoursRepository, PaginatorInterface $paginator, Request $request): Response
    {
        $parcQuery = $parcoursRepository->findAll();
        $parcours = $paginator->paginate(
            $parcQuery, /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );
        return $this->render('front/index.html.twig', [
            'parcours' => $parcours,
        ]);

    }
}
