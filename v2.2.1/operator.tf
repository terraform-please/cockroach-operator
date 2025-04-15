resource "kubernetes_manifest" "namespace_default" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "Namespace"
    "metadata" = {
      "labels" = {
        "control-plane" = "cockroach-operator"
      }
      "name" = "default"
    }
  }
}

resource "kubernetes_manifest" "serviceaccount_cockroach_database_sa" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "ServiceAccount"
    "metadata" = {
      "labels" = {
        "app" = "cockroach-operator"
      }
      "name" = "cockroach-database-sa"
    }
  }
}

resource "kubernetes_manifest" "serviceaccount_cockroach_operator_sa" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "ServiceAccount"
    "metadata" = {
      "labels" = {
        "app" = "cockroach-operator"
      }
      "name" = "cockroach-operator-sa"
    }
  }
}

resource "kubernetes_manifest" "clusterrole_cockroach_database_role" {
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind" = "ClusterRole"
    "metadata" = {
      "name" = "cockroach-database-role"
    }
    "rules" = [
      {
        "apiGroups" = [
          "security.openshift.io",
        ]
        "resourceNames" = [
          "anyuid",
        ]
        "resources" = [
          "securitycontextconstraints",
        ]
        "verbs" = [
          "use",
        ]
      },
    ]
  }
}

resource "kubernetes_manifest" "clusterrole_cockroach_operator_role" {
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind" = "ClusterRole"
    "metadata" = {
      "name" = "cockroach-operator-role"
    }
    "rules" = [
      {
        "apiGroups" = [
          "admissionregistration.k8s.io",
        ]
        "resources" = [
          "mutatingwebhookconfigurations",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "admissionregistration.k8s.io",
        ]
        "resources" = [
          "validatingwebhookconfigurations",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "apps",
        ]
        "resources" = [
          "statefulsets",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "apps",
        ]
        "resources" = [
          "statefulsets/finalizers",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "apps",
        ]
        "resources" = [
          "statefulsets/status",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "batch",
        ]
        "resources" = [
          "jobs",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "batch",
        ]
        "resources" = [
          "jobs/status",
        ]
        "verbs" = [
          "get",
        ]
      },
      {
        "apiGroups" = [
          "certificates.k8s.io",
        ]
        "resources" = [
          "certificatesigningrequests",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "certificates.k8s.io",
        ]
        "resources" = [
          "certificatesigningrequests/approval",
        ]
        "verbs" = [
          "update",
        ]
      },
      {
        "apiGroups" = [
          "certificates.k8s.io",
        ]
        "resources" = [
          "certificatesigningrequests/status",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "configmaps",
        ]
        "verbs" = [
          "get",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "configmaps/status",
        ]
        "verbs" = [
          "get",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "nodes",
        ]
        "verbs" = [
          "get",
          "list",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "pods",
        ]
        "verbs" = [
          "get",
          "list",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "pods/exec",
        ]
        "verbs" = [
          "create",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "pods/log",
        ]
        "verbs" = [
          "get",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "secrets",
        ]
        "verbs" = [
          "create",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "services",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "services/finalizers",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "services/status",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "crdb.cockroachlabs.com",
        ]
        "resources" = [
          "crdbclusters",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "crdb.cockroachlabs.com",
        ]
        "resources" = [
          "crdbclusters/status",
        ]
        "verbs" = [
          "get",
          "patch",
          "update",
        ]
      },
      {
        "apiGroups" = [
          "policy",
        ]
        "resources" = [
          "poddisruptionbudgets",
        ]
        "verbs" = [
          "create",
          "delete",
          "get",
          "list",
          "patch",
          "update",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "policy",
        ]
        "resources" = [
          "poddisruptionbudgets/finalizers",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "policy",
        ]
        "resources" = [
          "poddisruptionbudgets/status",
        ]
        "verbs" = [
          "get",
        ]
      },
    ]
  }
}

resource "kubernetes_manifest" "clusterrolebinding_cockroach_database_rolebinding" {
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind" = "ClusterRoleBinding"
    "metadata" = {
      "name" = "cockroach-database-rolebinding"
    }
    "roleRef" = {
      "apiGroup" = "rbac.authorization.k8s.io"
      "kind" = "ClusterRole"
      "name" = "cockroach-database-role"
    }
    "subjects" = [
      {
        "kind" = "ServiceAccount"
        "name" = "cockroach-database-sa"
        "namespace" = "default"
      },
    ]
  }
}

