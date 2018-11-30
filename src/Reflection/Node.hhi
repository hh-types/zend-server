<?hh // decl

namespace Zend\Server\Reflection;

class Node {
    // Attributes.
    protected mixed $value = null;
    protected array<Node> $children = [];
    protected ?Node $parent = null;

    // Methods.
    public function __construct(mixed $value, ?Node $parent = null);
    public function setParent(Node $node, bool $new = false): void;
    public function createChild(mixed $value): Node;
    public function attachChild(Node $node): void;
    public function getChildren(): array<Node>;
    public function hasChildren(): bool;
    public function getParent(): ?Node;
    public function getValue(): mixed;
    public function setValue(mixed $value): void;
    public function getEndPoints(): array<Node>;
}
