<?hh // decl

namespace Zend\Server\Reflection;

class ReflectionClass {
    // Attributes.
    protected array<arraykey, mixed> $config = [];
    protected array<ReflectionMethod> $methods = [];
    protected ?string $namespace = null;
    protected \ReflectionClass $reflection;

    // Methods.
    public function __construct(
        \ReflectionClass $reflection,
        ?string $namespace = null,
        mixed $argv = false,
    );
    public function __call(string $method, mixed ...$args);
    public function __get(string $key);
    public function __set(arraykey $key, mixed $value);
    public function getMethods(): array<ReflectionMethod>;
    public function getNamespace(): string;
    public function setNamespace(string $namespace): void;
    public function __wakeup(): void;
}
