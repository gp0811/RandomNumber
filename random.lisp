(defun rnd (/ modulus multiplier increment random)
(if (not seed)
(setq seed (getvar "DATE"))
)
(setq modulus 65536
multiplier 25173
increment 13849
seed (rem (+ (* multiplier seed) increment) modulus)
random (/ seed modulus)
)
random
)