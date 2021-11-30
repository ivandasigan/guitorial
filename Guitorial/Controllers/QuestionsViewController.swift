//
//  QuestionsViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/7/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit
import AVFoundation
import SwiftGifOrigin

class QuestionsViewController: UIViewController {
    
    var soundPlayer : AVAudioPlayer!
    
    let allQuizQuest = QuizGameBank()
    

    
    @IBOutlet weak var firstRadioAnswerOutlet: UIButton!
    @IBOutlet weak var secondRadioAnswerOutlet: UIButton!
    @IBOutlet weak var thirdRadioAnswerOutlet: UIButton!
    @IBOutlet weak var fourthRadioAnswerOutlet: UIButton!

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var nextBtnOutlet: UIButton!
    @IBOutlet weak var firstChoiceLabel: UILabel!
    @IBOutlet weak var secondChoiceLabel: UILabel!
    @IBOutlet weak var thirdChoiceLabel: UILabel!
    @IBOutlet weak var fourthChoiceLabel: UILabel!
    @IBOutlet weak var questionNumLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    var indexQuest = 0
    var choiceList = [String]()
    var repeat_r = 0
    var hasAnswer = false
    var pickedAnswer = 0
    var delay = 3.0
    var total = 0
    var correct = 1
    var incorrect = 0
    
