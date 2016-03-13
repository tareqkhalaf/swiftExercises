/*:
**Exercise:** We need to model the set of possible iPhones manufactured. Replace each possible tuple property value with an enumeration that would be appropriate to the current non enumeration value.
*/

/*:
>> **Constraints:**
* Create the following Enumerations:
* ModelName = Enumeration for all the modal names
* ModelNumber = Enumeration for all the modal numbers
* HardwareString = Enumeration for all hardware string
* OSVersion = Enumeration for all os versions
* Create the following Functions
* Create a device passing in as arguments each enumeration
* Validate the parameters using a guard statement
* Throw an error that's appropriate to the invalid parameter value
* Return a tuple similar to above only using the above enumerations
* Get Device with ModelName
* Get Device with ModelNumber
* Get Device with HardwareString
* Get Devices with OSVersion
*/


enum iPhoneError: ErrorType {
    case WrongModelName
    case WrongModelNumber
    case WrongHardwareString
    case WrongOSVersion
    case BadCombination(model: String)
}

enum OSVersion : Int
{
    case One = 1, Two,Three,Four,Five,Six,Seven,Eight,Nine
}
enum HardwareString : String
{
    case iPhone11 = "iPhone1,1"
    case iPhone12 = "iPhone1,2"
    case iPhone21 = "iPhone2,1"
    case iPhone31 = "iPhone3,1"
    case iPhone41 = "iPhone4,1"
    case iPhone51 = "iPhone5,1"
    case iPhone52 = "iPhone5,2"
    case iPhone53 = "iPhone5,3"
    case iPhone54 = "iPhone5,4"
    case iPhone61 = "iPhone6,1"
    case iPhone62 = "iPhone6,2"
    case iPhone71 = "iPhone7,1"
    case iPhone72 = "iPhone7,2"
    case iPhone81 = "iPhone8,1"
    case iPhone82 = "iPhone8,2"
}

enum ModelName : String
{
    case iPhone
    case iPhone3G = "iPhone 3G"
    case iPhone3Gs = "iPhone 3Gs"
    case iPhone4 = "iPhone 4"
    case iPhone4s = "iPhone 4s"
    case iPhone5 = "iPhone 5"
    case iPhone5c = "iPhone 5c"
    case iPhone5s = "iPhone 5s"
    case iPhone6 = "iPhone 6"
    case iPhone6Plus = "iPhone 6 Plus"
    case iPhone6s = "iPhone 6s"
    case iPhone6sPlus = "iPhone 6s Plus"
}

enum ModelNumber : String
{
    case A1203
    case A1324
    case A1241
    case A1325
    case A1303
    case A1349
    case A1332
    case A1431
    case A1387
    case A1428
    case A1429
    case A1442
    case A1532
    case A1456
    case A1507
    case A1529
    case A1533
    case A1453
    case A1457
    case A1530
    case A1549
    case A1586
    case A1522
    case A1524
    case A1633
    case A1688
    case A1634
    case A1687
}
var validModelNumbers = [ModelName : Array<ModelNumber>]()
validModelNumbers[.iPhone]=[.A1203]
validModelNumbers[.iPhone3G]=[.A1324,.A1241]
validModelNumbers[.iPhone3Gs]=[.A1325,.A1303]
validModelNumbers[.iPhone4]=[.A1349,.A1332]
validModelNumbers[.iPhone4s]=[.A1431,.A1387]
validModelNumbers[.iPhone5]=[.A1428,.A1429,.A1442]
validModelNumbers[.iPhone5c]=[.A1532,.A1456,.A1507,.A1529]
validModelNumbers[.iPhone5s]=[.A1533,.A1453,.A1457,.A1530]
validModelNumbers[.iPhone6]=[.A1549,.A1586]
validModelNumbers[.iPhone6Plus]=[.A1522,.A1524]
validModelNumbers[.iPhone6s]=[.A1633,.A1688]
validModelNumbers[.iPhone6sPlus]=[.A1634,.A1687]

var validHardwareStrings = [ModelName : Array<HardwareString>]()
validHardwareStrings[.iPhone]=[.iPhone11]
validHardwareStrings[.iPhone3G]=[.iPhone12]
validHardwareStrings[.iPhone3Gs]=[.iPhone21]
validHardwareStrings[.iPhone4]=[.iPhone31]
validHardwareStrings[.iPhone4s]=[.iPhone41]
validHardwareStrings[.iPhone5]=[.iPhone51,.iPhone52]
validHardwareStrings[.iPhone5c]=[.iPhone53,.iPhone54]
validHardwareStrings[.iPhone5s]=[.iPhone61,.iPhone62]
validHardwareStrings[.iPhone6]=[.iPhone72]
validHardwareStrings[.iPhone6Plus]=[.iPhone71]
validHardwareStrings[.iPhone6s]=[.iPhone81]
validHardwareStrings[.iPhone6sPlus]=[.iPhone82]

