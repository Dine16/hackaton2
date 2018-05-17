<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Player
 *
 * @ORM\Table(name="player")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\PlayerRepository")
 */
class Player
{
    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Universe", inversedBy="universes")
     * @ORM\JoinColumn(nullable=false)
     */
    private $universe;
    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Team", inversedBy="teams")
     * @ORM\JoinColumn(nullable=false)
     */
    private $team;

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
     * @ORM\Column(name="name", type="string", length=64)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255)
     */
    private $image;

    /**
     * @var string
     *
     * @ORM\Column(name="gender", type="string", length=8)
     */
    private $gender;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=255)
     */
    private $description;

    /**
     * @var bool
     *
     * @ORM\Column(name="isOnBench", type="boolean")
     */
    private $isOnBench;


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
     * Set name
     *
     * @param string $name
     *
     * @return Player
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
     * Set image
     *
     * @param string $image
     *
     * @return Player
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
     * Set gender
     *
     * @param string $gender
     *
     * @return Player
     */
    public function setGender($gender)
    {
        $this->gender = $gender;

        return $this;
    }

    /**
     * Get gender
     *
     * @return string
     */
    public function getGender()
    {
        return $this->gender;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Player
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
     * Set isOnBench
     *
     * @param boolean $isOnBench
     *
     * @return Player
     */
    public function setIsOnBench($isOnBench)
    {
        $this->isOnBench = $isOnBench;

        return $this;
    }

    /**
     * Get isOnBench
     *
     * @return bool
     */
    public function getIsOnBench()
    {
        return $this->isOnBench;
    }

    /**
     * Set universe.
     *
     * @param \AppBundle\Entity\Universe $universe
     *
     * @return Player
     */
    public function setUniverse(\AppBundle\Entity\Universe $universe)
    {
        $this->universe = $universe;

        return $this;
    }

    /**
     * Get universe.
     *
     * @return \AppBundle\Entity\Universe
     */
    public function getUniverse()
    {
        return $this->universe;
    }

    /**
     * Set team.
     *
     * @param \AppBundle\Entity\Team $team
     *
     * @return Player
     */
    public function setTeam(\AppBundle\Entity\Team $team)
    {
        $this->team = $team;

        return $this;
    }

    /**
     * Get team.
     *
     * @return \AppBundle\Entity\Team
     */
    public function getTeam()
    {
        return $this->team;
    }
}
