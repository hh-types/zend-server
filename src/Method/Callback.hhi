<?hh // decl

namespace Zend\Server\Method;

use Zend\Server;

class Callback
{
    // Attributes.
    protected ?string $class;
    protected dynamic $function;
    protected ?string $method;
    protected string $type;
    protected array<string> $types = ['function', 'static', 'instance'];

    // Methods.
    public function __construct(?array<arraykey, dynamic> $options = null);
    public function setOptions(array<arraykey, dynamic> $options): this;
    public function setClass(dynamic $class): this;
    public function getClass(): ?string;
    public function setFunction(dynamic $function): this;
    public function getFunction(): dynamic;
    public function setMethod(string $method): this;
    public function getMethod(): ?string;
    public function setType(string $type): this;
    public function getType(): string;
    public function toArray(): array<arraykey, dynamic>;
}
