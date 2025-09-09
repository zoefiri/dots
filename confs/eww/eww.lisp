

(deflisten battery :initial "-1" `battery`) 
(deflisten batteryleader :initial "" `battery leader`) 

(deflisten workspaces :initial `(box)`
           `tailfix /tmp/herbchange`)
(deflisten volume :initial `0`
           `sleep 100`)
(deflisten volumepx :initial `0`
           `sleep 100`)
(deflisten volumepx_icon :initial `0`
           `sleep 100`)

(deflisten month `ewwdate month`)
(deflisten day `ewwdate day`)
(deflisten hour `ewwdate hour`)
(deflisten minute `ewwdate minute`)

(defwidget bspwm-workspaces []
           (literal :content workspaces)
           )

(defwindow batwin
           :monitor 0 
           :stacking "fg"
           :geometry (geometry 
                       :x "0px"
                       :y "475px"
                       :width "100px"
                       :height "120px"
                       :anchor "top left")
           (overlay :class "batbox"
                    :valign "start"
                    :halign "start"
                    :width 80
                    :height 140
                    (transform
                      :rotate "12"
                      :translate-x "40px"
                      :translate-y "-15px"
                      (image :class "baticon" :image-width 54 :path "images/lightning-flipped.svg")
                      )
                    (transform
                      :rotate "10"
                      :translate-x "51px"
                      :translate-y "-0px"
                      (label :class "battext" :text "${battery}")
                      )
                    ))


(defwindow example
           :monitor 0
           :stacking "bg"
           :geometry (geometry
                       :x "0px"
                       :y "100px"
                       :width "82px"
                       :height "1000px"
                       :anchor "bottom left")
           :stacking "fg"
           :reserve (struts :distance "40px" :side "top")
           :windowtype "dock"
           :wm-ignore false
           (box)
           )

(defwindow example2
           (box :class "bb2"
                (label :class "b3" :text "1")
                (label :class "b4" :text "2")
                ))

(defwindow bottri
           :monitor 0
           :stacking "bg"
           :reserve (struts :distance "40px" :side "top")
           :geometry (geometry 
                       :x "0px"
                       :y "-800px"
                       :width "30px"
                       :height "30px"
                       :anchor "bottom left")
           (overlay
             (transform
               :scale-y "130%"
               (image :class "tray-pyramid" :image-width 82 :path "images/para_bat.svg")
               )))

(defwindow spaces
           :monitor 0
           :reserve (struts :distance "40px" :side "top")
           :geometry (geometry
                       :x "9px"
                       :y "10px"
                       :width "70px"
                       :height "300px"
                       :anchor "top left")
           (transform 
             :scale-y "130%"
             (bspwm-workspaces)
             ))

(defwindow paraspaces
           :monitor 0
           :stacking "bg"
           :reserve (struts :distance "40px" :side "top")
           :geometry (geometry
                       :x "0px"
                       :y "-350px"
                       :width "80px"
                       :height "300px"
                       :anchor "top left")
           (overlay
             (transform
               :scale-y "100%"
               :translate-y "-02px"
               (image :class "tray-pyramid" :image-width 82 :path "images/para_spaces.svg")
               )))

(defwindow mhead
           :monitor 0
           :stacking "fg"
           :reserve (struts :distance "40px" :side "top")
           :geometry (geometry
                       :x "2px"
                       :y "10px"
                       :height "400px"
                       :anchor "top left")
           (transform
             :scale-y "150%"
             :translate-y "-160px"
             (image :class "tray-pyramid" :image-width 82 :path "images/mhead.png")
             ))

(defwindow datehour
           :monitor 0
           :stacking "fg"
           :reserve (struts :distance "40px" :side "top")
           :geometry (geometry
                       :x "0px"
                       :y "600px"
                       :height "400px"
                       :anchor "top left")
           (box
             :orientation "v"
             (transform
               :translate-x "-94px"
               :translate-y "-0px"
               :rotate -9.5
               (box
                 :orientation "v"
                 (transform
                   :translate-x "10px"
                   :translate-y "20px"
                   (box :class "timeicon"
                        (label :class "timeicon" :text "")
                        ))
                 (box
                   (label :class "hour" :text "${hour}")
                   (label :class "timesep" :text "::")
                   (label :class "minute" :text "${minute}")
                   )))

             (transform
               :translate-x "-25px"
               :translate-y "-105px"
               :rotate -9.5
               (box
                 :orientation "v"
                 (transform
                   :translate-x "11px"
                   :translate-y "-0px"
                   (box :class "dateicon"
                        (label :class "dateicon" :text "")
                        ))
                 (box
                   (label :class "month" :text "${month}")
                   (label :class "datesep" :text "//")
                   (label :class "day" :text "${day}")
                   )))))
(defwindow fill
           :monitor 0
           :stacking "bg"
           :geometry (geometry
                       :x "0px"
                       :y "0px"
                       :width "82px"
                       :height "1000px"
                       :anchor "top left")
           :reserve (struts :distance "40px" :side "top")
           :windowtype "dock"
           :wm-ignore false
           (box)
           )

(defwidget meter [percent]
           (overlay 
             (progress 
               :value percent 
               :orientation "v"
               :class "mete"
               :flipped "true"
               :width 0
               :hexpand "true"
               )
             (transform
               :translate-y "${volumepx}px"
               :translate-x "18px"
               (image 
                 :class "meter-top" :image-height 15 :path "images/ur_tri.svg"
                 )
               )
             )
           )

(defwindow vol
           :monitor 0
           :stacking "bg"
           :geometry (geometry
                       :x "0px"
                       :y "0px"
                       :width "50px"
                       :height "400px"
                       :anchor "bottom left")
           :windowtype "dock"
           :wm-ignore false
           (overlay
             :class "noBG"
             (transform
               :translate-x "-10px"
               (meter :percent "${volume}")
               )
             (transform
               :translate-x "10px"
               :translate-y "${volumepx_icon}px"
               (box
                 :class "volicon_box"
                 (transform
                   :rotate 8
                   :translate-x "105px"
                   :translate-y "-10px"
                   (label :class "volicon" :text "墳")
                   )
                 )
               )
             )
           )
