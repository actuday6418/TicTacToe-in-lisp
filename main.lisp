(defun input(str)
  (princ str)
  (terpri)
  (let ((cmd (read-line)))
    cmd))

(defvar *ret* "a1")
(defun number->position (num)

(if (string-equal num "0") (setq *ret* "a1"))
(if (string-equal num "1") (setq *ret* "a2"))
(if (string-equal num "2") (setq *ret* "a3"))
(if (string-equal num "3") (setq *ret* "a4"))
(if (string-equal num "4") (setq *ret* "b1"))
(if (string-equal num "5") (setq *ret* "b2"))
(if (string-equal num "6") (setq *ret* "b3"))
(if (string-equal num "7") (setq *ret* "b4"))
(if (string-equal num "8") (setq *ret* "c1"))
(if (string-equal num "9") (setq *ret* "c2"))
(if (string-equal num "10") (setq *ret* "c3"))
(if (string-equal num "11") (setq *ret* "c4"))
(if (string-equal num "12") (setq *ret* "d1"))
(if (string-equal num "13") (setq *ret* "d2"))
(if (string-equal num "14") (setq *ret* "d3"))
(if (string-equal num "15") (setq *ret* "d4"))
*ret*
)

(defun check_filled(b)
  (if (and 
        (and 
          (and
            (and (string-not-equal(board-a1 b) " _ ") (string-not-equal (board-a2 b) " _ " ))
            (and (string-not-equal(board-a3 b) " _ ") (string-not-equal (board-a4 b) " _ " ))
            )   
          (and
            (and (string-not-equal(board-b1 b) " _ ") (string-not-equal (board-b2 b) " _ " ))
            (and (string-not-equal(board-b3 b) " _ ") (string-not-equal (board-b4 b) " _ " ))
          )
        )   
        (and 
          (and
            (and (string-not-equal(board-c1 b) " _ ") (string-not-equal (board-c2 b) " _ " ))
            (and (string-not-equal(board-c3 b) " _ ") (string-not-equal (board-c4 b) " _ " ))
            )
          (and
            (and (string-not-equal(board-d1 b) " _ ") (string-not-equal (board-d2 b) " _ " ))
            (and (string-not-equal(board-d3 b) " _ ") (string-not-equal (board-d4 b) " _ " ))
            )
          )
        ) "1" "0"
    )
  )

