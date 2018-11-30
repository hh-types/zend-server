<?hh // decl

namespace Zend\Server\Reflection;

abstract class AbstractFunction<T> {
    // Attributes.
    protected \ReflectionFunctionAbstract $reflection;
    protected array<mixed> $argv = [];
    protected array<arraykey, mixed> $config = [];
    protected T $class;
    protected string $description = '';
    protected string $namespace;
    protected array<\Zend\Server\Reflection\Prototype> $prototypes = [];
    protected string $docComment = '';
    private array<ReflectionReturnValue> $return;
    private string $returnDesc;
    private array<string> $paramDesc;
    private array<string> $sigParams;
    private int $sigParamsDepth;

    // Methods.
    public function __construct(
        \ReflectionFunctionAbstract $r,
        ?string $namespace = null,
        array<mixed> $argv = [],
    );
    protected function addTree(Node $parent, int $level = 0): void;
    protected function buildTree(): array<Node>;
    protected function buildSignatures(
        array<ReflectionReturnValue> $return,
        string $returnDesc,
        array<string> $paramTypes,
        array<string> $paramDesc,
    ): void;
    protected function reflect(): void;
    public function __call(string $method, array $args);
    public function __get(string $key);
    public function __set(string $key, mixed $value): void;
    public function setNamespace(string $namespace): void;
    public function getNamespace(): string;
    public function setDescription(string $string): void;
    public function getDescription(): string;
    public function getPrototypes(): array<Prototype>;
    public function getInvokeArguments(): array<mixed>;
    public function __wakeup(): void;
}
