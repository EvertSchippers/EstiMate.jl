"""
    ⊕(value::V, delta::AbstractVector)

Defines how to "add" a vector to an element of type `V`. Return an item similar to V.
"""
function ⊕ end

⊕(value::T, delta::V) where {T <: AbstractArray, V <: AbstractVector} = reshape(value[:] .+ delta, size(value))
⊕(value::N, delta::V) where N <: Number where V <: AbstractVector = value .+ delta[1]
