;;;(load "~/Code/propagator/load.scm") ;;TODO put this in a config file

(define (S)
  ((choice (list
            (lambda () (append (S) (S)))
            (lambda () (list 1 0))
            (lambda () (append '(1) (S) '(0)))))))

(define (choice sequence)
  (let* ((index (random-integer (length sequence))))
    (list-ref sequence index)))








