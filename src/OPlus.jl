"""
    ⊕(value::V, delta::AbstractVector)

Defines how to "add" a vector to an instance of type `V`. Return an item similar to V.
"""
function ⊕ end

⊕(value::T, delta::V) where {T <: AbstractArray, V <: AbstractVector} = reshape(value[:] .+ delta, size(value))
⊕(value::N, delta::V) where N <: Number where V <: AbstractVector = value .+ delta[1]

"""
    dimensions(t::T)

Return the dimensions of the parameterisation of an instance of type T. 
"""
function dimensions end

dimensions(t::T) where T <: AbstractArray = length(t)
dimensions(t::N) where N <: Number = 1
