//
//  PlayPageViewController.swift
//  Lyrico
//
//  Created by Alisha Lakkad on 9/16/17.
//  Copyright © 2017 Alisha Lakkad. All rights reserved.
//

import UIKit
import AVFoundation

class PlayPageViewController: UIViewController {
    
    @IBAction func exitToEndPage(_ sender: Any) {
        performSegue(withIdentifier: "endPage", sender: self)
    }
    var responses = ["Dreaming 'bout the day when you wake up and find": "You Belong With Me - Taylor Swift ",//0
                     "Girl you be shining so bright, strawberry champagne all night" :"That's What I Like - Bruno Mars",//1
                     "My mama don’t like you and she likes everyone": "Love Yourself - Justin Bieber",//2
                     "Baby, I don’t need dollar bills to have fun tonight":"Cheap Thrills - Sia",//3
                     "Then you smiled over your shoulder, For a minute, I was stone-cold sober" : "Say You Won’t Let Go - James Arthur",//4
                     "Baby I'm preying on you tonight, Hunt you down eat you alive" : "Animals - Maroon 5",//5
                     "Got a feeling that I’m going under but I know that I’ll make it out alive" : "Stitches - Shawn Mendes",//6
                     "I never really knew that she can dance like this, she makes a man want to speak Spanish" : "Hips Don’t Lie - Shakira" ,//7
                     "Lately, I've been, I've been losing sleep. Dreaming about the things that we could be" : "Counting Stars - One Republic" ,//8
                     "We're not broken just bent, and we can learn to love again" : "Just Give Me a Reason - Pink" ,//9
                     "If you liked it, then you should have put a ring on it" : "Single Ladies - Beyonce" ,//10
                     "Is this the real life? Is this just fantasy?" : "Bohemian Rhapsody - Pentatonix" ,//11
                     "I’ve been up all night, no sleep" : "All Night - The Vamps" ,//12
                     "We push and pull like a magnet do" : "Shape of You - Ed Sheeran" ,//13
                     "Only know you've been high when you're feeling low, Only hate the road when you're missing home" : "Let Her Go - Passenger" ,//14
                     "Oh, I'm falling so I'm taking my time on my ride, Taking my time on my ride" : "Ride - Twenty One Pilots" ,//15
                     "All I really care is you wake up in my arms" : "One Last Time - Ariana Grande" ,//16
                     "You know you love me, I know you care, Just shout whenever and I'll be there" : "Baby - Justin Bieber" ,//17
                     "I was wondering if after all these years you'd like to meet" : "Hello - Adele",//18
                     "You were the shadow to my light did you feel it" : "Faded - Alan Walker",//19
                    "He's so tall, and handsome as hell, He's so bad but he does it so well" : "Wildest Dreams - Taylor Swift",//20
                    "Don't need permission, Made my decision to test my limits" : "Dangerous Woman - Ariana Grande", //21
                    "He said son can you play me a memory, I'm not really sure how it goes" : "Piano Man - Bily Joel",//22
                    "Easy come, easy go, that's just how you live oh. Take, take, take it all, but you never give" : "Grenade - Bruno Mars", //23
                     "Well I've got thick skin and an elastic heart, But your blade it might be too sharp" : "Elastic Heart - Sia", //24
                    "Waste time with a masterpiece, don't waste time with a masterpiece" : "Cake by the Ocean - DNCE", //25
                    "I don't mind spending every day, Out on your corner in the pouring rain" : "She will be loved - Maroon 5", //26
                    "I don't trust nobody and nobody trusts me" : "Look What You Made Me Do - Taylor Swift",//27
                    "Well I heard there was a secret chord that David played and it pleased the Lord" : "Hallelujah - Jeff Buckley",//28
                    "He cold, he dope, he might sell coke. He always in the air, but he never fly coach" : "Super Bass - Nicki Minaj", //29
                    "I'm so 3008, You so 2000 and late" : "Boom Boom Pow - Black Eyed Peas",//30
                    "So we'll piss off the neighbors, in the place that feels the tears, the place that to lose your fears" : "Pillowtalk - Zayn Malik", //31
                    "When it comes to you there's no crime. Lets' take both of our souls and intertwine" : "2U - David Guetta", //32
                    "I push you out and you come right back" : "Fetish - Selena Gomez",//33
                    "Now I'm out here looking like revenge, Feelin' like ten, the best I've ever been" : "Sorry Not Sorry - Demi Lovato",//34
                    "Cause she walk like a boss, talk like a boss" : "Miss Independent - Ney-Yo",//35
                    "P1 cleaner than your church shoes, ah" : "Starboy - Weeknd",//36
                    "I'll be waiting, all that's left to do is run" : "Love Story - Taylor Swift",//37
                    "She walks like a model, she grants my wishes like a genie in a bottle" : "Cheerleader - OMI", //38
                    "You know I dealt with you the nicest. Nobody touch me, in the righteous" : "Work - Rihanna",//39
                    "I got my first real six-string. Bought it at a five-and-time" : "Summer of '69 - Bryan Adams",//40
                    "The pressure is on, you feel it. But you got it all, believe it" : "Waka Waka - Shakira"]//41
   
    
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBAction func nextButton(_ sender: Any) {
        self.i += 1
        if i == (Array(self.responses.values).count-1){
            nextB.setTitle("Game Results", for: .normal)
            
        }
        if i >= Array(self.responses.values).count {
            print("over")
            performSegue(withIdentifier: "endPage", sender: self)
        }
        else{
        printSong()
        
        song1B.layer.borderColor = UIColor.white.cgColor
        song2B.layer.borderColor = UIColor.white.cgColor
        song3B.layer.borderColor = UIColor.white.cgColor
        song4B.layer.borderColor = UIColor.white.cgColor
        song1B.isEnabled = true
        song2B.isEnabled = true
        song3B.isEnabled = true
        song4B.isEnabled = true
        nextB.isEnabled = false
        }
        }
    
    
    @IBOutlet weak var nextB: UIButton!
    
