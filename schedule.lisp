(defpackage #:rakugobot-models/schedule
  (:use #:cl
        #:mito)
  (:import-from #:rakugobot-models/place
                #:place)
  (:export #:schedule
           #:schedule-title
           #:schedule-start-date
           #:schedule-end-date
           #:schedule-start-time
           #:schedule-end-time
           #:schedule-fetched-url
           #:schedule-place))
(in-package #:rakugobot-models/schedule)

(defclass schedule ()
  ((title :col-type (:varchar 256)
          :initarg :title
          :accessor schedule-title)
   (start-date :col-type :date
               :initarg :start-date
               :accessor schedule-start-date)
   (end-date :col-type :date
             :initarg :end-date
             :accessor schedule-end-date)
   (start-time :col-type :time
               :initarg :start-time
               :accessor schedule-start-time)
   (end-time :col-type :time
             :initarg :end-time
             :accessor schedule-end-time)
   (fetched-url :col-type (:varchar 256)
                :initarg :fetched-url
                :accessor schedule-fetched-url)
   (place :col-type place
          :initarg :place
          :accessor schedule-place))
  (:metaclass dao-table-class))
