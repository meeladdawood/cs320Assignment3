function InfixToPostfix(str)
 
prec = {} 
operators = {}
operands = {} 
prec["+"] = 1
prec["-"] = 1
prec["*"] = 2
prec["/"] = 2
index = 1
postfixStr = ""
    for token in string.gmatch(str,"%S+")
      do 
        operands[index] = token
        index = index +1
      end

     for i = 1, #operands
       do
          i = i + 1
      end
   
    for i = 1, #operands
        do
          if tonumber(operands[i]) ~= nil 
               then
                   postfixStr = postfixStr .. operands[i] 
           else
              while(( next(operators) ~= nil) and
              (prec[tostring(operators[#operators])] >= prec[tostring((operands[i]))])  )
                    do
                      postfixStr = postfixStr .. operators[#operators]
                      table.remove(operators)
                    end
           table.insert(operators,(operands[i]))
         end
    end
              while (next(operators) ~= nil)   
                do
                  postfixStr = postfixStr .. operators[#operators]
                  table.remove(operators)
                  end
  return postfixStr
end


s = io.read("*l")
io.write(" ")
res =InfixToPostfix(s)
for i = 1, #res do
    local temp = res:sub(i,i)
    io.write(temp)
    if i ~= #res then
    	io.write(" ")
    end
end
