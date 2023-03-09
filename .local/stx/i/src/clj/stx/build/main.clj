(ns stx.build.main)

(require '[babashka.fs :as fs])
(require '[stx.util :as util])

(def sep util/sep)

;; fs/copy-tree 
(defn get-i [] (str (util/get-stx-workspace-dir) sep ".local" sep "stx" sep "i"))

(defn -main [& _args]
  (prn (util/get-asdf-config-file)))

