<?hh // decl

namespace Zend\Server;

interface Server
{
    public function addFunction(
        string $function,
        string $namespace = '',
        mixed ...$args
    ): void;
    public function setClass(
        dynamic $class,
        string $namespace = '',
        mixed $argv = null
    ): void;
    public function fault(mixed $fault = null, int $code = 404): mixed;
    public function handle(mixed $request = false): mixed;
    public function getFunctions(): Traversable;
    public function loadFunctions(array $definition): void;
    public function setPersistence(int $mode): void;
    public function setReturnResponse(bool $flag = true): this;
    public function getReturnResponse(): bool;
    public function getResponse(): dynamic;
}
