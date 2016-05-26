//Setting Start
var number:[Int]=[2,4,5,1,8,7]
var chaa:[String]=["a","b","c","d","e","f","g","h","i","j"]
//Setting End

//Map() First Test Start
var chars = number.map({chaa[$0]})//map() will return another new array and it won't change the origin array
print(chars)
print(number) //Won't change
//Map() First Test End
