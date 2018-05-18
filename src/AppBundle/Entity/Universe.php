<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Universe
 *
 * @ORM\Table(name="universe")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UniverseRepository")
 */
class Universe
{
    /**
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Player", mappedBy="universe")
     */
    private $universes;

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="place", type="string", length=128)
     */
    private $place;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=64)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=255)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255)
     */
    private $image;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set place
     *
     * @param string $place
     *
     * @return Universe
     */
    public function setPlace($place)
    {
        $this->place = $place;

        return $this;
    }

    /**
     * Get place
     *
     * @return string
     */
    public function getPlace()
    {
        return $this->place;
    }

    /**
     * Set name
     *
     * @param string $name
     *
     * @return Universe
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Universe
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set image
     *
     * @param string $image
     *
     * @return Universe
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->image;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->universes = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add universe.
     *
     * @param \AppBundle\Entity\Player $universe
     *
     * @return Universe
     */
    public function addUniverse(\AppBundle\Entity\Player $universe)
    {
        $this->universes[] = $universe;

        return $this;
    }

    /**
     * Remove universe.
     *
     * @param \AppBundle\Entity\Player $universe
     *
     * @return boolean TRUE if this collection contained the specified element, FALSE otherwise.
     */
    public function removeUniverse(\AppBundle\Entity\Player $universe)
    {
        return $this->universes->removeElement($universe);
    }

    /**
     * Get universes.
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getUniverses()
    {
        return $this->universes;
    }
}
