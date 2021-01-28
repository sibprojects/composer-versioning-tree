<?php

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="cvt_tree")
 * @ORM\HasLifecycleCallbacks
 */
class Tree
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    protected $id;

    /**
     * @ORM\Column(type="datetime")
     */
    private $created_at;

    /**
     * @ORM\Column(type="integer")
     * @ORM\ManyToOne(targetEntity="File")
     */
    private $file_id;


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
     * Gets triggered only on insert

     * @ORM\PrePersist
     */
    public function onPrePersist()
    {
        $this->created_at = new \DateTime("now");
    }

    /**
     * Set date.
     *
     * @param \DateTime $date
     *
     * @return Tree
     */
    public function setCreatedAt($date)
    {
        $this->created_at = $date;

        return $this;
    }

    /**
     * Get date.
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    /**
     * Set fileId.
     *
     * @param int $fileId
     *
     * @return Tree
     */
    public function setFileId($fileId)
    {
        $this->file_id = $fileId;

        return $this;
    }

    /**
     * Get fileId.
     *
     * @return int
     */
    public function getFileId()
    {
        return $this->file_id;
    }
}
