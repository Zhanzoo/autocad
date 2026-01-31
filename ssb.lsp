(defun c:SSB ( / longueur largeur ret)

  (setq longueur (getreal "\nLongueur de la table (mm) : "))
  (setq largeur  (getreal "\nLargeur de la table (mm) : "))
  (setq ret 100) ;; retombée fixe
  (setq pieds 70) ;; pieds
  (setq retour 20) ;; tour
  (setq recul 70 ) ;; recul
  (setq newLongueur (- longueur pieds recul))

  ;1
  (command "_.LINE"
    '(0 0)
    (list 0 (- ret)) ""
  )

  ;2
  (command "_.LINE"
    (list 0 (- ret))
    (list newlongueur (- ret)) ""
  )

  ;3
  (command "_.LINE"
    (list newlongueur (- ret))
    (list newlongueur 0) ""
  )

  ;4
  (command "_.LINE"
    (list newlongueur 0)
    (list (+ newlongueur ret) 0) ""
  )

  ;5
  (command "_.LINE"
    (list (+ newlongueur ret) 0)
    (list (+ newlongueur ret) largeur) ""
  )

  ;6
  (command "_.LINE"
    (list (+ newlongueur ret) largeur)
    (list newlongueur largeur) ""
  )

  ;7
  (command "_.LINE"
    (list newlongueur largeur)
    (list newlongueur (+ largeur ret)) ""
  )

  ;8
  (command "_.LINE"
    (list newlongueur (+ largeur ret))
    (list 0 (+ largeur ret)) ""
  )

  ;9
  (command "_.LINE"
    (list 0 (+ largeur ret))
    (list 0 largeur) ""
  )

  ;10
  (command "_.LINE"
    (list 0 largeur)
    (list (- ret) largeur) ""
  )

  ;11
  (command "_.LINE"
    (list (- ret) largeur)
    (list (- ret) 0) ""
  )

  ;12
  (command "_.LINE"
    (list (- ret) 0)
    '(0 0) ""
  )

  (princ "\nPatron avec 4 retombées sans chanfrein créé avec des lignes.")
  (princ)
)
