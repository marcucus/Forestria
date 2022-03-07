<?php

namespace App\Controller;

use App\Repository\PointRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/point')]
class PointController extends AbstractController
{
    #[Route('/', name: 'point_index', methods: ['GET'])]
    public function index(PointRepository $pointRepository, PaginatorInterface $paginator, Request $request): Response
    {
        $pquery = $pointRepository->findAll();
        $points = $paginator->paginate(
            $pquery, /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );
        return $this->render('point/index.html.twig', [
            'points' => $points,
        ]);
    }
}