    var totalPlayed : Int = 0
    var i : Int = 0
    var opt1 : Int = 0
    var opt2 : Int = 0
    var opt3 : Int = 0
    
    var score  : Int = 0
    
    var player: AVAudioPlayer?
    
    //var isSongInList : [Int] = [-1]
    
    @IBAction func song1Button(_ sender: Any) {
        if song1B.currentTitle == Array(self.responses.values)[i]{
            song1B.layer.borderColor = UIColor.green.cgColor
            self.score += 1
            self.totalPlayed += 1
            self.scoreLabel.text = "\(self.score)"
            self.totalLabel.text = "\(self.totalPlayed)"
            playCorrectSound()
            print(score)
            
            }
        else{
            song1B.layer.borderColor = UIColor.red.cgColor
            if song2B.currentTitle == Array(self.responses.values)[i] {
                song2B.layer.borderColor = UIColor.green.cgColor
            }
            if song3B.currentTitle == Array(self.responses.values)[i] {
                song3B.layer.borderColor = UIColor.green.cgColor
            }
            if song4B.currentTitle == Array(self.responses.values)[i] {
                song4B.layer.borderColor = UIColor.green.cgColor
            }
            playWrongSound()
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
        }
        afterPress()
     }
    @IBAction func song2Button(_ sender: Any) {
        if song2B.currentTitle == Array(self.responses.values)[i]{
            song2B.layer.borderColor = UIColor.green.cgColor
            self.score += 1
            self.totalPlayed += 1
            self.scoreLabel.text = "\(self.score)"
            self.totalLabel.text = "\(self.totalPlayed)"
            playCorrectSound()
            print(score)
        }
        else{
            song2B.layer.borderColor = UIColor.red.cgColor
            if song1B.currentTitle == Array(self.responses.values)[i] {
                song1B.layer.borderColor = UIColor.green.cgColor
            }
            if song3B.currentTitle == Array(self.responses.values)[i] {
                song3B.layer.borderColor = UIColor.green.cgColor
            }
            if song4B.currentTitle == Array(self.responses.values)[i] {
                song4B.layer.borderColor = UIColor.green.cgColor
            }
            playWrongSound()
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
        }
        afterPress()
    }
    
    @IBAction func song3Button(_ sender: Any) {
        if song3B.currentTitle == Array(self.responses.values)[i]{
            song3B.layer.borderColor = UIColor.green.cgColor
            self.score += 1
            self.scoreLabel.text = "\(self.score)"
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
            playCorrectSound()
            print(score)
        }
        else{
            song3B.layer.borderColor = UIColor.red.cgColor
            if song2B.currentTitle == Array(self.responses.values)[i] {
                song2B.layer.borderColor = UIColor.green.cgColor
            }
            if song1B.currentTitle == Array(self.responses.values)[i] {
                song1B.layer.borderColor = UIColor.green.cgColor
            }
            if song4B.currentTitle == Array(self.responses.values)[i] {
                song4B.layer.borderColor = UIColor.green.cgColor
            }
            playWrongSound()
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
        }
        afterPress()
    }
    
