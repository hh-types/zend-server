<?hh // decl

namespace Zend\Server\Method;

use Zend\Server;

/**
 * Method definition metadata
 */
class Definition<T> {
    // Attributes.
    protected \Zend\Server\Method\Callback $callback;
    protected array<mixed> $invokeArguments = [];
    protected string $methodHelp = '';
    protected string $name;
    protected T $object;
    protected array<\Zend\Server\Method\Prototype> $prototypes = [];

    // Methods.
    public function __construct(?array<arraykey, mixed> $options = null);
    public function setOptions(array<arraykey, mixed> $options): this;
    public function setName(string $name): this;
    public function getName(): string;
    public function setCallback(mixed $callback): this;
    public function getCallback(): Callback;
    public function addPrototype(mixed $prototype): this;
    public function addPrototypes(array<mixed> $prototypes): this;
    public function setPrototypes(array<mixed> $prototypes): this;
    public function getPrototypes(): array<Prototype>;
    public function setMethodHelp(string $methodHelp): this;
    public function getMethodHelp(): string;
    public function setObject(T $object): this;
    public function getObject(): T;
    public function setInvokeArguments(array<mixed> $invokeArguments): this;
    public function getInvokeArguments(): array<mixed>;
    public function toArray(): array<arraykey, mixed>;
}
