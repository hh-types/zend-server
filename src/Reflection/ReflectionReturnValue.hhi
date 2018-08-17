<?hh // decl

namespace Zend\Server\Reflection;

class ReflectionReturnValue
{
    // Attributes.
    protected string $type;
    protected string $description;

    // Methods.
    public function __construct(
        string $type = 'mixed',
        string $description = ''
    );
    public function getType(): ?string;
    public function setType(?string $type): void;
    public function getDescription(): ?string;
    public function setDescription(?string $description): void;
}
