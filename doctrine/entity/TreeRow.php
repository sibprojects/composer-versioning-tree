<?php

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="cvt_tree_row")
 */
class TreeRow
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    protected $id;

    /**
     * @ORM\Column(type="integer")
     * @ORM\ManyToOne(targetEntity="Tree")
     */
    private $tree_id;

    /**
     * @ORM\Column(type="integer")
     * @ORM\ManyToOne(targetEntity="TreeRow")
     */
    private $parent_id;

    /**
     * @ORM\Column(type="text")
     */
    private $name;

    /**
     * @ORM\Column(type="string")
     */
    private $version;

    /**
     * @ORM\Column(type="string")
     */
    private $latest;


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
     * Set treeId.
     *
     * @param int $treeId
     *
     * @return TreeRow
     */
    public function setTreeId($treeId)
    {
        $this->tree_id = $treeId;

        return $this;
    }

    /**
     * Get treeId.
     *
     * @return int
     */
    public function getTreeId()
    {
        return $this->tree_id;
    }

    /**
     * Set parentId.
     *
     * @param int $parentId
     *
     * @return TreeRow
     */
    public function setParentId($parentId)
    {
        $this->parent_id = $parentId;

        return $this;
    }

    /**
     * Get parentId.
     *
     * @return int
     */
    public function getParentId()
    {
        return $this->parent_id;
    }

    /**
     * Set name.
     *
     * @param string $name
     *
     * @return TreeRow
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name.
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set version.
     *
     * @param string $version
     *
     * @return TreeRow
     */
    public function setVersion($version)
    {
        $this->version = $version;

        return $this;
    }

    /**
     * Get version.
     *
     * @return string
     */
    public function getVersion()
    {
        return $this->version;
    }

    /**
     * Set latest.
     *
     * @param string $latest
     *
     * @return TreeRow
     */
    public function setLatest($latest)
    {
        $this->latest = $latest;

        return $this;
    }

    /**
     * Get latest.
     *
     * @return string
     */
    public function getLatest()
    {
        return $this->latest;
    }
}
