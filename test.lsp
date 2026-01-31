(defun c:RECTABLEtest ( / longueur largeur ret)

  (setq longueur (getreal "\nLongueur de la table (mm) : "))
  (setq largeur  (getreal "\nLargeur de la table (mm) : "))
  (setq ret 40) ;; retombée fixe
  (setq ch 40) ;; chanfrein

  ;1

  (command "_.LINE"
   '(0 0) 
   (list 0 (- ret))""
   )
   ;2

  (command "_.LINE" 
  (list 0 (- ret)) 
  (list ch (- (+ ret ch))) ""
  )
  ;3
  (command "_.LINE" 
  (list ch (- (+ ret ch))) 
  (list (- longueur ch) (- (+ ret ch)))""
  )

  ;4
  (command "_.LINE" 
  (list (- longueur ch) 
  (- (+ ret ch))) (list longueur (- ret)) ""
  )

  ;5
  (command "_.LINE" 
    (list longueur (- ret)) 
    (list longueur 0) ""
  )

  ;6
  (command "_.LINE" 
    (list longueur 0)
    (list (+ longueur ret) 0)""
  )

  ;7
  (command "_.LINE" 
    (list (+ longueur ret) 0)
    (list (+ longueur ch ret) ch)""
  )

  ;8
  (command "_.LINE" 
    (list (+ longueur ch ret) ch)
    (list (+ longueur ch ret) (- largeur ch))""
  )

  ;9
  (command "_.LINE" 
    (list (+ longueur ch ret) (- largeur ch))
    (list (+ longueur ret) largeur)""
  )

  ;10
  (command "_.LINE" 
    (list (+ longueur ret) largeur)
    (list longueur largeur)""
  )

  ;11
  (command "_.LINE" 
    (list longueur largeur)
    (list longueur (+ largeur ret))""
  )


  ;12
  (command "_.LINE" 
    (list longueur (+ largeur ret))
    (list (- longueur ch) (+ largeur ret ch))""
  )

  ;13
  (command "_.LINE" 
    (list (- longueur ch) (+ largeur ret ch))
    (list ch (+ largeur ret ch))""
  )

  ;14
  (command "_.LINE" 
    (list ch (+ largeur ret ch))
    (list 0 (+ largeur ret))""
  )

  ;15
  (command "_.LINE" 
    (list 0 (+ largeur ret))
    (list 0 largeur)""
  )

 ;16
  (command "_.LINE" 
    (list 0 largeur)
    (list (- ret) largeur)""
  )

  ;17
  (command "_.LINE" 
    (list (- ret) largeur)
    (list (- (+ ret ch)) (- largeur ch))""
  )

  ;18
  (command "_.LINE" 
    (list (- (+ ret ch)) (- largeur ch))
    (list (- (+ ret ch)) ch)""
  )

  ;19
  (command "_.LINE" 
    (list (- (+ ret ch)) ch)
    (list (- ret) 0)""
  )

  ;20
  (command "_.LINE" 
    (list (- ret) 0)
    (list 0 0)""
  )

  (princ "\nPatron avec 4 retombées de 50 mm créé avec des lignes.")
  (princ)
)
