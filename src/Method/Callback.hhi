<?hh // decl

namespace Zend\Server\Method;

use Zend\Server;

class Callback<T> {
    // Attributes.
    protected ?T $class;
    protected mixed $function;
    protected ?string $method;
    protected string $type;
    protected array<string> $types = ['function', 'static', 'instance'];

    // Methods.
    public function __construct(?array<arraykey, mixed> $options = null);
    public function setOptions(array<arraykey, mixed> $options): this;
    public function setClass(classname<T> $class): this;
    public function getClass(): ?string;
    public function setFunction(mixed $function): this;
    public function getFunction(): mixed;
    public function setMethod(string $method): this;
    public function getMethod(): ?string;
    public function setType(string $type): this;
    public function getType(): string;
    public function toArray(): array<arraykey, mixed>;
}
