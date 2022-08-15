//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by macbookair on 8.05.2022.
//

import UIKit

var sonucEkranİlkSayi : Double = 0
var sayi1 : Int = 0
var sayi2 : Int = 0
var toplam : Int = 0
var bolumToplam : Double = 0
var silinecekToplam : Int = 0
var suAnkiTag : Int = 0
var silinecekBolumToplam : Double = 0




class ViewController: UIViewController {
    
    @IBOutlet weak var sonucEkran: UILabel!
    
    
    
    @IBAction func sayilar(_ sender: UIButton) {
        if sonucEkran.text == String(silinecekToplam) || sonucEkran.text == "0.0" || sonucEkran.text == String(silinecekBolumToplam){
            sonucEkran.text = ""
            sonucEkran.text = sonucEkran.text! + String(sender.tag)
        }else {
            sonucEkran.text = sonucEkran.text! + String(sender.tag)
        }
        
    }
    
    @IBAction func sonucButon(_ sender: UIButton) {
        if sender.tag == 10 {
            sonucEkran.text = String(sonucEkranİlkSayi)
        }
        
        if sender.tag == 12 { // Mod Alma
            sayi1 = Int(sonucEkran.text!) ?? 0
            sonucEkran.text = ""
            suAnkiTag = 12
            
            
        }
        
        if sender.tag == 13 { // bolme
            sayi1 = Int(sonucEkran.text!) ?? 0
            sonucEkran.text = ""
            suAnkiTag = 13
            
            
        }
        
        if sender.tag == 14 { // carpma
            sayi1 = Int(sonucEkran.text!) ?? 0
            sonucEkran.text = ""
            suAnkiTag = 14
            
        }
        if sender.tag == 15 { // cıkarma
            sayi1 = Int(sonucEkran.text!) ?? 0
            sonucEkran.text = ""
            suAnkiTag = 15
            
        }
        
        if sender.tag == 16 { // toplama
            sayi1 = Int(sonucEkran.text!) ?? 0
            sonucEkran.text = ""
            suAnkiTag = 16
            
        }
        if sender.tag == 17 {
            
            sayi2 = Int(sonucEkran.text!) ?? 0
            
            if suAnkiTag == 16 {
                toplam = sayi1 + sayi2
                sonucEkran.text = String(toplam)
                silinecekToplam = Int(sonucEkran.text!) ?? 0
                
            }
            
            else if suAnkiTag == 15 {
                toplam = sayi1 - sayi2
                sonucEkran.text = String(toplam)
                silinecekToplam = Int(sonucEkran.text!) ?? 0
            }
            
            else if suAnkiTag == 14 {
                toplam = sayi1 * sayi2
                sonucEkran.text = String(toplam)
                silinecekToplam = Int(sonucEkran.text!) ?? 0
            }
            
            else if suAnkiTag == 13 {
                bolumToplam = Double(sayi1) / Double(sayi2)
                sonucEkran.text = String(bolumToplam)
                silinecekBolumToplam = Double(sonucEkran.text!) ?? 0
            }
            
            else if suAnkiTag == 12 {
                toplam = (sayi1) % (sayi2)
                sonucEkran.text = String(toplam)
                silinecekToplam = Int(sonucEkran.text!) ?? 0
            }
            
            
            
    }
        
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

    

