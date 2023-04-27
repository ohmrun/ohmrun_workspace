(ns stx.clone_and_split_stx_workspace.main)

(require '[babashka.process :refer [process check sh pipeline pb shell]])
(require '[babashka.fs :as fs])
(require '[stx.util :as util])

(def sep util/sep)

;; fs/copy-tree 
(defn get-i [] (str (util/get-stx-workspace-dir) sep ".local" sep "stx" sep "i"))

(defn -main [& _args] 
    (shell "git clone https://github.com/ohmrun/stx_workspace/") 
    (shell {:dir "stx_workspace"} "git subtree split -P .local/stx/i --branch extract")
    (shell {:dir "stx_workspace"} "git checkout extract")  
)