resource "kubernetes_manifest" "clusterrolebinding_cockroach_operator_rolebinding" {
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind" = "ClusterRoleBinding"
    "metadata" = {
      "name" = "cockroach-operator-rolebinding"
    }
    "roleRef" = {
      "apiGroup" = "rbac.authorization.k8s.io"
      "kind" = "ClusterRole"
      "name" = "cockroach-operator-role"
    }
    "subjects" = [
      {
        "kind" = "ServiceAccount"
        "name" = "cockroach-operator-sa"
        "namespace" = "default"
      },
    ]
  }
}

resource "kubernetes_manifest" "service_webhook_service" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "labels" = {
        "control-plane" = "cockroach-operator"
      }
      "name" = "webhook-service"
    }
    "spec" = {
      "ports" = [
        {
          "port" = 443
          "targetPort" = 9443
        },
      ]
      "selector" = {
        "app" = "cockroach-operator"
      }
    }
  }
}

resource "kubernetes_manifest" "deployment_cockroach_operator" {
  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "labels" = {
        "app" = "cockroach-operator"
      }
      "name" = "cockroach-operator"
    }
    "spec" = {
      "replicas" = 1
      "selector" = {
        "matchLabels" = {
          "app" = "cockroach-operator"
        }
      }
      "template" = {
        "metadata" = {
          "labels" = {
            "app" = "cockroach-operator"
          }
        }
        "spec" = {
          "containers" = [
            {
              "args" = [
                "-zap-log-level",
                "info",
              ]
              "env" = [
                {
                  "name" = "OPERATOR_NAME"
                  "value" = "cockroachdb"
                },
                {
                  "name" = "POD_NAME"
                  "valueFrom" = {
                    "fieldRef" = {
                      "fieldPath" = "metadata.name"
                    }
                  }
                },
                {
                  "name" = "WATCH_NAMESPACE"
                  "valueFrom" = {
                    "fieldRef" = {
                      "fieldPath" = "metadata.namespace"
                    }
                  }
                },
              ]
              "image" = "cockroachdb/cockroach-operator:v2.2.1"
              "imagePullPolicy" = "IfNotPresent"
              "name" = "cockroach-operator"
              "resources" = {
                "requests" = {
                  "cpu" = "10m"
                  "memory" = "32Mi"
                }
              }
            },
          ]
          "serviceAccountName" = "cockroach-operator-sa"
        }
      }
    }
  }
}

resource "kubernetes_manifest" "mutatingwebhookconfiguration_mutating_webhook_configuration" {
  manifest = {
    "apiVersion" = "admissionregistration.k8s.io/v1"
    "kind" = "MutatingWebhookConfiguration"
    "metadata" = {
      "name" = "mutating-webhook-configuration"
    }
    "webhooks" = [
      {
        "admissionReviewVersions" = [
          "v1",
          "v1beta1",
        ]
        "clientConfig" = {
          "service" = {
            "name" = "webhook-service"
            "namespace" = "default"
            "path" = "/mutate-crdb-cockroachlabs-com-v1alpha1-crdbcluster"
          }
        }
        "failurePolicy" = "Fail"
        "name" = "mcrdbcluster.kb.io"
        "namespaceSelector" = {
          "matchLabels" = {
            "control-plane" = "cockroach-operator"
          }
        }
        "rules" = [
          {
            "apiGroups" = [
              "crdb.cockroachlabs.com",
            ]
            "apiVersions" = [
              "v1alpha1",
            ]
            "operations" = [
              "CREATE",
              "UPDATE",
            ]
            "resources" = [
              "crdbclusters",
            ]
          },
        ]
        "sideEffects" = "None"
      },
    ]
  }
}

resource "kubernetes_manifest" "validatingwebhookconfiguration_validating_webhook_configuration" {
  manifest = {
    "apiVersion" = "admissionregistration.k8s.io/v1"
    "kind" = "ValidatingWebhookConfiguration"
    "metadata" = {
      "name" = "validating-webhook-configuration"
    }
    "webhooks" = [
      {
        "admissionReviewVersions" = [
          "v1",
          "v1beta1",
        ]
        "clientConfig" = {
          "service" = {
            "name" = "webhook-service"
            "namespace" = "default"
            "path" = "/validate-crdb-cockroachlabs-com-v1alpha1-crdbcluster"
          }
        }
        "failurePolicy" = "Fail"
        "name" = "vcrdbcluster.kb.io"
        "namespaceSelector" = {
          "matchLabels" = {
            "control-plane" = "cockroach-operator"
          }
        }
        "rules" = [
          {
            "apiGroups" = [
              "crdb.cockroachlabs.com",
            ]
            "apiVersions" = [
              "v1alpha1",
            ]
            "operations" = [
              "CREATE",
              "UPDATE",
            ]
            "resources" = [
              "crdbclusters",
            ]
          },
        ]
        "sideEffects" = "None"
      },
    ]
  }
}
