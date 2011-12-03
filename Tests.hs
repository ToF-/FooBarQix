module Tests
where
import Test.HUnit
import FooBarQix

main  = runTestTT tests
tests = TestList [
         fooBarQix 1 ~?= "1"
        ,fooBarQix 2 ~?= "2"
        ,fooBarQix 6 ~?= "Foo"
        ,fooBarQix 9 ~?= "Foo"
        ,fooBarQix 13 ~?= "Foo"
        ,fooBarQix 133 ~?= "QixFooFoo"
        ,fooBarQix 3 ~?= "FooFoo"
        ,fooBarQix 10 ~?= "Bar"
        ,fooBarQix 5 ~?= "BarBar"
        ,fooBarQix 7 ~?= "QixQix"
        ,fooBarQix 15 ~?= "FooBarBar"
        ,fooBarQix 53 ~?= "BarFoo"
        ]

