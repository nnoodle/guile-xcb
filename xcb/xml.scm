(define-module (xcb xml)
  #:use-module ((xcb xml connection)
                #:select (xcb-connected?
                          xcb-connection-setup
                          xcb-connection-has-extension?
                          xcb-connection-display
                          current-xcb-connection
                          xcb-disconnect!
                          poll-xcb-connection))
  #:use-module ((xcb xml doc) #:select (document-full document-brief))
  #:use-module ((xcb xml auth) #:select (xcb-connect!))
  #:use-module ((xcb xml core)
                #:select (make-new-xid
                          xcb->string
                          out-of-xids
                          xref
                          xset!
                          xref-string
                          enable-big-requests!
                          update-xid-range!
                          xcb-bytes->string
                          xcb-event->vector
                          string->xcb
                          string->xcb2b
                          make-xid))
  #:use-module ((xcb xml union) #:select (xunion-ref))
  #:use-module ((xcb xml enum) #:select (xenum-or xenum-ref xenum-key-ref
                                                  xenum-keys xenum-values))
  #:use-module (xcb xml type)
  #:use-module ((xcb xml records) #:select (make-typed-value typed-value-value))
  #:re-export (make-xid
               poll-xcb-connection
               string->xcb
               string->xcb2b
               xcb->string
               xcb-event->vector
               xid=
               xenum-ref
               xenum-key-ref
               xenum-or
               xenum-keys
               xenum-values
               xcb-bytes->string
               out-of-xids
               enable-big-requests!
               update-xid-range!
               document-full
               document-brief
               xcb-connect!
               xcb-disconnect!
               xcb-connected?
               current-xcb-connection
               xcb-connection-display
               xcb-connection-has-extension?
               (typed-value-value . xid->integer)
               xunion-ref
               xcb-connection-setup
               xref
               xref-string
               xset!
               make-new-xid))

(define-public (xcb-none xcb-type) (make-typed-value 0 xcb-type))
(define-public xcb-current-time 0)
