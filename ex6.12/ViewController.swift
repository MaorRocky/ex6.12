//
//  ViewController.swift
//  ex6.12
//
//  Created by Scores_Main_User on 1/12/21.
//

import UIKit

class ViewController: UIViewController
{

//    var scrollView: UIScrollView = UIScrollView()


    override func viewDidLoad()
    {
        super.viewDidLoad()

    }


    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        print("started app")
        self.run()

    }


    func run()
    {
        let colors: [UIColor] = [UIColor.red,UIColor.green,UIColor.purple,UIColor.yellow,UIColor.blue]

        let scrollView: UIScrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true


        var prevView: UIView = UIView()

        for i in 0...4
        {
            if i == 0
            {
                prevView.backgroundColor = colors[i]
                prevView.translatesAutoresizingMaskIntoConstraints = false
                scrollView.addSubview(prevView)

                prevView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
                prevView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
                prevView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
                prevView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
            }
            else
            {
                let nextView: UIView = UIView()
                nextView.translatesAutoresizingMaskIntoConstraints = false
                nextView.backgroundColor = colors[i]
                scrollView.addSubview(nextView)

                nextView.leadingAnchor.constraint(equalTo: prevView.trailingAnchor).isActive = true
                nextView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
                nextView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true

                if i == 4
                {
                    nextView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
                }

                prevView = nextView

            }
        }


    }


}

