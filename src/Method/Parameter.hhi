<?hh // decl

namespace Zend\Server\Method;

class Parameter {
    // Attributes.
    protected mixed $defaultValue;
    protected string $description = '';
    protected string $name;
    protected bool $optional = false;
    protected string $type = 'mixed';

    // Methods.
    public function __construct(?array<arraykey, mixed> $options = null);
    public function setOptions(array<arraykey, mixed> $options): this;
    public function setDefaultValue(mixed $defaultValue): this;
    public function getDefaultValue(): mixed;
    public function setDescription(string $description): this;
    public function getDescription(): string;
    public function setName(string $name): this;
    public function getName(): string;
    public function setOptional(bool $flag): this;
    public function isOptional(): bool;
    public function setType(string $type): this;
    public function getType(): string;
    public function toArray(): array<arraykey, mixed>;
}
