(in-package #:nyxt-user)

;; Enable vi-normal-mode for all standard web browsing buffers
(define-configuration web-buffer
  ((default-modes (append '(nyxt/mode/vi:vi-normal-mode) %slot-value%))))

;; Enable vi-insert-mode by default in the prompt/command buffer
(define-configuration prompt-buffer
  ((default-modes (append '(nyxt/mode/vi:vi-insert-mode) %slot-value%))))
