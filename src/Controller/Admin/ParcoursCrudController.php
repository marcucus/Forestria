<?php

namespace App\Controller\Admin;

use App\Entity\Parcours;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ParcoursCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Parcours::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('name')->setColumns(8),
            TextField::new('description')->setColumns(8),
        ];
    }

}