var validOsVersion = [ModelName : Array<OSVersion>]()
validOsVersion[.iPhone]=[.One,.Two,.Three]
validOsVersion[.iPhone3G]=[.Two,.Three,.Four]
validOsVersion[.iPhone3Gs]=[.Three,.Four,.Five,.Six]
validOsVersion[.iPhone4]=[.Four,.Five,.Six,.Seven]
validOsVersion[.iPhone4s]=[.Five,.Six,.Seven,.Eight,.Nine]
validOsVersion[.iPhone5]=[.Six,.Seven,.Eight,.Nine]
validOsVersion[.iPhone5c]=[.Seven,.Eight,.Nine]
validOsVersion[.iPhone5s]=[.Seven,.Eight,.Nine]
validOsVersion[.iPhone6]=[.Eight,.Nine]
validOsVersion[.iPhone6Plus]=[.Eight,.Nine]
validOsVersion[.iPhone6s]=[.Nine]
validOsVersion[.iPhone6sPlus]=[.Nine]

let iPhone          = (modelName: "iPhone", modelNumbers: ["A1203"], hardwareStrings: ["iPhone1,1"], osVersions: [1, 2, 3])
let iPhone3G        = (modelName: "iPhone 3G", modelNumbers: ["A1324", "A1241"], hardwareStrings: ["iPhone1,2"], osVersions: [2, 3, 4])
let iPhone3Gs       = (modelName: "iPhone 3Gs", modelNumbers: ["A1325", "A1303"], hardwareStrings: ["iPhone2,1"], osVersions: [3, 4, 5, 6])
let iPhone4         = (modelName: "iPhone 4", modelNumbers: ["A1349", "A1332"], hardwareStrings: ["iPhone3,1", "iPhone3,2", "iPhone3,3"], osVersions: [4, 5, 6, 7])
let iPhone4s        = (modelName: "iPhone 4S", modelNumbers: ["A1431", "A1387"], hardwareStrings: ["iPhone4,1"], osVersions: [5, 6, 7, 8, 9])
let iPhone5         = (modelName: "iPhone 5", modelNumbers: ["A1428", "A1429", "A1442"], hardwareStrings: ["iPhone5,1", "iPhone5,2"], osVersions: [6, 7, 8, 9])
let iPhone5c        = (modelName: "iPhone 5c", modelNumbers: ["A1532", "A1456", "A1507", "A1529"], hardwareStrings: ["iPhone5,3", "iPhone5,4"], osVersions: [7, 8, 9])
let iPhone5s        = (modelName: "iPhone 5s", modelNumbers: ["A1533", "A1453", "A1457", "A1530"], hardwareStrings: ["iPhone6,1", "iPhone6,2"], osVersions: [7, 8, 9])
let iPhone6         = (modelName: "iPhone 6", modelNumbers: ["A1549", "A1586"], hardwareStrings: ["iPhone7,2"], osVersions: [8, 9])
let iPhone6Plus     = (modelName: "iPhone 6 Plus", modelNumbers: ["A1522", "A1524"], hardwareStrings: ["iPhone7,1"], osVersions: [8, 9])
let iPhone6s        = (modelName: "iPhone 6s", modelNumbers: ["A1633", "A1688"], hardwareStrings: ["iPhone8,1"], osVersions: [9])
let iPhone6sPlus    = (modelName: "iPhone 6s Plus", modelNumbers: ["A1634", "A1687"], hardwareStrings: ["iPhone8,2"], osVersions: [9])

let phones = [iPhone, iPhone3G, iPhone3Gs, iPhone4, iPhone4s, iPhone5, iPhone5c, iPhone5s, iPhone6, iPhone6Plus, iPhone6s, iPhone6sPlus]

func createDevice (modelName:ModelName,modelNumber:ModelNumber,hardware:HardwareString,osVersion:OSVersion) throws ->(modelName:String,String,String,Int)
{
    if let validModelNumber = validModelNumbers[modelName]
    {
        guard validModelNumber.contains(modelNumber) else {
            print("Model Number does not match with Model Name!")
            throw iPhoneError.BadCombination(model : "Model Number does not match with Model Name!")
        }
        if let validHardwareString = validHardwareStrings[modelName]
        {
            guard validHardwareString.contains(hardware) else {
                print("Hardware String does not match with Model Name!")
                throw iPhoneError.BadCombination(model :"Hardware String does not match with Model Name!")
            }
            if let validOsVer = validOsVersion[modelName]
            {
                guard validOsVer.contains(osVersion) else {
                    print("OS Version does not match with Model Name!")
                    throw iPhoneError.BadCombination(model :"OS Version does not match with Model Name!")
                }
                return (modelName.rawValue, modelNumber.rawValue, hardware.rawValue, osVersion.rawValue)
            }
            else
            {
                print("Wrong OS version!")
                throw iPhoneError.WrongOSVersion
            }
        }
        else
        {
            print("Wrong Hardware String!")
            throw iPhoneError.WrongHardwareString
        }
    }
    else
    {
        print("Wrong Model Number!")
        throw iPhoneError.WrongModelNumber
    }
}

var iPhoneOne = try createDevice(.iPhone, modelNumber: .A1203, hardware: .iPhone11, osVersion: .One)
print(iPhoneOne)
