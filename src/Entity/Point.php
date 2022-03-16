<?php

namespace App\Entity;

use App\Repository\PointRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use DateTimeInterface;

#[ORM\Entity(repositoryClass: PointRepository::class)]
/**
 * @Vich\Uploadable
 */
class Point
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer', unique:true)]
    private $id;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $titre;

    #[ORM\Column(type: 'integer')]
    private $pos;

    #[ORM\Column(type: 'float')]
    private $latitude;

    #[ORM\Column(type: 'float')]
    private $longitude;

    #[ORM\Column(type: 'text', nullable: true)]
    private $text;

    #[ORM\Column(type: "string",length: 255, nullable: true)]
    private $imageName;

    #[ORM\Column(type: "integer", nullable: true)]
    private $imageSize;

    #[ORM\Column(type: 'datetime_immutable', nullable: true)]
    private $updatedAt;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="point_images", fileNameProperty="imageName", size="imageSize")
     *
     * @var File|null
     */
    private $imageFile;

    #[ORM\Column(type: "string",length: 255, nullable: true)]
    private $soundName;

    #[ORM\Column(type: "integer", nullable: true)]
    private $soundSize;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="point_sound", fileNameProperty="soundName", size="soundSize")
     *
     * @var File|null
     */
    private $soundFile;

    #[ORM\Column(type: 'text', nullable: true)]
    private $url;

    #[ORM\ManyToOne(targetEntity: Parcours::class, inversedBy: "id")]
    private $parcours;

    public function __construct()
    {
        $this->updatedAt = new \DateTimeImmutable();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPos(): ?int
    {
        return $this->pos;
    }

    public function setPos(int $pos): self
    {
        $this->pos = $pos;

        return $this;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getLatitude(): ?string
    {
        return $this->latitude;
    }

    public function setLatitude(string $latitude): self
    {
        $this->latitude = $latitude;

        return $this;
    }

    public function getLongitude(): ?string
    {
        return $this->longitude;
    }

    public function setLongitude(string $longitude): self
    {
        $this->longitude = $longitude;

        return $this;
    }

    public function getText(): ?string
    {
        return $this->text;
    }

    public function setText(?string $text): self
    {
        $this->text = $text;

        return $this;
    }

    /**
     * If manually uploading a file (i.e. not using Symfony Form) ensure an instance
     * of 'UploadedFile' is injected into this setter to trigger the update. If this
     * bundle's configuration parameter 'inject_on_load' is set to 'true' this setter
     * must be able to accept an instance of 'File' as the bundle will inject one here
     * during Doctrine hydration.
     *
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile|null $imageFile
     */
    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;

        if (null !== $imageFile) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updatedAt = new \DateTimeImmutable();
        }
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    public function setImageName(?string $imageName): void
    {
        $this->imageName = $imageName;
    }

    public function getImageName(): ?string
    {
        return $this->imageName;
    }

    public function setImageSize(?int $imageSize): void
    {
        $this->imageSize = $imageSize;
    }

    public function getImageSize(): ?int
    {
        return $this->imageSize;
    }

    public function getUpdatedAt(): ?\DateTimeImmutable
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(\DateTimeImmutable $updatedAt): self
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    /**
     * If manually uploading a file (i.e. not using Symfony Form) ensure an instance
     * of 'UploadedFile' is injected into this setter to trigger the update. If this
     * bundle's configuration parameter 'inject_on_load' is set to 'true' this setter
     * must be able to accept an instance of 'File' as the bundle will inject one here
     * during Doctrine hydration.
     *
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile|null $soundFile
     */
    public function setSoundFile(?File $soundFile = null): void
    {
        $this->soundFile = $soundFile;

        if (null !== $soundFile) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updatedAt = new \DateTimeImmutable();
        }
    }

    public function getSoundFile(): ?File
    {
        return $this->soundFile;
    }

    public function setSoundName(?string $soundName): void
    {
        $this->soundName = $soundName;
    }

    public function getSoundName(): ?string
    {
        return $this->soundName;
    }

    public function setSoundSize(?int $soundSize): void
    {
        $this->soundSize = $soundSize;
    }

    public function getSoundSize(): ?string
    {
        return $this->soundSize;
    }

    public function setUrl(?string $url): void
    {
        $this->url = $url;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    /**
     * @return Collection|Parcours[]
     */
    public function getParcours(): ?Parcours
    {
        return $this->parcours;
    }

    public function getIdParcours(): ?Parcours
    {
        return $this->id;
    }

    function setParcours($parcours)
    {

        $this->parcours = $parcours;

        return $this;
    }

    public function addParcours(Parcours $parcours): self
    {
        if (!$this->parcours->contains($parcours)) {
            $this->parcours[] = $parcours;
        }

        return $this;
    }

    public function removeParcours(Parcours $parcours): self
    {
        $this->parcours->removeElement($parcours);

        return $this;
    }
}
