;;; Задание 3
;;; Сенанов
;;; Заменить в исходном списке все вхождения заданного значения другим
(defun rep (lst w r) 
  (cond ((null lst) nil)
        ((equal (car lst) w) (cons r (rep (cdr lst) w r)))
        ((listp (car lst)) (cons (rep (car lst) w r) (rep (cdr lst) w r)))
        (t (cons  (car lst) (rep (cdr lst) w r)))))
;;; (rep `(1 2 3 ((( 1 2 3) ( 1 2 3)))) 1 `a)
;;; (A 2 3 (((A 2 3) (A 2 3))))

;;;	-------------------------------------------------------------
;;; Задание 9
;;; Сенанов
;;; Разбить список на два списка: 1 - чётные числа, 2 - нечётные числа.
;;;	
(defun чет/нечет (lst &optional even odd)
  (cond ((null lst) (list (reverse even) (reverse odd)))
        ((evenp (car lst)) (чет/нечет (cdr lst) (cons (car lst) even) odd))
        (t (чет/нечет (cdr lst) even (cons (car lst) odd)))))
;;;
;;; (чет/нечет '(1 2 3 4 5 6 7 8 9))
;;; ((2 4 6 8) (1 3 5 7 9))
;;;
;;; (чет/нечет '(75 19 26 1 4 662 59 2 48 3 8 4 4 94))
;;; ((26 4 662 2 48 8 4 4 94) (75 19 1 59 3))
;;;
;;;
;;; Задание 9
;;; Сенанов
;;; Разбить список на два списка: 1 - чётные числа, 2 - нечётные числа.
;;;
(defun чет/нечет (lst &optional even odd &aux (a (car lst)) (z (cdr lst)))
  (cond ((null lst) (list (reverse even) (reverse odd)))
        ((evenp a) (чет/нечет z (cons a even) odd))
        (t (чет/нечет z even (cons a odd)))))
;;;
;;; (чет/нечет '(1 2 3 4 5 6 7 8 9))
;;; ((2 4 6 8) (1 3 5 7 9))
;;;
;;; (чет/нечет '(75 19 26 1 4 662 59 2 48 3 8 4 4 94))
;;; ((26 4 662 2 48 8 4 4 94) (75 19 1 59 3))
;;;	-------------------------------------------------------------
;;;;;; Задание 15
;;; Сенанов
;;; Найти скалярное произведение векторов
(defun произв (x y)
  (cond ((and (null x) (null y)) 0)
        ((or (null x) (null y)) (print "список не равен") 0)
        (t (+ (* (car x) (car y)) (произв (cdr x) (cdr y))))))
;;;
;;; (произв '(1 2 3) '(1 2 3))
;;; 14
;;; (произв '(1 2 3 4 5) '(1 2 3))
;;; список не равен
;;; (произв '(1 2 3) '(1 2 3 4 5))
;;; список не равен
;;;	-------------------------------------------------------------
;;;;;; Задание 19
;;; Сенанов
;;; Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный спи-
;;; сок, элементом которого на самом глубоком уровне является N.
(defun task (n &optional (k n))
  (cond ((zerop k) n)
        (t (list (task n (1- k))))))
;;;
;;; (task 4)
;;; ((((4))))
;;;	-------------------------------------------------------------
