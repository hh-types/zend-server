<?hh // decl

namespace Zend\Server;

class Reflection
{
    // Methods.
    public static function reflectClass(
        dynamic $class,
        mixed $argv = false,
        string $namespace = ''
    ): \Zend\Server\Reflection\ReflectionClass;
    public static function reflectFunction(
        string $function,
        mixed $argv = false,
        string $namespace = ''
    ): \Zend\Server\Reflection\ReflectionFunction;
}
