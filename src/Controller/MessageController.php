<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MessageController extends AbstractController
{
    #[Route('/message', name: 'app_message')]
    public function index(Request $request)
{
    $form = $this->createForm(MessageType::class);
    
    $form->handleRequest($request);
    
    if ($form->isSubmitted() && $form->isValid()) {
        
        
        $this->addFlash('success', 'Le message a été envoyé avec succès!');
        
        return $this->redirectToRoute('app_home');
    }
    
    return $this->render('message/index.html.twig', [
        'form' => $form->createView(),
    ]);
}

}