(defun check_win(b)
  (if ( and (and (string-equal (board-a1 b) (board-a2 b)) (string-equal (board-a1 b) " X ")) (string-equal (board-a1 b) (board-a3 b))) (write " X "))
  (if ( and (and (string-equal (board-a2 b) (board-a3 b)) (string-equal (board-a2 b) " X ")) (string-equal (board-a2 b) (board-a4 b))) (write " X "))
  (if ( and (and (string-equal (board-b1 b) (board-b2 b)) (string-equal (board-b1 b) " X ")) (string-equal (board-b1 b) (board-b3 b))) (write " X "))
  (if ( and (and (string-equal (board-b2 b) (board-b3 b)) (string-equal (board-b2 b) " X ")) (string-equal (board-b2 b) (board-b4 b))) (write " X "))
  (if ( and (and (string-equal (board-c1 b) (board-c2 b)) (string-equal (board-c1 b) " X ")) (string-equal (board-c1 b) (board-c3 b))) (write " X "))
  (if ( and (and (string-equal (board-c2 b) (board-c3 b)) (string-equal (board-c2 b) " X ")) (string-equal (board-c2 b) (board-c4 b))) (write " X "))
  (if ( and (and (string-equal (board-d1 b) (board-d2 b)) (string-equal (board-d1 b) " X ")) (string-equal (board-d1 b) (board-d3 b))) (write " X "))
  (if ( and (and (string-equal (board-d2 b) (board-d3 b)) (string-equal (board-d2 b) " X ")) (string-equal (board-d2 b) (board-d4 b))) (write " X "))

  (if ( and (and (string-equal (board-a1 b) (board-b1 b)) (string-equal (board-a1 b) " X ")) (string-equal (board-a1 b) (board-c1 b))) (write " X "))
  (if ( and (and (string-equal (board-b1 b) (board-c1 b)) (string-equal (board-b1 b) " X ")) (string-equal (board-b1 b) (board-d1 b))) (write " X "))
  (if ( and (and (string-equal (board-a2 b) (board-b2 b)) (string-equal (board-a2 b) " X ")) (string-equal (board-a2 b) (board-c2 b))) (write " X "))
  (if ( and (and (string-equal (board-b2 b) (board-c2 b)) (string-equal (board-b2 b) " X ")) (string-equal (board-b2 b) (board-d2 b))) (write " X "))
  (if ( and (and (string-equal (board-a3 b) (board-b3 b)) (string-equal (board-a3 b) " X ")) (string-equal (board-a3 b) (board-c3 b))) (write " X "))
  (if ( and (and (string-equal (board-b3 b) (board-c3 b)) (string-equal (board-b3 b) " X ")) (string-equal (board-b3 b) (board-d3 b))) (write " X "))
  (if ( and (and (string-equal (board-a4 b) (board-b4 b)) (string-equal (board-a4 b) " X ")) (string-equal (board-a4 b) (board-c4 b))) (write " X "))
  (if ( and (and (string-equal (board-b4 b) (board-c4 b)) (string-equal (board-b4 b) " X ")) (string-equal (board-b4 b) (board-d4 b))) (write " X "))


  (if ( and (and (string-equal (board-a1 b) (board-a2 b)) (string-equal (board-a1 b) " O ")) (string-equal (board-a1 b) (board-a3 b))) (write " O "))
  (if ( and (and (string-equal (board-a2 b) (board-a3 b)) (string-equal (board-a2 b) " O ")) (string-equal (board-a2 b) (board-a4 b))) (write " O "))
  (if ( and (and (string-equal (board-b1 b) (board-b2 b)) (string-equal (board-b1 b) " O ")) (string-equal (board-b1 b) (board-b3 b))) (write " O "))
  (if ( and (and (string-equal (board-b2 b) (board-b3 b)) (string-equal (board-b2 b) " O ")) (string-equal (board-b2 b) (board-b4 b))) (write " O "))
  (if ( and (and (string-equal (board-c1 b) (board-c2 b)) (string-equal (board-c1 b) " O ")) (string-equal (board-c1 b) (board-c3 b))) (write " O "))
  (if ( and (and (string-equal (board-c2 b) (board-c3 b)) (string-equal (board-c2 b) " O ")) (string-equal (board-c2 b) (board-c4 b))) (write " O "))
  (if ( and (and (string-equal (board-d1 b) (board-d2 b)) (string-equal (board-d1 b) " O ")) (string-equal (board-d1 b) (board-d3 b))) (write " O "))
  (if ( and (and (string-equal (board-d2 b) (board-d3 b)) (string-equal (board-d2 b) " O ")) (string-equal (board-d2 b) (board-d4 b))) (write " O "))

  (if ( and (and (string-equal (board-a1 b) (board-b1 b)) (string-equal (board-a1 b) " O ")) (string-equal (board-a1 b) (board-c1 b))) (write " O "))
  (if ( and (and (string-equal (board-b1 b) (board-c1 b)) (string-equal (board-b1 b) " O ")) (string-equal (board-b1 b) (board-d1 b))) (write " O "))
  (if ( and (and (string-equal (board-a2 b) (board-b2 b)) (string-equal (board-a2 b) " O ")) (string-equal (board-a2 b) (board-c2 b))) (write " O "))
  (if ( and (and (string-equal (board-b2 b) (board-c2 b)) (string-equal (board-b2 b) " O ")) (string-equal (board-b2 b) (board-d2 b))) (write " O "))
  (if ( and (and (string-equal (board-a3 b) (board-b3 b)) (string-equal (board-a3 b) " O ")) (string-equal (board-a3 b) (board-c3 b))) (write " O "))
  (if ( and (and (string-equal (board-b3 b) (board-c3 b)) (string-equal (board-b3 b) " O ")) (string-equal (board-b3 b) (board-d3 b))) (write " O "))
  (if ( and (and (string-equal (board-a4 b) (board-b4 b)) (string-equal (board-a4 b) " O ")) (string-equal (board-a4 b) (board-c4 b))) (write " O "))
  (if ( and (and (string-equal (board-b4 b) (board-c4 b)) (string-equal (board-b4 b) " O ")) (string-equal (board-b4 b) (board-d4 b))) (write " O "))
  )
