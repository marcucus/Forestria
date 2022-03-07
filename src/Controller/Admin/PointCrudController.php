<?php

namespace App\Controller\Admin;

use App\Entity\Point;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class PointCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Point::class;
    }


    public function configureFields(string $pageName): iterable
    {
        return [
            NumberField::new('pos')->setColumns(8),
            TextField::new('titre')->setColumns(8),
            TextEditorField::new('text', 'Contenu')->setColumns(8),
            NumberField::new('latitude')->setColumns(8),
            NumberField::new('longitude')->setColumns(8),
            AssociationField::new('parcours','Parcours')->setColumns(8),
        ];
    }

}
