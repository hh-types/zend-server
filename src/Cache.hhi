<?hh // decl

namespace Zend\Server;

use Zend\Stdlib\ErrorHandler;

class Cache
{
    // Attributes.
    protected static array<string> $skipMethods = [];

    // Methods.
    public static function save(string $filename, Server $server): bool;
    public static function get(string $filename, Server $server): bool;
    public static function delete(string $filename): bool;
    private static function createDefinition(dynamic $methods): dynamic;
    private static function createDefinitionFromMethodsDefinition(
        Definition $methods
    ): dynamic;
    private static function createDefinitionFromMethodsArray(
        array<arraykey, dynamic> $methods
    );
}
