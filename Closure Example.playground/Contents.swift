func ShowClosure0() -> (Int,Int)->Bool {//Use function
    let result:(Int,Int)->Bool
    result={(a:Int,b:Int)->Bool in
        return a<b
    }
    return result
}
func ShowClosure1() -> (Int,Int)->Bool  {//Decrease type of parameters
    let result:(Int,Int)->Bool
    result={(a,b) in a<b}
    return result
}
func ShowClosure2() -> (Int,Int)->Bool  {//Change to $0,$1
    let result:(Int,Int)->Bool
    result={$0<$1}
    return result
}
let example:[Int] = [1,5,6,3,8]
print(example.sort(ShowClosure0()))
print(example.sort(ShowClosure1()))
print(example.sort(ShowClosure2()))

