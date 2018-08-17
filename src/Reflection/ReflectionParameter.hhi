<?hh // decl

namespace Zend\Server\Reflection;

class ReflectionParameter
{
    // Attributes.
    protected \ReflectionParameter $reflection;
    protected int $position;
    protected string $type;
    protected string $description;

    // Methods.
    public function __construct(
        \ReflectionParameter $r,
        string $type = 'mixed',
        string $description = ''
    );
    public function __call(string $method, mixed ...$args);
    public function getType(): string;
    public function setType(string $type): void;
    public function getDescription(): ?string;
    public function setDescription(?string $description): void;
    public function setPosition(int $index): void;
    public function getPosition(): int;
}
