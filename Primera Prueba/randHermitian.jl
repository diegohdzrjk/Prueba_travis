function randHermitian(n)
    a = rand(n,n)+1im*rand(n,n)
    b = triu(a,1)+conj(transpose(triu(a,1)))+Diagonal(rand(n,n))
    return eigvals(b)
end
