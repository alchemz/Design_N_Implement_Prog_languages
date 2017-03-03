(define ack
           (lambda (m n)
                   (if (= m 0)
                          (+ n 1)
                   (if (and(= n 0) (> m 0))
                           (ack (- m 1) 1)
                   (if (and (> n 0) (> m 0))
                           (ack (- m 1) (ack m (- n 1))))
                           ))))
