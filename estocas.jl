
function estocka(n, m)
    M = zeros(Float64, n, m) 
    for i in 1:n
        v = rand(m)
        suma = sum(v)
        M[i,:] = v/suma
    end
    return M
end


