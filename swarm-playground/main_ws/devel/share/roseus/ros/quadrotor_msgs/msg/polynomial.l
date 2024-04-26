;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::polynomial)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'polynomial (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::POLYNOMIAL")
  (make-package "QUADROTOR_MSGS::POLYNOMIAL"))

(in-package "ROS")
;;//! \htmlinclude polynomial.msg.html


(defclass quadrotor_msgs::polynomial
  :super ros::object
  :slots (_drone_id _traj_id _start_time _totalDuration _pieceNum _order _Duration _Xcoeff _Ycoeff _Zcoeff _captured ))

(defmethod quadrotor_msgs::polynomial
  (:init
   (&key
    ((:drone_id __drone_id) 0)
    ((:traj_id __traj_id) 0)
    ((:start_time __start_time) (instance ros::time :init))
    ((:totalDuration __totalDuration) 0.0)
    ((:pieceNum __pieceNum) 0)
    ((:order __order) 0)
    ((:Duration __Duration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Xcoeff __Xcoeff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Ycoeff __Ycoeff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:Zcoeff __Zcoeff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:captured __captured) nil)
    )
   (send-super :init)
   (setq _drone_id (round __drone_id))
   (setq _traj_id (round __traj_id))
   (setq _start_time __start_time)
   (setq _totalDuration (float __totalDuration))
   (setq _pieceNum (round __pieceNum))
   (setq _order (round __order))
   (setq _Duration __Duration)
   (setq _Xcoeff __Xcoeff)
   (setq _Ycoeff __Ycoeff)
   (setq _Zcoeff __Zcoeff)
   (setq _captured __captured)
   self)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:traj_id
   (&optional __traj_id)
   (if __traj_id (setq _traj_id __traj_id)) _traj_id)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:totalDuration
   (&optional __totalDuration)
   (if __totalDuration (setq _totalDuration __totalDuration)) _totalDuration)
  (:pieceNum
   (&optional __pieceNum)
   (if __pieceNum (setq _pieceNum __pieceNum)) _pieceNum)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:Duration
   (&optional __Duration)
   (if __Duration (setq _Duration __Duration)) _Duration)
  (:Xcoeff
   (&optional __Xcoeff)
   (if __Xcoeff (setq _Xcoeff __Xcoeff)) _Xcoeff)
  (:Ycoeff
   (&optional __Ycoeff)
   (if __Ycoeff (setq _Ycoeff __Ycoeff)) _Ycoeff)
  (:Zcoeff
   (&optional __Zcoeff)
   (if __Zcoeff (setq _Zcoeff __Zcoeff)) _Zcoeff)
  (:captured
   (&optional (__captured :null))
   (if (not (eq __captured :null)) (setq _captured __captured)) _captured)
  (:serialization-length
   ()
   (+
    ;; int16 _drone_id
    2
    ;; int32 _traj_id
    4
    ;; time _start_time
    8
    ;; float64 _totalDuration
    8
    ;; int16 _pieceNum
    2
    ;; uint8 _order
    1
    ;; float64[] _Duration
    (* 8    (length _Duration)) 4
    ;; float64[] _Xcoeff
    (* 8    (length _Xcoeff)) 4
    ;; float64[] _Ycoeff
    (* 8    (length _Ycoeff)) 4
    ;; float64[] _Zcoeff
    (* 8    (length _Zcoeff)) 4
    ;; bool _captured
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _drone_id
       (write-word _drone_id s)
     ;; int32 _traj_id
       (write-long _traj_id s)
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; float64 _totalDuration
       (sys::poke _totalDuration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _pieceNum
       (write-word _pieceNum s)
     ;; uint8 _order
       (write-byte _order s)
     ;; float64[] _Duration
     (write-long (length _Duration) s)
     (dotimes (i (length _Duration))
       (sys::poke (elt _Duration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Xcoeff
     (write-long (length _Xcoeff) s)
     (dotimes (i (length _Xcoeff))
       (sys::poke (elt _Xcoeff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Ycoeff
     (write-long (length _Ycoeff) s)
     (dotimes (i (length _Ycoeff))
       (sys::poke (elt _Ycoeff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _Zcoeff
     (write-long (length _Zcoeff) s)
     (dotimes (i (length _Zcoeff))
       (sys::poke (elt _Zcoeff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _captured
       (if _captured (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _drone_id
     (setq _drone_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _traj_id
     (setq _traj_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _totalDuration
     (setq _totalDuration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _pieceNum
     (setq _pieceNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _order
     (setq _order (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _Duration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Duration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Duration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Xcoeff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Xcoeff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Xcoeff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Ycoeff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Ycoeff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Ycoeff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _Zcoeff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Zcoeff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Zcoeff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _captured
     (setq _captured (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get quadrotor_msgs::polynomial :md5sum-) "fc5028b9e68e7966d83027aa556694ff")
(setf (get quadrotor_msgs::polynomial :datatype-) "quadrotor_msgs/polynomial")
(setf (get quadrotor_msgs::polynomial :definition-)
      "int16 drone_id
int32 traj_id
time start_time
float64 totalDuration
int16 pieceNum
uint8 order
float64[] Duration
float64[] Xcoeff
float64[] Ycoeff
float64[] Zcoeff
bool captured

")



(provide :quadrotor_msgs/polynomial "fc5028b9e68e7966d83027aa556694ff")


