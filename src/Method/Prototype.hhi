<?hh // decl

namespace Zend\Server\Method;

class Prototype
{
    // Attributes.
    protected string $returnType = 'void';
    protected array<arraykey, dynamic> $parameterNameMap = [];
    protected array<Parameter> $parameters = [];

    // Methods.
    public function __construct(?array<arraykey, dynamic> $options = null);
    public function setReturnType(string $returnType): this;
    public function getReturnType(): string;
    public function addParameter(mixed $parameter): this;
    public function addParameters(array<mixed> $parameters): this;
    public function setParameters(array<mixed> $parameters): this;
    public function getParameters(): array<string>;
    public function getParameterObjects(): array<Parameter>;
    public function getParameter(arraykey $index): ?Parameter;
    public function setOptions(array<arraykey, dynamic> $options): this;
    public function toArray(): array<arraykey, dynamic>;
}
