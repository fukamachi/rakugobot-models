(defpackage #:rakugobot-models/performer
  (:use #:cl
        #:mito)
  (:export #:performer
           #:performer-name
           #:performer-furigana
           #:performer-org
           #:performer-fetched-url))
(in-package #:rakugobot-models/performer)

(defclass performer ()
  ((name :col-type (:varchar 128)
         :initarg :name
         :accessor performer-name)
   (furigana :col-type (:varchar 128)
             :initarg :furigana
             :initform ""
             :accessor performer-furigana)
   (org :col-type (:varchar 16)
        :initarg :org
        :initform "unknown"
        :accessor performer-org)
   (fetched-url :col-type (:varchar 256)
                :initarg :fetched-url
                :accessor performer-fetched-url))
  (:metaclass dao-table-class)
  (:unique-keys (name org) fetched-url))
