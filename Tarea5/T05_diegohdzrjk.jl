using Base.Test


# Vectorizado
"""
Traza parcial
"""
function partial_trace_pure_bipartite_mat(state,dim,system)
    dimtotal=length(state)[1]
    dimcomp=Int(dimtotal/dim)
    if system==1
    psi=reshape(state,(dimcomp,dim))'
        return psi*psi'
        elseif system==2
     psi=reshape(state,(dim,dimcomp))'
        return psi'*psi
    end
end

function random_state(dim=2::Int)
    v=randn(1,dim)+randn(1,dim)im
    v=v/norm(v)
    return v'
end

function traza_parcial_estado(n)
    return trace(partial_trace_pure_bipartite_mat(random_state(n),n,1))
end


function check_traza_parcial(traza)
    if imag(traza)<1e-6 && abs(real(traza)-1.0)<1e-6
        return true
    else
        return false
    end
end


@test check_traza_parcial(traza_parcial_estado(10))