    @IBAction func song4Button(_ sender: Any) {
        if song4B.currentTitle == Array(self.responses.values)[i]{
        song4B.layer.borderColor = UIColor.green.cgColor
            self.score += 1
            self.scoreLabel.text = "\(self.score)"
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
            playCorrectSound()
            print(score)
    }
    else{
        song4B.layer.borderColor = UIColor.red.cgColor
            if song2B.currentTitle == Array(self.responses.values)[i] {
                song2B.layer.borderColor = UIColor.green.cgColor
            }
            if song3B.currentTitle == Array(self.responses.values)[i] {
                song3B.layer.borderColor = UIColor.green.cgColor
            }
            if song1B.currentTitle == Array(self.responses.values)[i] {
                song1B.layer.borderColor = UIColor.green.cgColor
            }
            playWrongSound()
            self.totalPlayed += 1
            self.totalLabel.text = "\(self.totalPlayed)"
        }
        afterPress()
    }
    
    @IBOutlet weak var lyricLabel: UILabel!
   
    @IBOutlet weak var song1B: UIButton!
    
    @IBOutlet weak var song2B: UIButton!
    
    @IBOutlet weak var song3B: UIButton!
    
    @IBOutlet weak var song4B: UIButton!
    
    func afterPress(){
        song1B.isEnabled = false
        song2B.isEnabled = false
        song3B.isEnabled = false
        song4B.isEnabled = false
        nextB.isEnabled = true
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.lyricLabel.text = (self. as? String)
        //print(self.responses["Dreaming 'bout the day when you wake up and find"]!)
        // Do any additional setup after loading the view.
        
       song1B.layer.cornerRadius = 5
       song1B.layer.borderWidth = 1
       song1B.layer.borderColor = UIColor.white.cgColor
        
        song2B.layer.cornerRadius = 5
        song2B.layer.borderWidth = 1
        song2B.layer.borderColor = UIColor.white.cgColor

        song3B.layer.cornerRadius = 5
        song3B.layer.borderWidth = 1
        song3B.layer.borderColor = UIColor.white.cgColor

        song4B.layer.cornerRadius = 5
        song4B.layer.borderWidth = 1
        song4B.layer.borderColor = UIColor.white.cgColor

        nextB.isEnabled = false
        
        printSong()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func printSong(){
        nextB.isEnabled = false
        self.lyricLabel.text = Array(self.responses.keys)[i]
        options()
        
    }
    func options(){
        let songs = Array(self.responses.values)
        let ranopt = arc4random_uniform(3) + 1
        opt1 =  Int(arc4random_uniform(40))
        opt2 = Int(arc4random_uniform(40))
        opt3 = Int(arc4random_uniform(40))
        while true {
            if opt1==i || opt1==opt2 || opt1==opt3{
                opt1 =  Int(arc4random_uniform(40))
            }
           else if opt2==i || opt2==opt1 || opt2==opt3{
                opt2 =  Int(arc4random_uniform(40))
            }
            else if opt3==i || opt3==opt2 || opt3==opt1{
                opt3 =  Int(arc4random_uniform(40))
            }
            else{
                break
            }
        }
        
        if ranopt == 1{
           // song1Button.setTitle("hey", forState: .Normal)
            song1B.setTitle(songs[i], for: .normal)
            song2B.setTitle(songs[opt1], for: .normal)
            song3B.setTitle(songs[opt2], for: .normal)
            song4B.setTitle(songs[opt3], for: .normal)
        }
        
        if ranopt == 2{
            song2B.setTitle(songs[i], for: .normal)
            song1B.setTitle(songs[opt1], for: .normal)
            song3B.setTitle(songs[opt2], for: .normal)
            song4B.setTitle(songs[opt3], for: .normal)
          
            
        }
        
        if ranopt == 3{
            song3B.setTitle(songs[i], for: .normal)
            song2B.setTitle(songs[opt1], for: .normal)
            song1B.setTitle(songs[opt2], for: .normal)
            song4B.setTitle(songs[opt3], for: .normal)
        }
        
        if ranopt == 4{
            song4B.setTitle(songs[i], for: .normal)
            song2B.setTitle(songs[opt1], for: .normal)
            song3B.setTitle(songs[opt2], for: .normal)
            song1B.setTitle(songs[opt3], for: .normal)
        }
        
        
    }
    
    
    func playCorrectSound() {
        let url = Bundle.main.url(forResource: "correctSoundLyrico", withExtension: "wav" )!
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }

    }
    func playWrongSound() {
        let url = Bundle.main.url(forResource: "wrongSoundLyrico", withExtension: "wav" )!
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destination1 = segue.destination as! CongratsViewController
        destination1.score = Int(score)
        let destination2 = segue.destination as! CongratsViewController
        destination2.totalPlayed = Int(totalPlayed)
    }
    

}
