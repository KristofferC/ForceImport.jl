using ForceImport
using Base.Test

module Foo
    export +
    +() = 7
end

module Bar
    using ForceImport
    @force using Foo
end

# write your own tests here
@test Bar.:+() == 7
@test 1+1 == 2
