<?hh // decl

namespace Zend\Server\Method;

use Zend\Server;

/**
 * Method definition metadata
 */
class Definition
{
    // Attributes.
    protected \Zend\Server\Method\Callback $callback;
    protected array<dynamic> $invokeArguments = [];
    protected string $methodHelp = '';
    protected string $name;
    protected dynamic $object;
    protected array<\Zend\Server\Method\Prototype> $prototypes = [];

    // Methods.
    public function __construct(?array<arraykey, dynamic> $options = null);
    public function setOptions(array<arraykey, dynamic> $options): this;
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
    public function setObject(dynamic $object): this;
    public function getObject(): dynamic;
    public function setInvokeArguments(array<dynamic> $invokeArguments): this;
    public function getInvokeArguments(): array<dynamic>;
    public function toArray(): array<arraykey, dynamic>;
}
