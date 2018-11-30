<?hh // decl

namespace Zend\Server;

class Definition
    implements \Countable, \Iterator<\Zend\Server\Method\Definition> {
    // Attributes.
    protected array<\Zend\Server\Method\Definition> $methods = [];
    protected bool $overwriteExistingMethods = false;

    // Methods.
    public function __construct(?array<string, mixed> $methods = null);
    public function setOverwriteExistingMethods(bool $flag): this;
    public function addMethod(mixed $method, ?string $name = null): this;
    public function addMethods(array<string, mixed> $methods): this;
    public function setMethods(array<string, mixed> $methods): this;
    public function hasMethod(string $method): bool;
    public function getMethod(string $method): mixed;
    public function getMethods(): array<\Zend\Server\Method\Definition>;
    public function removeMethod(string $method): this;
    public function clearMethods(): this;
    public function toArray(): array<arraykey, mixed>;
    public function count(): int;
    public function current(): \Zend\Server\Method\Definition;
    public function key(): arraykey;
    public function next(): void;
    public function rewind(): void;
    public function valid(): bool;
}
