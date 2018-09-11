(uiop:define-package #:rakugobot-models
  (:nicknames #:rakugobot-models/main)
  (:use #:cl)
  (:use-reexport #:rakugobot-models/performer
                 #:rakugobot-models/schedule
                 #:rakugobot-models/schedule-performer
                 #:rakugobot-models/place))
(in-package #:rakugobot-models)
