# ObjCTryCatch
Simple utility that allows catching Objective C Exceptions in Swift

This utility converts Objective C exeption throwing blocks into swift-style throwing block.

#Usage
For blocks that don't return anything:
    
    do {
        try ObjCTry.doTry {
            //Some Objective C API that might throw...  
        }
    } catch {
        debugPrint(error)
    }
        
For blocks that return an Objective C Object:
    
    let myObj = try? ObjCTry.doTryObj {
        //Some Objective C API that returns an object
    }
        
