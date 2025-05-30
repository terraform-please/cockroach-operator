resource "kubernetes_manifest" "customresourcedefinition_crdbclusters_crdb_cockroachlabs_com" {
  manifest = {
    "apiVersion" = "apiextensions.k8s.io/v1"
    "kind" = "CustomResourceDefinition"
    "metadata" = {
      "annotations" = {
        "controller-gen.kubebuilder.io/version" = "(unknown)"
      }
      "name" = "crdbclusters.crdb.cockroachlabs.com"
    }
    "spec" = {
      "group" = "crdb.cockroachlabs.com"
      "names" = {
        "categories" = [
          "all",
          "cockroachdb",
        ]
        "kind" = "CrdbCluster"
        "listKind" = "CrdbClusterList"
        "plural" = "crdbclusters"
        "shortNames" = [
          "crdb",
        ]
        "singular" = "crdbcluster"
      }
      "scope" = "Namespaced"
      "versions" = [
        {
          "name" = "v1alpha1"
          "schema" = {
            "openAPIV3Schema" = {
              "description" = "CrdbCluster is the CRD for the cockroachDB clusters API"
              "properties" = {
                "apiVersion" = {
                  "description" = "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources"
                  "type" = "string"
                }
                "kind" = {
                  "description" = "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
                  "type" = "string"
                }
                "metadata" = {
                  "type" = "object"
                }
                "spec" = {
                  "description" = "CrdbClusterSpec defines the desired state of a CockroachDB Cluster that the operator maintains."
                  "properties" = {
                    "additionalAnnotations" = {
                      "additionalProperties" = {
                        "type" = "string"
                      }
                      "description" = "(Optional) Additional custom resource annotations that are added to all resources. Changing `AdditionalAnnotations` field will result in cockroachDB cluster restart."
                      "type" = "object"
                    }
                    "additionalArgs" = {
                      "description" = "(Optional) Additional command line arguments for the `cockroach` binary Default: \"\""
                      "items" = {
                        "type" = "string"
                      }
                      "type" = "array"
                    }
                    "additionalLabels" = {
                      "additionalProperties" = {
                        "type" = "string"
                      }
                      "description" = "(Optional) Additional custom resource labels that are added to all resources"
                      "type" = "object"
                    }
                    "affinity" = {
                      "description" = "(Optional) If specified, the pod's scheduling constraints"
                      "properties" = {
                        "nodeAffinity" = {
                          "description" = "Describes node affinity scheduling rules for the pod."
                          "properties" = {
                            "preferredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."
                              "items" = {
                                "description" = "An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op)."
                                "properties" = {
                                  "preference" = {
                                    "description" = "A node selector term, associated with the corresponding weight."
                                    "properties" = {
                                      "matchExpressions" = {
                                        "description" = "A list of node selector requirements by node's labels."
                                        "items" = {
                                          "description" = "A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "The label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                      "matchFields" = {
                                        "description" = "A list of node selector requirements by node's fields."
                                        "items" = {
                                          "description" = "A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "The label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                    }
                                    "type" = "object"
                                  }
                                  "weight" = {
                                    "description" = "Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100."
                                    "format" = "int32"
                                    "type" = "integer"
                                  }
                                }
                                "required" = [
                                  "preference",
                                  "weight",
                                ]
                                "type" = "object"
                              }
                              "type" = "array"
                            }
                            "requiredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node."
                              "properties" = {
                                "nodeSelectorTerms" = {
                                  "description" = "Required. A list of node selector terms. The terms are ORed."
                                  "items" = {
                                    "description" = "A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm."
                                    "properties" = {
                                      "matchExpressions" = {
                                        "description" = "A list of node selector requirements by node's labels."
                                        "items" = {
                                          "description" = "A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "The label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                      "matchFields" = {
                                        "description" = "A list of node selector requirements by node's fields."
                                        "items" = {
                                          "description" = "A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "The label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                    }
                                    "type" = "object"
                                  }
                                  "type" = "array"
                                }
                              }
                              "required" = [
                                "nodeSelectorTerms",
                              ]
                              "type" = "object"
                            }
                          }
                          "type" = "object"
                        }
                        "podAffinity" = {
                          "description" = "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."
                          "properties" = {
                            "preferredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
                              "items" = {
                                "description" = "The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)"
                                "properties" = {
                                  "podAffinityTerm" = {
                                    "description" = "Required. A pod affinity term, associated with the corresponding weight."
                                    "properties" = {
                                      "labelSelector" = {
                                        "description" = "A label query over a set of resources, in this case pods."
                                        "properties" = {
                                          "matchExpressions" = {
                                            "description" = "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                            "items" = {
                                              "description" = "A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                              "properties" = {
                                                "key" = {
                                                  "description" = "key is the label key that the selector applies to."
                                                  "type" = "string"
                                                }
                                                "operator" = {
                                                  "description" = "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."
                                                  "type" = "string"
                                                }
                                                "values" = {
                                                  "description" = "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                                  "items" = {
                                                    "type" = "string"
                                                  }
                                                  "type" = "array"
                                                }
                                              }
                                              "required" = [
                                                "key",
                                                "operator",
                                              ]
                                              "type" = "object"
                                            }
                                            "type" = "array"
                                          }
                                          "matchLabels" = {
                                            "additionalProperties" = {
                                              "type" = "string"
                                            }
                                            "description" = "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                            "type" = "object"
                                          }
                                        }
                                        "type" = "object"
                                      }
                                      "namespaces" = {
                                        "description" = "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""
                                        "items" = {
                                          "type" = "string"
                                        }
                                        "type" = "array"
                                      }
                                      "topologyKey" = {
                                        "description" = "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."
                                        "type" = "string"
                                      }
                                    }
                                    "required" = [
                                      "topologyKey",
                                    ]
                                    "type" = "object"
                                  }
                                  "weight" = {
                                    "description" = "weight associated with matching the corresponding podAffinityTerm, in the range 1-100."
                                    "format" = "int32"
                                    "type" = "integer"
                                  }
                                }
                                "required" = [
                                  "podAffinityTerm",
                                  "weight",
                                ]
                                "type" = "object"
                              }
                              "type" = "array"
                            }
                            "requiredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
                              "items" = {
                                "description" = "Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running"
                                "properties" = {
                                  "labelSelector" = {
                                    "description" = "A label query over a set of resources, in this case pods."
                                    "properties" = {
                                      "matchExpressions" = {
                                        "description" = "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                        "items" = {
                                          "description" = "A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "key is the label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                      "matchLabels" = {
                                        "additionalProperties" = {
                                          "type" = "string"
                                        }
                                        "description" = "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                        "type" = "object"
                                      }
                                    }
                                    "type" = "object"
                                  }
                                  "namespaces" = {
                                    "description" = "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""
                                    "items" = {
                                      "type" = "string"
                                    }
                                    "type" = "array"
                                  }
                                  "topologyKey" = {
                                    "description" = "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."
                                    "type" = "string"
                                  }
                                }
                                "required" = [
                                  "topologyKey",
                                ]
                                "type" = "object"
                              }
                              "type" = "array"
                            }
                          }
                          "type" = "object"
                        }
                        "podAntiAffinity" = {
                          "description" = "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."
                          "properties" = {
                            "preferredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
                              "items" = {
                                "description" = "The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)"
                                "properties" = {
                                  "podAffinityTerm" = {
                                    "description" = "Required. A pod affinity term, associated with the corresponding weight."
                                    "properties" = {
                                      "labelSelector" = {
                                        "description" = "A label query over a set of resources, in this case pods."
                                        "properties" = {
                                          "matchExpressions" = {
                                            "description" = "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                            "items" = {
                                              "description" = "A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                              "properties" = {
                                                "key" = {
                                                  "description" = "key is the label key that the selector applies to."
                                                  "type" = "string"
                                                }
                                                "operator" = {
                                                  "description" = "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."
                                                  "type" = "string"
                                                }
                                                "values" = {
                                                  "description" = "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                                  "items" = {
                                                    "type" = "string"
                                                  }
                                                  "type" = "array"
                                                }
                                              }
                                              "required" = [
                                                "key",
                                                "operator",
                                              ]
                                              "type" = "object"
                                            }
                                            "type" = "array"
                                          }
                                          "matchLabels" = {
                                            "additionalProperties" = {
                                              "type" = "string"
                                            }
                                            "description" = "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                            "type" = "object"
                                          }
                                        }
                                        "type" = "object"
                                      }
                                      "namespaces" = {
                                        "description" = "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""
                                        "items" = {
                                          "type" = "string"
                                        }
                                        "type" = "array"
                                      }
                                      "topologyKey" = {
                                        "description" = "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."
                                        "type" = "string"
                                      }
                                    }
                                    "required" = [
                                      "topologyKey",
                                    ]
                                    "type" = "object"
                                  }
                                  "weight" = {
                                    "description" = "weight associated with matching the corresponding podAffinityTerm, in the range 1-100."
                                    "format" = "int32"
                                    "type" = "integer"
                                  }
                                }
                                "required" = [
                                  "podAffinityTerm",
                                  "weight",
                                ]
                                "type" = "object"
                              }
                              "type" = "array"
                            }
                            "requiredDuringSchedulingIgnoredDuringExecution" = {
                              "description" = "If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
                              "items" = {
                                "description" = "Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running"
                                "properties" = {
                                  "labelSelector" = {
                                    "description" = "A label query over a set of resources, in this case pods."
                                    "properties" = {
                                      "matchExpressions" = {
                                        "description" = "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                        "items" = {
                                          "description" = "A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                          "properties" = {
                                            "key" = {
                                              "description" = "key is the label key that the selector applies to."
                                              "type" = "string"
                                            }
                                            "operator" = {
                                              "description" = "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."
                                              "type" = "string"
                                            }
                                            "values" = {
                                              "description" = "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                              "items" = {
                                                "type" = "string"
                                              }
                                              "type" = "array"
                                            }
                                          }
                                          "required" = [
                                            "key",
                                            "operator",
                                          ]
                                          "type" = "object"
                                        }
                                        "type" = "array"
                                      }
                                      "matchLabels" = {
                                        "additionalProperties" = {
                                          "type" = "string"
                                        }
                                        "description" = "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                        "type" = "object"
                                      }
                                    }
                                    "type" = "object"
                                  }
                                  "namespaces" = {
                                    "description" = "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""
                                    "items" = {
                                      "type" = "string"
                                    }
                                    "type" = "array"
                                  }
                                  "topologyKey" = {
                                    "description" = "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."
                                    "type" = "string"
                                  }
                                }
                                "required" = [
                                  "topologyKey",
                                ]
                                "type" = "object"
                              }
                              "type" = "array"
                            }
                          }
                          "type" = "object"
                        }
                      }
                      "type" = "object"
                    }
                    "cache" = {
                      "description" = "(Optional) The total size for caches (`--cache` command line parameter) Default: \"25%\""
                      "type" = "string"
                    }
                    "clientTLSSecret" = {
                      "description" = "(Optional) The secret with a certificate and a private key for root database user Default: \"\""
                      "type" = "string"
                    }
                    "cockroachDBVersion" = {
                      "description" = "(Optional) CockroachDBVersion sets the explicit version of the cockroachDB image Default: \"\""
                      "type" = "string"
                    }
                    "dataStore" = {
                      "description" = "Database disk storage configuration"
                      "properties" = {
                        "hostPath" = {
                          "description" = "(Optional) Directory from the host node's filesystem"
                          "properties" = {
                            "path" = {
                              "description" = "Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                              "type" = "string"
                            }
                            "type" = {
                              "description" = "Type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                              "type" = "string"
                            }
                          }
                          "required" = [
                            "path",
                          ]
                          "type" = "object"
                        }
                        "pvc" = {
                          "description" = "(Optional) Persistent volume to use"
                          "properties" = {
                            "source" = {
                              "description" = "(Optional) Existing PVC in the same namespace"
                              "properties" = {
                                "claimName" = {
                                  "description" = "ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
                                  "type" = "string"
                                }
                                "readOnly" = {
                                  "description" = "Will force the ReadOnly setting in VolumeMounts. Default false."
                                  "type" = "boolean"
                                }
                              }
                              "required" = [
                                "claimName",
                              ]
                              "type" = "object"
                            }
                            "spec" = {
                              "description" = "(Optional) PVC to request a new persistent volume"
                              "properties" = {
                                "accessModes" = {
                                  "description" = "AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
                                  "items" = {
                                    "type" = "string"
                                  }
                                  "type" = "array"
                                }
                                "dataSource" = {
                                  "description" = "This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source."
                                  "properties" = {
                                    "apiGroup" = {
                                      "description" = "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
                                      "type" = "string"
                                    }
                                    "kind" = {
                                      "description" = "Kind is the type of resource being referenced"
                                      "type" = "string"
                                    }
                                    "name" = {
                                      "description" = "Name is the name of resource being referenced"
                                      "type" = "string"
                                    }
                                  }
                                  "required" = [
                                    "kind",
                                    "name",
                                  ]
                                  "type" = "object"
                                }
                                "resources" = {
                                  "description" = "Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources"
                                  "properties" = {
                                    "limits" = {
                                      "additionalProperties" = {
                                        "anyOf" = [
                                          {
                                            "type" = "integer"
                                          },
                                          {
                                            "type" = "string"
                                          },
                                        ]
                                        "pattern" = "^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$"
                                        "x-kubernetes-int-or-string" = true
                                      }
                                      "description" = "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                                      "type" = "object"
                                    }
                                    "requests" = {
                                      "additionalProperties" = {
                                        "anyOf" = [
                                          {
                                            "type" = "integer"
                                          },
                                          {
                                            "type" = "string"
                                          },
                                        ]
                                        "pattern" = "^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$"
                                        "x-kubernetes-int-or-string" = true
                                      }
                                      "description" = "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                                      "type" = "object"
                                    }
                                  }
                                  "type" = "object"
                                }
                                "selector" = {
                                  "description" = "A label query over volumes to consider for binding."
                                  "properties" = {
                                    "matchExpressions" = {
                                      "description" = "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                      "items" = {
                                        "description" = "A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values."
                                        "properties" = {
                                          "key" = {
                                            "description" = "key is the label key that the selector applies to."
                                            "type" = "string"
                                          }
                                          "operator" = {
                                            "description" = "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."
                                            "type" = "string"
                                          }
                                          "values" = {
                                            "description" = "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                            "items" = {
                                              "type" = "string"
                                            }
                                            "type" = "array"
                                          }
                                        }
                                        "required" = [
                                          "key",
                                          "operator",
                                        ]
                                        "type" = "object"
                                      }
                                      "type" = "array"
                                    }
                                    "matchLabels" = {
                                      "additionalProperties" = {
                                        "type" = "string"
                                      }
                                      "description" = "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                      "type" = "object"
                                    }
                                  }
                                  "type" = "object"
                                }
                                "storageClassName" = {
                                  "description" = "Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
                                  "type" = "string"
                                }
                                "volumeMode" = {
                                  "description" = "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."
                                  "type" = "string"
                                }
                                "volumeName" = {
                                  "description" = "VolumeName is the binding reference to the PersistentVolume backing this claim."
                                  "type" = "string"
                                }
                              }
                              "type" = "object"
                            }
                          }
                          "type" = "object"
                        }
                        "supportsAutoResize" = {
                          "description" = "(Optional) SupportsAutoResize marks that a PVC will resize without restarting the entire cluster Default: false"
                          "type" = "boolean"
                        }
                      }
                      "type" = "object"
                    }
                    "grpcPort" = {
                      "description" = "(Optional) The database port (`--port` CLI parameter when starting the service) Default: 26258"
                      "format" = "int32"
                      "type" = "integer"
                    }
                    "httpPort" = {
                      "description" = "(Optional) The web UI port (`--http-port` CLI parameter when starting the service) Default: 8080"
                      "format" = "int32"
                      "type" = "integer"
                    }
                    "image" = {
                      "description" = "Container image information"
                      "properties" = {
                        "name" = {
                          "description" = "Container image with supported CockroachDB version. This defaults to the version pinned to the operator and requires a full container and tag/sha name. For instance: cockroachdb/cockroachdb:v20.1"
                          "type" = "string"
                        }
                        "pullPolicy" = {
                          "description" = "(Optional) PullPolicy for the image, which defaults to IfNotPresent. Default: IfNotPresent"
                          "type" = "string"
                        }
                        "pullSecret" = {
                          "description" = "(Optional) Secret name containing the dockerconfig to use for a registry that requires authentication. The secret must be configured first by the user."
                          "type" = "string"
                        }
                      }
                      "required" = [
                        "name",
                      ]
                      "type" = "object"
                    }
                    "maxSQLMemory" = {
                      "description" = "(Optional) The maximum in-memory storage capacity available to store temporary data for SQL queries (`--max-sql-memory` parameter) Default: \"25%\""
                      "type" = "string"
                    }
                    "maxUnavailable" = {
                      "description" = "(Optional) The maximum number of pods that can be unavailable during a rolling update. This number is set in the PodDistruptionBudget and defaults to 1."
                      "format" = "int32"
                      "type" = "integer"
                    }
                    "minAvailable" = {
                      "description" = "(Optional) The min number of pods that can be unavailable during a rolling update. This number is set in the PodDistruptionBudget and defaults to 1."
                      "format" = "int32"
                      "type" = "integer"
                    }
                    "nodeSelector" = {
                      "additionalProperties" = {
                        "type" = "string"
                      }
                      "description" = "(Optional) If specified, the pod's nodeSelector"
                      "type" = "object"
                    }
                    "nodeTLSSecret" = {
                      "description" = "(Optional) The secret with certificates and a private key for the TLS endpoint on the database port. The standard naming of files is expected (tls.key, tls.crt, ca.crt) Default: \"\""
                      "type" = "string"
                    }
                    "nodes" = {
                      "description" = "Number of nodes (pods) in the cluster"
                      "format" = "int32"
                      "minimum" = 3
                      "type" = "integer"
                    }
                    "podEnvVariables" = {
                      "description" = "(Optional) PodEnvVariables is a slice of environment variables that are added to the pods Default: (empty list)"
                      "items" = {
                        "description" = "EnvVar represents an environment variable present in a Container."
                        "properties" = {
                          "name" = {
                            "description" = "Name of the environment variable. Must be a C_IDENTIFIER."
                            "type" = "string"
                          }
                          "value" = {
                            "description" = "Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."
                            "type" = "string"
                          }
                          "valueFrom" = {
                            "description" = "Source for the environment variable's value. Cannot be used if value is not empty."
                            "properties" = {
                              "configMapKeyRef" = {
                                "description" = "Selects a key of a ConfigMap."
                                "properties" = {
                                  "key" = {
                                    "description" = "The key to select."
                                    "type" = "string"
                                  }
                                  "name" = {
                                    "description" = "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"
                                    "type" = "string"
                                  }
                                  "optional" = {
                                    "description" = "Specify whether the ConfigMap or its key must be defined"
                                    "type" = "boolean"
                                  }
                                }
                                "required" = [
                                  "key",
                                ]
                                "type" = "object"
                              }
                              "fieldRef" = {
                                "description" = "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."
                                "properties" = {
                                  "apiVersion" = {
                                    "description" = "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."
                                    "type" = "string"
                                  }
                                  "fieldPath" = {
                                    "description" = "Path of the field to select in the specified API version."
                                    "type" = "string"
                                  }
                                }
                                "required" = [
                                  "fieldPath",
                                ]
                                "type" = "object"
                              }
                              "resourceFieldRef" = {
                                "description" = "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."
                                "properties" = {
                                  "containerName" = {
                                    "description" = "Container name: required for volumes, optional for env vars"
                                    "type" = "string"
                                  }
                                  "divisor" = {
                                    "anyOf" = [
                                      {
                                        "type" = "integer"
                                      },
                                      {
                                        "type" = "string"
                                      },
                                    ]
                                    "description" = "Specifies the output format of the exposed resources, defaults to \"1\""
                                    "pattern" = "^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$"
                                    "x-kubernetes-int-or-string" = true
                                  }
                                  "resource" = {
                                    "description" = "Required: resource to select"
                                    "type" = "string"
                                  }
                                }
                                "required" = [
                                  "resource",
                                ]
                                "type" = "object"
                              }
                              "secretKeyRef" = {
                                "description" = "Selects a key of a secret in the pod's namespace"
                                "properties" = {
                                  "key" = {
                                    "description" = "The key of the secret to select from.  Must be a valid secret key."
                                    "type" = "string"
                                  }
                                  "name" = {
                                    "description" = "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names TODO: Add other useful fields. apiVersion, kind, uid?"
                                    "type" = "string"
                                  }
                                  "optional" = {
                                    "description" = "Specify whether the Secret or its key must be defined"
                                    "type" = "boolean"
                                  }
                                }
                                "required" = [
                                  "key",
                                ]
                                "type" = "object"
                              }
                            }
                            "type" = "object"
                          }
                        }
                        "required" = [
                          "name",
                        ]
                        "type" = "object"
                      }
                      "type" = "array"
                    }
                    "resources" = {
                      "description" = "(Optional) Database container resource limits. Any container limits can be specified. Default: (not specified)"
                      "properties" = {
                        "limits" = {
                          "additionalProperties" = {
                            "anyOf" = [
                              {
                                "type" = "integer"
                              },
                              {
                                "type" = "string"
                              },
                            ]
                            "pattern" = "^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$"
                            "x-kubernetes-int-or-string" = true
                          }
                          "description" = "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                          "type" = "object"
                        }
                        "requests" = {
                          "additionalProperties" = {
                            "anyOf" = [
                              {
                                "type" = "integer"
                              },
                              {
                                "type" = "string"
                              },
                            ]
                            "pattern" = "^(\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))(([KMGTPE]i)|[numkMGTPE]|([eE](\\+|-)?(([0-9]+(\\.[0-9]*)?)|(\\.[0-9]+))))?$"
                            "x-kubernetes-int-or-string" = true
                          }
                          "description" = "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                          "type" = "object"
                        }
                      }
                      "type" = "object"
                    }
                    "sqlPort" = {
                      "description" = "(Optional) The SQL Port number Default: 26257"
                      "format" = "int32"
                      "type" = "integer"
                    }
                    "tlsEnabled" = {
                      "description" = "(Optional) TLSEnabled determines if TLS is enabled for your CockroachDB Cluster"
                      "type" = "boolean"
                    }
                    "tolerations" = {
                      "description" = "(Optional) Tolerations for scheduling pods onto some dedicated nodes"
                      "items" = {
                        "description" = "The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>."
                        "properties" = {
                          "effect" = {
                            "description" = "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."
                            "type" = "string"
                          }
                          "key" = {
                            "description" = "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys."
                            "type" = "string"
                          }
                          "operator" = {
                            "description" = "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category."
                            "type" = "string"
                          }
                          "tolerationSeconds" = {
                            "description" = "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system."
                            "format" = "int64"
                            "type" = "integer"
                          }
                          "value" = {
                            "description" = "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string."
                            "type" = "string"
                          }
                        }
                        "type" = "object"
                      }
                      "type" = "array"
                    }
                  }
                  "required" = [
                    "dataStore",
                    "image",
                    "nodes",
                  ]
                  "type" = "object"
                }
                "status" = {
                  "description" = "CrdbClusterStatus defines the observed state of Cluster"
                  "properties" = {
                    "clusterStatus" = {
                      "description" = "OperatorStatus represent the status of the operator(Failed, Starting, Running or Other)"
                      "type" = "string"
                    }
                    "conditions" = {
                      "description" = "List of conditions representing the current status of the cluster resource."
                      "items" = {
                        "description" = "ClusterCondition represents cluster status as it is perceived by the operator"
                        "properties" = {
                          "lastTransitionTime" = {
                            "description" = "The time when the condition was updated"
                            "format" = "date-time"
                            "type" = "string"
                          }
                          "status" = {
                            "description" = "Condition status: True, False or Unknown"
                            "type" = "string"
                          }
                          "type" = {
                            "description" = "Type/Name of the condition"
                            "type" = "string"
                          }
                        }
                        "required" = [
                          "lastTransitionTime",
                          "status",
                          "type",
                        ]
                        "type" = "object"
                      }
                      "type" = "array"
                    }
                    "crdbcontainerimage" = {
                      "description" = "CrdbContainerImage is the container that will be installed"
                      "type" = "string"
                    }
                    "operatorActions" = {
                      "items" = {
                        "description" = "ClusterAction represents cluster status as it is perceived by the operator"
                        "properties" = {
                          "lastTransitionTime" = {
                            "description" = "The time when the condition was updated"
                            "format" = "date-time"
                            "type" = "string"
                          }
                          "message" = {
                            "description" = "(Optional) Message related to the status of the action"
                            "type" = "string"
                          }
                          "status" = {
                            "description" = "Action status: Failed, Finished or Unknown"
                            "type" = "string"
                          }
                          "type" = {
                            "description" = "Type/Name of the action"
                            "type" = "string"
                          }
                        }
                        "required" = [
                          "lastTransitionTime",
                          "status",
                          "type",
                        ]
                        "type" = "object"
                      }
                      "type" = "array"
                    }
                    "version" = {
                      "description" = "Database service version. Not populated and is just a placeholder currently."
                      "type" = "string"
                    }
                  }
                  "type" = "object"
                }
              }
              "type" = "object"
            }
          }
          "served" = true
          "storage" = true
          "subresources" = {
            "status" = {}
          }
        },
      ]
    }
  }
}
