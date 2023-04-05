(ns stx.util)

(def sep (java.io.File/separator))
(defn get-env [str] (System/getenv str))
(defn get-stx-workspace-dir [] (get-env "STX_WORKSPACE_PATH"))
(defn get-srcs-of [key] (get-env (str "SRCS_" key)))
(defn get-outs-of [key] (get-env (str "OUTS_" key)))
(defn get-asdf-config-file [] (get-env "ASDF_CONFIG_FILE"))