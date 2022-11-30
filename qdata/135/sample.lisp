; n!(팩토리얼)을 반환
(defun fact (n) (if (<= n 1) 1 (* n (fact (- n 1)))))

; n번째 피보나치 수를 반환
(defun fib (n) (if (<= n 1) n (+ (fib (- n 1) (fib (- n 2)))))

; 1부터 n까지의 총합을 반환
(defun sum1 (n) (if (<= n 1) n (+ n (sum1 (- n 1))))

;; 실행
(format t "fact:~D~%fib:~D~%sum1:~D"
  (fact 5)
  (fib 5)
  (sum1 5))
