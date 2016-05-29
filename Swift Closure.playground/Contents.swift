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
