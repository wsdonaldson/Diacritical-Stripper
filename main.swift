//
//  main.swift
//  DiacriticalStripper
//
//  Created by William Donaldson on 7/17/18.
//  Copyright © 2018 wsdonaldson. All rights reserved.
//


//File Reading and String Creating
import Foundation
import Cocoa

print("type in the path to your file, then press enter")
let Userpath = readLine()
let VOWELS = ["α", "ά", "ὰ", "ᾶ", "ἀ", "ἁ", "ἄ", "ἅ", "ἂ", "ἃ", "ἆ", "ἇ", "ᾳ", "ᾴ", "ᾲ", "ᾷ", "ᾀ", "ᾁ", "ᾄ", "ᾅ", "ᾂ", "ᾃ", "ᾆ", "ᾇ", "ε", "έ", "ὲ", "ἐ", "ἑ", "ἔ", "ἕ", "ἒ", "ἓ", "η", "ή", "ὴ", "ῆ", "ἠ", "ἡ", "ἤ", "ἥ", "ἢ", "ἣ", "ἦ", "ἧ", "ῃ", "ῄ", "ῂ", "ῇ", "ᾐ", "ᾑ", "ᾔ", "ᾕ", "ᾒ", "ᾓ", "ᾖ", "ᾗ", "ι", "ί", "ὶ", "ῖ", "ἰ", "ἱ", "ἴ", "ἵ", "ἲ", "ἳ", "ἶ", "ἷ", "ο", "ό", "ὸ", "ὀ", "ὁ", "ὄ", "ὅ", "ὂ", "ὃ", "υ", "ύ", "ὺ", "ῦ", "ὐ", "ὑ", "ὔ", "ὕ", "ὒ", "ὓ", "ὖ", "ὗ", "ω", "ώ", "ὼ", "ῶ", "ὠ", "ὡ", "ὤ", "ὥ", "ὢ", "ὣ", "ὦ", "ὧ", "ῳ", "ῴ", "ῲ", "ῷ", "ᾠ", "ᾡ", "ᾤ", "ᾥ", "ᾢ", "ᾣ", "ᾦ", "ᾧ"]

//VOWEL OPTIONS: alpha, epsilon, eta, iota, omicron, upsilon, omega
let ALPHA = ["α", "ά", "ὰ", "ᾶ", "ἀ", "ἁ", "ἄ", "ἅ", "ἂ", "ἃ", "ἆ", "ἇ", "ᾳ", "ᾴ", "ᾲ", "ᾷ", "ᾀ", "ᾁ", "ᾄ", "ᾅ", "ᾂ", "ᾃ", "ᾆ", "ᾇ"]
let EPSILON = ["ε", "έ", "ὲ", "ἐ", "ἑ", "ἔ", "ἕ", "ἒ", "ἓ"]
let ETA = ["η", "ή", "ὴ", "ῆ", "ἠ", "ἡ", "ἤ", "ἥ", "ἢ", "ἣ", "ἦ", "ἧ", "ῃ", "ῄ", "ῂ", "ῇ", "ᾐ", "ᾑ", "ᾔ", "ᾕ", "ᾒ", "ᾓ", "ᾖ", "ᾗ"]
let IOTA = ["ι", "ί", "ὶ", "ῖ", "ἰ", "ἱ", "ἴ", "ἵ", "ἲ", "ἳ", "ἶ", "ἷ"]
let OMICRON = ["ο", "ό", "ὸ", "ὀ", "ὁ", "ὄ", "ὅ", "ὂ", "ὃ"]
let UPSILON = ["υ", "ύ", "ὺ", "ῦ", "ὐ", "ὑ", "ὔ", "ὕ", "ὒ", "ὓ", "ὖ", "ὗ"]
let OMEGA = ["ω", "ώ", "ὼ", "ῶ", "ὠ", "ὡ", "ὤ", "ὥ", "ὢ", "ὣ", "ὦ", "ὧ", "ῳ", "ῴ", "ῲ", "ῷ", "ᾠ", "ᾡ", "ᾤ", "ᾥ", "ᾢ", "ᾣ", "ᾦ", "ᾧ"]

