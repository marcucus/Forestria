<?php

namespace App\Controller\Admin;

use App\Entity\Parcours;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Vich\UploaderBundle\Form\Type\VichImageType;
use Vich\UploaderBundle\VichUploaderBundle;

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
            NumberField::new('latitude')->setColumns(8),
            NumberField::new('longitude')->setColumns(8),
            TextareaField::new('imageFile')->hideOnIndex()->setFormType(VichImageType::class)->setColumns(8),
        ];
    }

}
