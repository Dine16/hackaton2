<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Game
 *
 * @ORM\Table(name="game")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\GameRepository")
 */
class Game
{
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
     * @ORM\Column(name="teamOne", type="string", length=64)
     */
    private $teamOne;

    /**
     * @var string
     *
     * @ORM\Column(name="teamTwo", type="string", length=64)
     */
    private $teamTwo;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date", type="datetime")
     */
    private $date;

    /**
     * @var int
     *
     * @ORM\Column(name="score", type="integer")
     */
    private $score;

    /**
     * @var int
     *
     * @ORM\Column(name="status", type="smallint")
     */
    private $status;

    /**
     * @var int
     *
     * @ORM\Column(name="nbPool", type="integer")
     */
    private $nbPool;


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set teamOne.
     *
     * @param string $teamOne
     *
     * @return Game
     */
    public function setTeamOne($teamOne)
    {
        $this->teamOne = $teamOne;

        return $this;
    }

    /**
     * Get teamOne.
     *
     * @return string
     */
    public function getTeamOne()
    {
        return $this->teamOne;
    }

    /**
     * Set teamTwo.
     *
     * @param string $teamTwo
     *
     * @return Game
     */
    public function setTeamTwo($teamTwo)
    {
        $this->teamTwo = $teamTwo;

        return $this;
    }

    /**
     * Get teamTwo.
     *
     * @return string
     */
    public function getTeamTwo()
    {
        return $this->teamTwo;
    }

    /**
     * Set date.
     *
     * @param \DateTime $date
     *
     * @return Game
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get date.
     *
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set score.
     *
     * @param int $score
     *
     * @return Game
     */
    public function setScore($score)
    {
        $this->score = $score;

        return $this;
    }

    /**
     * Get score.
     *
     * @return int
     */
    public function getScore()
    {
        return $this->score;
    }

    /**
     * Set status.
     *
     * @param int $status
     *
     * @return Game
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status.
     *
     * @return int
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set nbPool.
     *
     * @param int $nbPool
     *
     * @return Game
     */
    public function setNbPool($nbPool)
    {
        $this->nbPool = $nbPool;

        return $this;
    }

    /**
     * Get nbPool.
     *
     * @return int
     */
    public function getNbPool()
    {
        return $this->nbPool;
    }
}
