(defpackage #:rakugobot-models/schedule-performer
  (:use #:cl
        #:mito)
  (:import-from #:rakugobot-models/performer
                #:performer)
  (:import-from #:rakugobot-models/schedule
                #:schedule)
  (:export #:schedule-performer))
(in-package #:rakugobot-models/schedule-performer)

(defclass schedule-performer ()
  ((schedule :col-type schedule
             :initarg :schedule)
   (performer :col-type performer
              :initarg :performer))
  (:metaclass dao-table-class)
  (:primary-key schedule performer))
