<?hh // decl

namespace Zend\Server\Reflection;

class ReflectionMethod extends AbstractFunction
{
    // Constants.
    const string INHERIT_TAG = '{@inheritdoc}';

    // Attributes.
    protected string $class;
    protected ReflectionClass $classReflection;

    // Methods.
    public function __construct(
        ReflectionClass $class,
        \ReflectionMethod $r,
        ?string $namespace = null,
        mixed $argv = []
    );
    public function getDeclaringClass(): ReflectionClass;
    public function __wakeup(): void;
    protected function reflect(): void;
    private function fetchRecursiveDocComment(): string;
    private function fetchRecursiveDocBlockFromParent(
        \ReflectionClass $reflectionClass,
        string $methodName
    ): mixed;
    private function isInherit(string $docComment): bool;
}
