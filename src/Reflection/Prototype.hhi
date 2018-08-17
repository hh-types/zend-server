<?hh // decl

namespace Zend\Server\Reflection;

class Prototype
{
    // Attributes.
    protected array<\Zend\Server\Reflection\ReflectionParameter> $params;

    // Methods.
    public function __construct(
        \Zend\Server\Reflection\ReflectionReturnValue $return,
        array<\Zend\Server\Reflection\ReflectionParameter> $params = []
    );
    public function getReturnType(): ?string;
    public function getReturnValue(

    ): \Zend\Server\Reflection\ReflectionReturnValue;
    public function getParameters(

    ): array<\Zend\Server\Reflection\ReflectionParameter>;
}
