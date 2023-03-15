# 1)	Сортировка пузырьком. Issorted, sortperm!, sort!. Сортировка по значению функции .
# n = parse(Int, readline())
function puzir!(mas)
    n = length(mas)
    for k in 1:n-1
        istranspose = false
        for i in firstindex(mas):lastindex(mas) - k
            if mas[i] > mas[i + 1]
                mas[i], mas[i + 1] = mas[i + 1], mas[i]
                istranspose = true
            end
        end
        if istranspose == false
            break
        end
    end
    return mas
end
mas =[4,1,2,5,3,7]
puzir!(mas)

function iissorted(massive::AbstractArray)
    for i in firstindex(massive):lastindex(massive) - 1
        if massive[i] > massive[i+1]
            return false
        end
    end
    return true
end

# тут еще баблсорт, который возвращает перестановку, whatever

function bubblesortperm!(a)
n = length(a)
indexes = collect(1:n)
for k in 1:n-1
is_sorted = true
for i in 1:n-k
if a[i] > a[i+1]
a[i], a[i+1] = a[i+1], a[i]
indexes[i], indexes[i+1] = indexes[i+1], indexes[i]
is_sorted = false
end
end
if is_sorted
break
end
end
return indexes
end
bubblesortperm(a) = bubblesortperm!(deepcopy(a))
