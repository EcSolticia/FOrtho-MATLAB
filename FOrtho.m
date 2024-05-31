

function [ortho] = FOrtho(X, a, b)
    ortho = 1;
    for i = 1:1:size(X, 2)
        for j = i:1:size(X, 2)
            if i == j
                if FunctionInnerProduct(X(i), X(j), a, b) == 0
                    ortho = 0
                    return
                end
            end
            if i ~= j 
                if FunctionInnerProduct(X(i), X(j), a, b) ~= 0
                    ortho = 0
                    return
                end
            end
        end
    end
                
            
