<?hh // decl

namespace Zend\Server;

class Cache {
    // Attributes.
    protected static array<string> $skipMethods = [];

    // Methods.
    public static function save(string $filename, Server $server): bool;
    public static function get(string $filename, Server $server): bool;
    public static function delete(string $filename): bool;
    private static function createDefinition(mixed $methods): mixed;
    private static function createDefinitionFromMethodsDefinition(
        Definition $methods,
    ): mixed;
    private static function createDefinitionFromMethodsArray(
        array<arraykey, mixed> $methods,
    );
}
