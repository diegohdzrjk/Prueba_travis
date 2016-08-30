function estocka(n, m)
    M = zeros(Float64, n, m) 
    for i in 1:n
        v = rand(m)
        suma = sum(v)
        M[i,:] = v/suma
    end
    return M
end


function estocka_check(M)
    n = size(M)[1]
    m = size(M)[2]
    
    for i in 1:n
        suma = sum(M[i,:])
        if abs(suma-1.0) > 1.0e-5
            return false
        end
    end
    return true
end