//ACCENT OPTIONS = acute, grave, circumflex
let ACUTE = ["ά", "έ", "ή", "ί", "ό", "ύ", "ώ", "ἄ", "ἅ", "ᾴ", "ᾄ", "ᾅ", "ἔ", "ἕ", "ἤ", "ἥ", "ῄ", "ᾔ", "ᾕ", "ἴ", "ἵ", "ὄ", "ὅ", "ὔ", "ὕ", "ὤ", "ὥ", "ῴ", "ᾤ", "ᾥ"]
let GRAVE = ["ὰ", "ὲ", "ὴ", "ὶ", "ὸ", "ὺ", "ὼ", "ἂ", "ἃ", "ᾲ", "ᾂ", "ᾃ", "ἒ", "ἓ", "ἢ", "ἣ", "ῂ", "ᾒ", "ᾓ", "ἲ", "ἳ", "ὂ", "ὃ", "ὒ", "ὓ", "ὢ", "ὣ", "ῲ", "ᾢ", "ᾣ"]
let CIRCUMFLEX = ["ᾶ", "ἆ", "ἇ", "ᾷ", "ᾆ", "ᾇ", "ῆ", "ἦ", "ἧ", "ῇ", "ᾖ", "ᾗ", "ῖ", "ἶ", "ἷ", "ῦ", "ὖ", "ὗ", "ῶ", "ὦ", "ὧ", "ῷ", "ᾦ", "ᾧ"]
let ACCENT = ACUTE + GRAVE + CIRCUMFLEX

//IOTA SUBSCRIPT OPTIONS = iota subscript, no iota subscript
let SUBSCRIPT = ["ᾳ", "ᾴ", "ᾲ", "ᾷ", "ᾀ", "ᾁ", "ᾄ", "ᾅ", "ᾂ", "ᾃ", "ᾆ", "ᾇ","ῃ", "ῄ", "ῂ", "ῇ", "ᾐ", "ᾑ", "ᾔ", "ᾕ", "ᾒ", "ᾓ", "ᾖ", "ᾗ", "ῳ", "ῴ", "ῲ", "ῷ", "ᾠ", "ᾡ", "ᾤ", "ᾥ", "ᾢ", "ᾣ", "ᾦ", "ᾧ"]
//Breathing Options = Smooth, Rough, none.
let SMOOTH = ["ἀ", "ἄ", "ἂ", "ἆ", "ᾀ", "ᾄ", "ᾂ", "ᾆ", "ἐ", "ἔ", "ἒ", "ἠ", "ἤ", "ἢ", "ἦ", "ᾐ", "ᾔ", "ᾓ", "ᾖ", "ὀ", "ὄ", "ὂ", "ὐ", "ὔ", "ὒ", "ὖ", "ὠ", "ὤ", "ὢ", "ὦ", "ᾠ", "ᾤ", "ᾢ", "ᾦ"]
let ROUGH = ["ἁ", "ἅ", "ἃ", "ἇ", "ᾁ", "ᾅ", "ᾃ", "ᾇ", "ἑ", "ἕ", "ἓ", "ἡ", "ἥ", "ἣ", "ἧ", "ᾑ", "ᾕ", "ᾓ", "ᾗ", "ὁ", "ὅ", "ὃ", "ὑ", "ὕ", "ὓ", "ὗ", "ὡ", "ὥ", "ὣ", "ὧ", "ᾡ", "ᾥ", "ᾣ", "ᾧ"]

var charlist = [Character]()
var unicharlist = [Unicode.UTF16.CodeUnit]()
//var path = ""
var text = try String(contentsOfFile: Userpath!,
                      encoding: String.Encoding(rawValue: String.Encoding.utf16.rawValue))


