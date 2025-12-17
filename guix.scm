;; SPDX-License-Identifier: MIT
;; SPDX-FileCopyrightText: 2025 Jonathan D. A. Jewell <hyperpolymath>

;; Panoptes - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system cargo)
             ((guix licenses) #:prefix license:)
             (gnu packages base))

(define-public panoptes
  (package
    (name "panoptes")
    (version "3.0.0")
    (source (local-file "." "panoptes-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system cargo-build-system)
    (synopsis "Local AI-powered file scanner and renamer")
    (description "Panoptes is a local AI-powered file scanner and renamer that uses the Moondream vision model via Ollama to intelligently rename files based on visual content. Supports images, PDFs, audio, archives, code files, and documents.")
    (home-page "https://gitlab.com/hyperpolymath/panoptes")
    (license license:expat)))

;; Return package for guix shell
panoptes
