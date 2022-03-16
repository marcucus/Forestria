<?php

namespace App\Controller\Admin;

use App\Entity\Parcours;
use App\Entity\Point;
use App\Repository\ParcoursRepository;
use Doctrine\DBAL\Types\FloatType;
use Doctrine\ORM\EntityManager;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\Field;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Vich\UploaderBundle\Form\Type\VichImageType;

class PointCrudController extends AbstractCrudController
{

    public static function getEntityFqcn(): string
    {
        return Point::class;
    }

    public function configureFields(string $pageName): iterable
    {
        yield NumberField::new('pos', 'Position dans le parcours')->setColumns(8);
        yield TextField::new('titre')->setColumns(8);
        yield TextEditorField::new('text', 'Contenu')->setColumns(8);
        yield Field::new('latitude')->setColumns(8);
        yield Field::new('longitude')->setColumns(8);
        yield AssociationField::new('parcours')->setColumns(8);
        yield TextareaField::new('imageFile', 'Image du point')->hideOnIndex()->setFormType(VichImageType::class)->setColumns(8);
        yield TextareaField::new('soundFile', 'Fichier son du point')->hideOnIndex()->setFormType(VichImageType::class)->setColumns(8);
    }
}
