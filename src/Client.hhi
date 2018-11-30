<?hh // decl

namespace Zend\Server;

interface Client {
    public function call(string $method, array $params = []);
}
