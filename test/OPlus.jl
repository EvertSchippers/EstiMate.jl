
@testset "Testing ⊕ basics" begin
    @test 10 ⊕ [1.0] === 11.0
    @test 10.0 ⊕ [1.0] === 11.0
    @test [1.0, 2.0, 3.0] ⊕ [0.1, 0.2, 0.3] == [1.1, 2.2, 3.3]
    @test [1.0 2.0; 3.0 4.0] ⊕ [0.1, 0.3, 0.2, 0.4] == [1.1 2.2; 3.3 4.4]

    @test dimensions(1.0) == 1
    @test dimensions([1,2,3]) == 3
    @test dimensions([1 2; 3 4]) == 4
    

end