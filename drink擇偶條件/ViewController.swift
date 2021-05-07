//
//  ViewController.swift
//  drink擇偶條件
//
//  Created by Rose on 2021/5/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var juiceSelect: UISegmentedControl!
    @IBOutlet weak var sugerSlider: UISlider!
    @IBOutlet weak var iceSlider: UISlider!
    @IBOutlet weak var bubblesSwitch: UISwitch!
    @IBOutlet weak var upgradeSwitch: UISwitch!
        
    @IBOutlet weak var orderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //orderLabel.text = noteText
    }
    
    //預設值
    var juice = "檸檬汁"
    var sugarstr = "微糖"
    var icestr = "微冰"
    var bubbles = ""
    var upgrade = ""
    var noteText = ""
    
    //選果汁
    @IBAction func juiceSelectAction(_ sender: Any) {
        if juiceSelect.selectedSegmentIndex == 0 {
            juice = "檸檬汁"
        } else if juiceSelect.selectedSegmentIndex == 1 {
            juice = "西瓜汁"
        } else if juiceSelect.selectedSegmentIndex == 2 {
            juice = "木瓜牛奶"
        } else {
            juice = "柳橙汁"
        }
    }
    
    // 甜度
    @IBAction func sugerSelect(_ sender: Any) {
        sugerSlider.value.round()
        
        if sugerSlider.value == 0{
            sugarstr = "無糖"
        } else if sugerSlider.value == 1{
            sugarstr = "微糖"
        } else if sugerSlider.value == 2{
            sugarstr = "半糖"
        } else if sugerSlider.value == 3{
            sugarstr = "少糖"
        } else {
            sugarstr = "全糖"
        }
    }
    //冰塊
    @IBAction func iceSelect(_ sender: Any) {
        iceSlider.value.round()
        
        if iceSlider.value == 0{
            icestr = "去冰"
        } else if iceSlider.value == 1{
            icestr = "微冰"
        } else if iceSlider.value == 2{
            icestr = "半冰"
        } else if iceSlider.value == 3{
            icestr = "少冰"
        } else{
            icestr = "正常冰"
        }
    }
    //加珍珠
    @IBAction func bubblesAdd(_ sender: Any) {
        if bubblesSwitch.isOn{
            bubbles = "加珍珠"
        } else {
            bubbles = ""
        }
    }
    //加大杯
    @IBAction func upgrade(_ sender: Any) {
        if upgradeSwitch.isOn{
            upgrade = "大杯"
        } else{
            upgrade = ""
        }
    }
    
    
    @IBAction func noteKeyboard(_ sender: UITextField) {
        noteText = sender.text!
    }
    
    //送出訂單 ，先判斷有沒有貨
    @IBAction func sendOrder(_ sender: UIButton) {
        
        
        if juice == "柳橙汁" {
            orderLabel.text = "柳橙汁已售完，其它果汁也很好喝"
        } else {
            orderLabel.text = "今晚你想來點💭：\n\n \(juice) \(sugarstr) \(icestr) \(bubbles) \(upgrade) \(noteText)"
        }
    }
    // 點任意處收鍵盤
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }



}

