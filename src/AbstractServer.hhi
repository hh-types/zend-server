<?hh // decl

namespace Zend\Server;

use ReflectionClass;

abstract class AbstractServer implements Server
{
    // Attributes.
    protected bool $overwriteExistingMethods = false;
    protected Definition $table;

    // Methods.
    public function __construct();
    public function getFunctions(): Definition;
    <<__Deprecated("Since 2.7.0; method will have private visibility starting in 3.0")>>
    protected function _buildCallback(
        Reflection\AbstractFunction $reflection
    ): Method\Callback;
    <<__Deprecated("Since 2.7.0; method will be renamed to remove underscore prefix in 3.0.")>>
    protected function _buildSignature(
        Reflection\AbstractFunction $reflection,
        dynamic $class = null
    ): Method\Definition;
    <<__Deprecated("Since 2.7.0; method will be renamed to remove underscore prefix in 3.0.")>>
    protected function _dispatch(Method\Definition $invokable, array<dynamic> $params): dynamic;
    <<__Deprecated("Since 2.7.0; method will be renamed to remove underscore prefix in 3.0.")>>
    abstract protected function _fixType(string $type): string;
}
