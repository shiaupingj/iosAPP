class Cat{
    var age = 1
    var name = "coffee"
    
    func getOlder(){
        age = age + 1
    }
}

var goodcat = Cat()
var badcat = Cat()

badcat.name = "yuzu"
print(goodcat.name + "是好貓" )
print(badcat.name + "是壞貓" )


var cuteCat = Cat()
cuteCat.age
cuteCat.getOlder()
cuteCat.age

var cuteCat2 = Cat()
cuteCat2.age

class Rabbit {
    var name = "白"
}

class Baby {
    var name = "小"
    var age = 1
    var cuteRabbit = Rabbit()
    func getRabbit() -> Rabbit{
        return Rabbit()
    }
}

var cuteBaby = Baby()
print(cuteBaby.getRabbit().name)
    
    