do {
    var data = "            "
    data.append(text)
    data.append("            ")
    charlist = (Array(data))
    var count = 0
    print(data)
    
    
    
    while count < charlist.count-1 {
        let strindex = data.index(data.startIndex, offsetBy: count)
        let currentChar = charlist[count]
        
        
        if !VOWELS.contains(String(currentChar)) {
            count = count + 1
            //print("Not A vowel")
        }

        else if VOWELS.contains(String(currentChar)) {
            //print("A vowel")
            if ACCENT.contains(String(currentChar)) {
                if ALPHA.contains(String(currentChar)) {
                    if SUBSCRIPT.contains(String(currentChar)) {
                        if SMOOTH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ᾀ", at: strindex)
                            charlist[count] = "ᾀ"
                            count = count + 1
                        }
                        else if ROUGH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ᾁ", at: strindex)
                            charlist[count] = "ᾁ"
                            count = count + 1
                        }
                        else { //NO Breathing
                            data.remove(at: strindex)
                            data.insert("ᾳ", at: strindex)
                            charlist[count] = "ᾳ"
                            count = count + 1
                        }
                    }//Close Subscript
                    
                    else { //NO SUBSCRIPT
                        if SMOOTH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ἀ", at: strindex)
                            charlist[count] = "ἀ"
                            count = count + 1
                        }
                        else if ROUGH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ἁ", at: strindex)
                            charlist[count] = "ἁ"
                            count = count + 1
                        }
                        else { //No Breathing
                            data.remove(at: strindex)
                            data.insert("α", at: strindex)
                            charlist[count] = "α"
                            count = count + 1
                        }
                    }
                } //CLose Alpha Loop
                
                else if EPSILON.contains(String(currentChar)) {
                        if SMOOTH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ἐ", at: strindex)
                            charlist[count] = "ἐ"
                            count = count + 1
                        }
                        else if ROUGH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ἑ", at: strindex)
                            charlist[count] = "ἑ"
                            count = count + 1
                        }
                        else { //NO Breathing
                            data.remove(at: strindex)
                            data.insert("ε", at: strindex)
                            charlist[count] = "ε"
                            count = count + 1
                        }
                    
                }//CLose ΕΠΣΙΛΟΝ Loop
                
                else if ETA.contains(String(currentChar)) {
            if SUBSCRIPT.contains(String(currentChar)) {
                if SMOOTH.contains(String(currentChar)) {
                    data.remove(at: strindex)
                    data.insert("ᾐ", at: strindex)
                    charlist[count] = "ᾐ"
                    count = count + 1
                }
                else if ROUGH.contains(String(currentChar)) {
                    data.remove(at: strindex)
                    data.insert("ᾑ", at: strindex)
                    charlist[count] = "ᾑ"
                    count = count + 1
                }
                else { //NO Breathing
                    data.remove(at: strindex)
                    data.insert("ῃ", at: strindex)
                    charlist[count] = "ῃ"
                    count = count + 1
                }
            }//Close Subscript
                
            else { //NO SUBSCRIPT
                if SMOOTH.contains(String(currentChar)) {
                    data.remove(at: strindex)
                    data.insert("ἠ", at: strindex)
                    charlist[count] = "ἠ"
                    count = count + 1
                }
                else if ROUGH.contains(String(currentChar)) {
                    data.remove(at: strindex)
                    data.insert("ἡ", at: strindex)
                    charlist[count] = "ἡ"
                    count = count + 1
                }
                else { //No Breathing
                    data.remove(at: strindex)
                    data.insert("η", at: strindex)
                    charlist[count] = "η"
                    count = count + 1
                }
            }
        } //CLose ΕΤΑ Loop
                else if IOTA.contains(String(currentChar)) {
                    if SMOOTH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ἰ", at: strindex)
                        charlist[count] = "ἰ"
                        count = count + 1
                    }
                    else if ROUGH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ἱ", at: strindex)
                        charlist[count] = "ἱ"
                        count = count + 1
                    }
                    else { //NO Breathing
                        data.remove(at: strindex)
                        data.insert("ι", at: strindex)
                        charlist[count] = "ι"
                        count = count + 1
                    }
                }// Close IOTA LOOP
                    
                else if OMICRON.contains(String(currentChar)) {
                    if SMOOTH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ὀ", at: strindex)
                        charlist[count] = "ὀ"
                        count = count + 1
                    }
                    else if ROUGH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ὁ", at: strindex)
                        charlist[count] = "ὁ"
                        count = count + 1
                    }
                    else { //NO Breathing
                        data.remove(at: strindex)
                        data.insert("ο", at: strindex)
                        charlist[count] = "ο"
                        count = count + 1
                    }
                } //Close OMICRON Loop
                else if UPSILON.contains(String(currentChar)) {
                    if SMOOTH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ὐ", at: strindex)
                        charlist[count] = "ὐ"
                        count = count + 1
                    }
                    else if ROUGH.contains(String(currentChar)) {
                        data.remove(at: strindex)
                        data.insert("ὑ", at: strindex)
                        charlist[count] = "ὑ"
                        count = count + 1
                    }
                    else { //NO Breathing
                        data.remove(at: strindex)
                        data.insert("υ", at: strindex)
                        charlist[count] = "υ"
                        count = count + 1
                    }
                } //Close UPSILON LOOP
                    
                else if OMEGA.contains(String(currentChar)) {
                    if SUBSCRIPT.contains(String(currentChar)) {
                        if SMOOTH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ᾠ", at: strindex)
                            charlist[count] = "ᾠ"
                            count = count + 1
                        }
                        else if ROUGH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ᾡ", at: strindex)
                            charlist[count] = "ᾡ"
                            count = count + 1
                        }
                        else { //NO Breathing
                            data.remove(at: strindex)
                            data.insert("ῳ", at: strindex)
                            charlist[count] = "ῳ"
                            count = count + 1
                        }
                    }//Close Subscript
                        
                    else { //NO SUBSCRIPT
                        if SMOOTH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ὠ", at: strindex)
                            charlist[count] = "ὠ"
                            count = count + 1
                        }
                        else if ROUGH.contains(String(currentChar)) {
                            data.remove(at: strindex)
                            data.insert("ὡ", at: strindex)
                            charlist[count] = "ὡ"
                            count = count + 1
                        }
                        else { //No Breathing
                            data.remove(at: strindex)
                            data.insert("ω", at: strindex)
                            charlist[count] = "ω"
                            count = count + 1
                        }
                    }
                }//Close OMEGA LOOP
            }//Accented? loop closes
                else {
                    count = count+1
                }
                
               
                
            } //IF VOWEL LOOP CLOSED

        } //WHILE LOOP CLOSED
    print(data)
    }















