
(define (forth amount)
  (*(- amount 2500)0.01))


(define (third amount)
  (cond
    ( ( < amount 2500)(* (- amount 1500)0.0075))
    ( else (  * .0075 1000))
    ))

(define (second amount)
  (cond
    ( ( < amount 1500)(* ( - 1000 amount) .0050) )
    ( else ( * 1000 0.0050))
    ))

(define (first amount)
  (cond
    ( (< amount 500) (* 0.0025 amount))
    ( else (* 0.0025 500))
 ))

(define (payback amount)
  (cond
    ( (<= amount 500) (first amount))
    ( (and ( <= amount 1500) (> amount 500)) (+ (first amount)(second amount)))
    ( (and ( <= amount 2500) (> amount 1500)) (+ (third amount) (second amount) (first amount)))
    ( else (+ (forth amount)(third amount)(second amount)(first amount)))
    )
)
