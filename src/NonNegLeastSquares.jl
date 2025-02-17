isdefined(Base, :__precompile__) && __precompile__()

"""
    NonNegLeastSquares
Nonnegative least squares
"""
module NonNegLeastSquares
    using Distributed, LinearAlgebra
    import SparseArrays

    export nonneg_lsq

    ## Algorithms
    include("nnls.jl")
    using .NNLS: nnls
    include("fnnls.jl")
    include("pivot.jl")
    include("pivot_comb.jl")
    include("pivot_cache.jl")
    include("admm.jl")
    include("coorddesc.jl")

    ## Common interface to algorithms
    include("interface.jl")

    ## Helper functions
    include("cssls.jl") # combinatorial subspace least squares (CSSLS)
end