    var seconds = 60
    var timer = Timer()
    var isTimeRunning = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
        initQuest()
        nextBtnOutlet.isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
            self.runTimer()
        }
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        soundPlayer.stop()
    }
    
    @IBAction func radioAnswerSelected(_ sender: UIButton){
        hasAnswer = true
        nextBtnOutlet.isEnabled = true
        nextBtnOutlet.setTitleColor(UIColor.white, for: .normal)
        let radioSender = sender.tag
        if radioSender == 1{
            if sender.isSelected{
                sender.isSelected = false
            }else{
                pickedAnswer = 0
                sender.isSelected = true
                secondRadioAnswerOutlet.isSelected = false
                thirdRadioAnswerOutlet.isSelected = false
                fourthRadioAnswerOutlet.isSelected = false
                
            }
            sender.bounce()
        }else if radioSender == 2 {
            if sender.isSelected{
                sender.isSelected = false
            }else{
                sender.isSelected = true
                pickedAnswer = 1
                firstRadioAnswerOutlet.isSelected = false
                thirdRadioAnswerOutlet.isSelected = false
                fourthRadioAnswerOutlet.isSelected = false
            }
            sender.bounce()
        }else if radioSender == 3{
            if sender.isSelected{
                sender.isSelected = false
            }else{
                sender.isSelected = true
                pickedAnswer = 2
                firstRadioAnswerOutlet.isSelected = false
                secondRadioAnswerOutlet.isSelected = false
                fourthRadioAnswerOutlet.isSelected = false
            }
            sender.bounce()
        }else if radioSender == 4{
            if sender.isSelected{
                sender.isSelected = false
            }else{
                sender.isSelected = true
                pickedAnswer = 3
                firstRadioAnswerOutlet.isSelected = false
                secondRadioAnswerOutlet.isSelected = false
                thirdRadioAnswerOutlet.isSelected = false
            }
            sender.bounce()
        }
        
    }
    @IBAction func playSound(_ sender: UIBarButtonItem) {
        
        soundPlayer.play()
        
    }
    @IBAction func nextQuestionBtn(_ sender: UIButton) {
        repeat_r = 0
        if indexQuest < 9{
            checkAnswer()
            choiceList.removeAll()
            indexQuest+=1
            updateUI()
            initQuest()
      
        }else{
            soundPlayer.stop()
            timer.invalidate()
            seconds = 60
            print(total)
            let msg = UIAlertController(title: "Quiz Game", message: "Finish", preferredStyle: .alert)
            let action = UIAlertAction(title: "Show Results", style: .default) { (_) in
//
//                self.progressView.frame.size.width = (375 / 9) * 1
//                self.indexQuest = 0
//                self.choiceList.removeAll()
                
                

                self.performSegue(withIdentifier: "segScoreboard", sender: self)
            }
            msg.addAction(action)
            present(msg, animated: true, completion: nil)
        }
        
        firstRadioAnswerOutlet.isSelected = false
        secondRadioAnswerOutlet.isSelected = false
        thirdRadioAnswerOutlet.isSelected = false
        fourthRadioAnswerOutlet.isSelected = false

       nextBtnOutlet.isEnabled = false
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segScore = segue.destination as? ScoreBoardViewController{
                segScore.passTotal = total
                segScore.passCorrectAns = correct
                segScore.passIncorrectAns = incorrect
        }else {
            print("NO View Controller")
        }
        
    }
    
    func updateUI(){
        progressView.frame.size.width = CGFloat((375 / 9) * indexQuest + 2)
        
        nextBtnOutlet.setTitleColor(UIColor.lightGray, for: .normal)
        questionNumLabel.text = "Question \(indexQuest + 1)"
        firstChoiceLabel.alpha = 0.0
        secondChoiceLabel.alpha = 0.0
        thirdChoiceLabel.alpha = 0.0
        fourthChoiceLabel.alpha = 0.0
        
        gifImageView.alpha = 0.0

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
            UIView.animate(withDuration: 0.9, animations: {
                self.gifImageView.alpha = 1.0
                self.gifImageView.loadGif(name: "guessAni")
            })
        }
        
    }
    func initQuest(){
        print(indexQuest)
        let firstQuestSound = allQuizQuest.quizQuestArr[indexQuest].sound
        let firstAnswer = allQuizQuest.quizQuestArr[indexQuest].answer
        repeat{
            let random = Int(arc4random_uniform(10))
            let randQuest = allQuizQuest.quizQuestArr[random].answer
            if randQuest != firstAnswer && !choiceList.contains(randQuest!){
                choiceList.append(randQuest!)
                repeat_r+=1
            }
        }
        while(repeat_r < 3)

        choiceList.append(firstAnswer ?? "")
        choiceList.shuffle()
        print(choiceList[pickedAnswer])
        print("Answer to append\(firstAnswer!)")
        print("Choices \(choiceList)")
        print("Does exsit : \(choiceList.contains(firstAnswer!))")
        UIView.animate(withDuration: 0.9) {
            self.firstChoiceLabel.alpha = 1.0
            self.secondChoiceLabel.alpha = 1.0
            self.thirdChoiceLabel.alpha = 1.0
            self.fourthChoiceLabel.alpha = 1.0
            self.firstChoiceLabel.text = self.choiceList[0]
            self.secondChoiceLabel.text = self.choiceList[1]
            self.thirdChoiceLabel.text = self.choiceList[2]
            self.fourthChoiceLabel.text = self.choiceList[3]
        }

        
        let soundUrl = Bundle.main.url(forResource: firstQuestSound, withExtension: ".m4a")
        do{
            soundPlayer = try AVAudioPlayer(contentsOf:  soundUrl!)
            soundPlayer.prepareToPlay()
        }catch{
            print("Error playing Music\(error)")
        }
        
        soundPlayer.play()
       
    }
    
    func checkAnswer(){
        
        let correctAns = allQuizQuest.quizQuestArr[indexQuest].answer
        if correctAns == choiceList[pickedAnswer]{
            
            print("You got the correct answer")
            total+=10
            correct+=1
            
        }else {
            print("You are wrong")
            incorrect+=1
        }

    }
    func resetTimer(){
        seconds = 10
        timerLabel.text = "\(seconds)s"
    }
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
 
        seconds-=1
        timerLabel.text = "\(seconds)s"
        if seconds == 0 {
            timer.invalidate()
            let msg = UIAlertController(title: "Quiz Game", message: "Finish\nTimes up!", preferredStyle: .alert)
            let action = UIAlertAction(title: "Show Results", style: .default) { (_) in
                self.soundPlayer.stop()
                self.progressView.frame.size.width = (375 / 9) * 1
                self.indexQuest = 0
                self.choiceList.removeAll()
                
                self.timer.invalidate()
                self.seconds = 60
                self.performSegue(withIdentifier: "segScoreboard", sender: self)
            }
            msg.addAction(action)
            present(msg, animated: true, completion: nil)
        }
    }
    
    
}

//                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//                let instantVC = storyBoard.instantiateViewController(withIdentifier: "ScoreboardVC")
//
//
//                self.present(instantVC, animated: true, completion: nil)
