//Setting Start
var number:[Int]=[2,4,5,1,8,7]
var chaa:[String]=["a","b","c","d","e","f","g","h","i","j"]
//Setting End

//Map() First Test Start
var chars = number.map({chaa[$0]})//map() will return another new array and it won't change the origin array
print(chars)
print(number) //Won't change
//Map() First Test End

//Map() Second Test Start
var change=number.map(
    {
        (num) in
        num>2 ? num*2:num*0 //Only when number is a [Double] can you use 1.1 other wise you should use integer.
    }
)
print(change)
//Map() Second Test End

//Filter() Test Start
var oddNumber=number.filter(){($0%2)==1}
print(oddNumber)
print(number)//Won't change
//Filter() Test End

//Reduce() Test Start
var total = number.reduce(0,combine: {max($0,$1)})
print("The max number in array is:\(total)")
print(number)//Won't change
//Reduce() Test End

//Closure
//Step one
let numbers1:[Int]=[2,8,6,9,7,4]
func SortNumbers1(num1:Int,num2:Int) -> Bool {
    return num1>num2}
let sortedNumbers1=numbers1.sort(SortNumbers1)
print(sortedNumbers1)
