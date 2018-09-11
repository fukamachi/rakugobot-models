(defpackage #:rakugobot-models/place
  (:use #:cl
        #:mito)
  (:export #:place
           #:place-name
           #:place-address
           #:place-latitude
           #:place-longitude))
(in-package #:rakugobot-models/place)

(defclass place ()
  ((name :col-type (:varchar 64)
         :initarg :name
         :accessor place-name)
   (address :col-type (:varchar 256)
            :initarg :address
            :accessor place-address)
   (latitude :col-type (or :float8 :null)
             :initarg :latitude
             :initform nil
             :accessor place-latitude)
   (longitude :col-type (or :float8 :null)
              :initarg :longitude
              :initform nil
              :accessor place-longitude))
  (:metaclass dao-table-class)
  (:unique-keys (name address)))