(defstruct (board
             (:print-function
               (lambda (struct stream depth)
                 (declare (ignore depth))
                 (format stream "~A ~A ~A ~A~%~A ~A ~A ~A~%~A ~A ~A ~A~%~A ~A ~A ~A~%"
                         (board-a1 struct)
                         (board-a2 struct)
                         (board-a3 struct)
                         (board-a4 struct)
                         (board-b1 struct)
                         (board-b2 struct)
                         (board-b3 struct)
                         (board-b4 struct)
                         (board-c1 struct)
                         (board-c2 struct)
                         (board-c3 struct)
                         (board-c4 struct)
                         (board-d1 struct)
                         (board-d2 struct)
                         (board-d3 struct)
                         (board-d4 struct)
                         ))))
  a1
  a2 
  a3 
  a4
  b1
  b2 
  b3
  b4
  c1
  c2 
  c3
  c4
  d1
  d2
  d3
  d4
  )

(defvar board_map)

(setq board_map (make-board :a1 " _ "
                            :a2 " _ "
                            :a3 " _ "
                            :a4 " _ "
                            :b1 " _ "
                            :b2 " _ "
                            :b3 " _ "
                            :b4 " _ "
                            :c1 " _ "
                            :c2 " _ "
                            :c3 " _ "
                            :c4 " _ "
                            :d1 " _ "
                            :d2 " _ "
                            :d3 " _ "
                            :d4 " _ "
                            )
      )

(print board_map)

(defvar curr " X ")
(defvar *inp* "d")
(loop
  (if (string-equal (check_filled board_map) "1") (return))
  (
   if (string-equal curr " X ")
          (setq *inp* (input "Enter the position you want to play to (position in <Alphabet><Number> form)(Illegal entry shall cost you a move):"))
          (progn (princ "Computer plays O:")
           (terpri)
           (setq *inp* (number->position (format NIL "~D" (random 16)))) 
           )
   )
  (if (string-equal *inp* "a1") (setf(board-a1 board_map) curr))
  (if (string-equal *inp* "a2") (setf(board-a2 board_map) curr))
  (if (string-equal *inp* "a3") (setf(board-a3 board_map) curr))
  (if (string-equal *inp* "a4") (setf(board-a4 board_map) curr))
  (if (string-equal *inp* "b1") (setf(board-b1 board_map) curr))
  (if (string-equal *inp* "b2") (setf(board-b2 board_map) curr))
  (if (string-equal *inp* "b3") (setf(board-b3 board_map) curr))
  (if (string-equal *inp* "b4") (setf(board-b4 board_map) curr))
  (if (string-equal *inp* "c1") (setf(board-c1 board_map) curr))
  (if (string-equal *inp* "c2") (setf(board-c2 board_map) curr))
  (if (string-equal *inp* "c3") (setf(board-c3 board_map) curr))
  (if (string-equal *inp* "c4") (setf(board-c4 board_map) curr))
  (if (string-equal *inp* "d1") (setf(board-d1 board_map) curr))
  (if (string-equal *inp* "d2") (setf(board-d2 board_map) curr))
  (if (string-equal *inp* "d3") (setf(board-d3 board_map) curr))
  (if (string-equal *inp* "d4") (setf(board-d4 board_map) curr))
  (if (string-equal curr " X ") (setq curr " O ") (setq curr " X "))
  (write board_map)
  (if (string-equal (check_win board_map) " X ") (progn (princ "You win!") (return)))
  (if (string-equal (check_win board_map) " O ") (progn (princ "Computer wins!") (return)))
  (terpri)
  )
