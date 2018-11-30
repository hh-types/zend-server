<?hh // decl

namespace Zend\Server;

interface Server {
    public function addFunction(mixed $function, string $namespace = ''): void;
    public function setClass(
        mixed $class,
        string $namespace = '',
        mixed ...$argv
    ): void;
    public function fault(mixed $fault = null, arraykey $code = 404): mixed;
    public function handle(mixed $request = false): mixed;
    public function getFunctions(): Traversable;
    public function loadFunctions(array $definition): void;
    public function setPersistence(int $mode): void;
    public function setReturnResponse(bool $flag = true): this;
    public function getReturnResponse(): bool;
    public function getResponse(): mixed;
}
