
resource "kubernetes_manifest" "serviceaccount_cockroach_operator_system_cockroach_operator_sa" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "ServiceAccount"
    "metadata" = {
      "labels" = {
        "app" = "cockroach-operator"
      }
      "name" = "cockroach-operator-sa"
      "namespace" = var.namespace
    }
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
          "statefulsets/scale",
        ]
        "verbs" = [
          "get",
          "update",
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
          "jobs/finalizers",
        ]
        "verbs" = [
          "get",
          "list",
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
          "list",
          "watch",
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
          "persistentvolumeclaims",
        ]
        "verbs" = [
          "delete",
          "list",
          "update",
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
          "delete",
          "deletecollection",
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
          "serviceaccounts",
        ]
        "verbs" = [
          "create",
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
          "crdbclusters/finalizers",
        ]
        "verbs" = [
          "update",
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
          "networking.k8s.io",
        ]
        "resources" = [
          "ingresses",
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
          "networking.k8s.io",
        ]
        "resources" = [
          "ingresses/finalizers",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "networking.k8s.io",
        ]
        "resources" = [
          "ingresses/status",
        ]
        "verbs" = [
          "get",
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
      {
        "apiGroups" = [
          "rbac.authorization.k8s.io",
        ]
        "resources" = [
          "rolebindings",
        ]
        "verbs" = [
          "create",
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "rbac.authorization.k8s.io",
        ]
        "resources" = [
          "roles",
        ]
        "verbs" = [
          "create",
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "security.openshift.io",
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
        "namespace" = var.namespace
      },
    ]
  }
}

resource "kubernetes_manifest" "service_cockroach_operator_system_cockroach_operator_webhook_service" {
  manifest = {
    "apiVersion" = "v1"
    "kind" = "Service"
    "metadata" = {
      "labels" = {
        "control-plane" = "cockroach-operator"
      }
      "name" = "cockroach-operator-webhook-service"
      "namespace" = var.namespace
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

resource "kubernetes_manifest" "deployment_cockroach_operator_system_cockroach_operator_manager" {
  manifest = {
    "apiVersion" = "apps/v1"
    "kind" = "Deployment"
    "metadata" = {
      "labels" = {
        "app" = "cockroach-operator"
      }
      "name" = "cockroach-operator-manager"
      "namespace" = var.namespace
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
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_0"
                  "value" = "cockroachdb/cockroach:v21.1.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_1"
                  "value" = "cockroachdb/cockroach:v21.1.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_2"
                  "value" = "cockroachdb/cockroach:v21.1.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_3"
                  "value" = "cockroachdb/cockroach:v21.1.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_4"
                  "value" = "cockroachdb/cockroach:v21.1.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_5"
                  "value" = "cockroachdb/cockroach:v21.1.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_6"
                  "value" = "cockroachdb/cockroach:v21.1.6"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_7"
                  "value" = "cockroachdb/cockroach:v21.1.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_9"
                  "value" = "cockroachdb/cockroach:v21.1.9"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_10"
                  "value" = "cockroachdb/cockroach:v21.1.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_11"
                  "value" = "cockroachdb/cockroach:v21.1.11"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_12"
                  "value" = "cockroachdb/cockroach:v21.1.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_13"
                  "value" = "cockroachdb/cockroach:v21.1.13"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_14"
                  "value" = "cockroachdb/cockroach:v21.1.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_15"
                  "value" = "cockroachdb/cockroach:v21.1.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_16"
                  "value" = "cockroachdb/cockroach:v21.1.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_17"
                  "value" = "cockroachdb/cockroach:v21.1.17"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_18"
                  "value" = "cockroachdb/cockroach:v21.1.18"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_19"
                  "value" = "cockroachdb/cockroach:v21.1.19"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_20"
                  "value" = "cockroachdb/cockroach:v21.1.20"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_1_21"
                  "value" = "cockroachdb/cockroach:v21.1.21"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_0"
                  "value" = "cockroachdb/cockroach:v21.2.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_1"
                  "value" = "cockroachdb/cockroach:v21.2.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_2"
                  "value" = "cockroachdb/cockroach:v21.2.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_3"
                  "value" = "cockroachdb/cockroach:v21.2.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_4"
                  "value" = "cockroachdb/cockroach:v21.2.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_5"
                  "value" = "cockroachdb/cockroach:v21.2.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_7"
                  "value" = "cockroachdb/cockroach:v21.2.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_8"
                  "value" = "cockroachdb/cockroach:v21.2.8"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_9"
                  "value" = "cockroachdb/cockroach:v21.2.9"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_10"
                  "value" = "cockroachdb/cockroach:v21.2.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_11"
                  "value" = "cockroachdb/cockroach:v21.2.11"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_12"
                  "value" = "cockroachdb/cockroach:v21.2.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_13"
                  "value" = "cockroachdb/cockroach:v21.2.13"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_14"
                  "value" = "cockroachdb/cockroach:v21.2.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_15"
                  "value" = "cockroachdb/cockroach:v21.2.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_16"
                  "value" = "cockroachdb/cockroach:v21.2.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v21_2_17"
                  "value" = "cockroachdb/cockroach:v21.2.17"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_0"
                  "value" = "cockroachdb/cockroach:v22.1.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_1"
                  "value" = "cockroachdb/cockroach:v22.1.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_2"
                  "value" = "cockroachdb/cockroach:v22.1.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_3"
                  "value" = "cockroachdb/cockroach:v22.1.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_4"
                  "value" = "cockroachdb/cockroach:v22.1.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_5"
                  "value" = "cockroachdb/cockroach:v22.1.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_7"
                  "value" = "cockroachdb/cockroach:v22.1.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_8"
                  "value" = "cockroachdb/cockroach:v22.1.8"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_10"
                  "value" = "cockroachdb/cockroach:v22.1.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_11"
                  "value" = "cockroachdb/cockroach:v22.1.11"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_12"
                  "value" = "cockroachdb/cockroach:v22.1.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_13"
                  "value" = "cockroachdb/cockroach:v22.1.13"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_14"
                  "value" = "cockroachdb/cockroach:v22.1.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_15"
                  "value" = "cockroachdb/cockroach:v22.1.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_16"
                  "value" = "cockroachdb/cockroach:v22.1.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_18"
                  "value" = "cockroachdb/cockroach:v22.1.18"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_20"
                  "value" = "cockroachdb/cockroach:v22.1.20"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_1_22"
                  "value" = "cockroachdb/cockroach:v22.1.22"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_0"
                  "value" = "cockroachdb/cockroach:v22.2.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_1"
                  "value" = "cockroachdb/cockroach:v22.2.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_2"
                  "value" = "cockroachdb/cockroach:v22.2.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_3"
                  "value" = "cockroachdb/cockroach:v22.2.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_4"
                  "value" = "cockroachdb/cockroach:v22.2.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_5"
                  "value" = "cockroachdb/cockroach:v22.2.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_6"
                  "value" = "cockroachdb/cockroach:v22.2.6"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_7"
                  "value" = "cockroachdb/cockroach:v22.2.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_8"
                  "value" = "cockroachdb/cockroach:v22.2.8"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_9"
                  "value" = "cockroachdb/cockroach:v22.2.9"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_10"
                  "value" = "cockroachdb/cockroach:v22.2.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_12"
                  "value" = "cockroachdb/cockroach:v22.2.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_14"
                  "value" = "cockroachdb/cockroach:v22.2.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_15"
                  "value" = "cockroachdb/cockroach:v22.2.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_16"
                  "value" = "cockroachdb/cockroach:v22.2.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_17"
                  "value" = "cockroachdb/cockroach:v22.2.17"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_18"
                  "value" = "cockroachdb/cockroach:v22.2.18"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v22_2_19"
                  "value" = "cockroachdb/cockroach:v22.2.19"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_0"
                  "value" = "cockroachdb/cockroach:v23.1.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_1"
                  "value" = "cockroachdb/cockroach:v23.1.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_2"
                  "value" = "cockroachdb/cockroach:v23.1.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_3"
                  "value" = "cockroachdb/cockroach:v23.1.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_4"
                  "value" = "cockroachdb/cockroach:v23.1.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_5"
                  "value" = "cockroachdb/cockroach:v23.1.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_6"
                  "value" = "cockroachdb/cockroach:v23.1.6"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_7"
                  "value" = "cockroachdb/cockroach:v23.1.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_8"
                  "value" = "cockroachdb/cockroach:v23.1.8"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_9"
                  "value" = "cockroachdb/cockroach:v23.1.9"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_10"
                  "value" = "cockroachdb/cockroach:v23.1.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_11"
                  "value" = "cockroachdb/cockroach:v23.1.11"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_12"
                  "value" = "cockroachdb/cockroach:v23.1.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_13"
                  "value" = "cockroachdb/cockroach:v23.1.13"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_14"
                  "value" = "cockroachdb/cockroach:v23.1.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_15"
                  "value" = "cockroachdb/cockroach:v23.1.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_16"
                  "value" = "cockroachdb/cockroach:v23.1.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_17"
                  "value" = "cockroachdb/cockroach:v23.1.17"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_19"
                  "value" = "cockroachdb/cockroach:v23.1.19"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_20"
                  "value" = "cockroachdb/cockroach:v23.1.20"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_21"
                  "value" = "cockroachdb/cockroach:v23.1.21"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_22"
                  "value" = "cockroachdb/cockroach:v23.1.22"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_23"
                  "value" = "cockroachdb/cockroach:v23.1.23"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_24"
                  "value" = "cockroachdb/cockroach:v23.1.24"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_25"
                  "value" = "cockroachdb/cockroach:v23.1.25"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_26"
                  "value" = "cockroachdb/cockroach:v23.1.26"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_27"
                  "value" = "cockroachdb/cockroach:v23.1.27"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_28"
                  "value" = "cockroachdb/cockroach:v23.1.28"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_1_29"
                  "value" = "cockroachdb/cockroach:v23.1.29"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_0"
                  "value" = "cockroachdb/cockroach:v23.2.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_1"
                  "value" = "cockroachdb/cockroach:v23.2.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_2"
                  "value" = "cockroachdb/cockroach:v23.2.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_3"
                  "value" = "cockroachdb/cockroach:v23.2.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_5"
                  "value" = "cockroachdb/cockroach:v23.2.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_6"
                  "value" = "cockroachdb/cockroach:v23.2.6"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_7"
                  "value" = "cockroachdb/cockroach:v23.2.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_8"
                  "value" = "cockroachdb/cockroach:v23.2.8"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_9"
                  "value" = "cockroachdb/cockroach:v23.2.9"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_10"
                  "value" = "cockroachdb/cockroach:v23.2.10"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_11"
                  "value" = "cockroachdb/cockroach:v23.2.11"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_12"
                  "value" = "cockroachdb/cockroach:v23.2.12"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_13"
                  "value" = "cockroachdb/cockroach:v23.2.13"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_14"
                  "value" = "cockroachdb/cockroach:v23.2.14"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_15"
                  "value" = "cockroachdb/cockroach:v23.2.15"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v23_2_16"
                  "value" = "cockroachdb/cockroach:v23.2.16"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_0"
                  "value" = "cockroachdb/cockroach:v24.1.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_1"
                  "value" = "cockroachdb/cockroach:v24.1.1"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_2"
                  "value" = "cockroachdb/cockroach:v24.1.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_3"
                  "value" = "cockroachdb/cockroach:v24.1.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_4"
                  "value" = "cockroachdb/cockroach:v24.1.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_5"
                  "value" = "cockroachdb/cockroach:v24.1.5"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_6"
                  "value" = "cockroachdb/cockroach:v24.1.6"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_1_7"
                  "value" = "cockroachdb/cockroach:v24.1.7"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_2_0"
                  "value" = "cockroachdb/cockroach:v24.2.0"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_2_2"
                  "value" = "cockroachdb/cockroach:v24.2.2"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_2_3"
                  "value" = "cockroachdb/cockroach:v24.2.3"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_2_4"
                  "value" = "cockroachdb/cockroach:v24.2.4"
                },
                {
                  "name" = "RELATED_IMAGE_COCKROACH_v24_2_5"
                  "value" = "cockroachdb/cockroach:v24.2.5"
                },
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
                  "name" = "NAMESPACE"
                  "valueFrom" = {
                    "fieldRef" = {
                      "fieldPath" = "metadata.namespace"
                    }
                  }
                },
              ]
              "image" = "cockroachdb/cockroach-operator:v2.16.0"
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

resource "kubernetes_manifest" "mutatingwebhookconfiguration_cockroach_operator_mutating_webhook_configuration" {
  manifest = {
    "apiVersion" = "admissionregistration.k8s.io/v1"
    "kind" = "MutatingWebhookConfiguration"
    "metadata" = {
      "name" = "cockroach-operator-mutating-webhook-configuration"
    }
    "webhooks" = [
      {
        "admissionReviewVersions" = [
          "v1",
        ]
        "clientConfig" = {
          "service" = {
            "name" = "cockroach-operator-webhook-service"
            "namespace" = var.namespace
            "path" = "/mutate-crdb-cockroachlabs-com-v1alpha1-crdbcluster"
          }
        }
        "failurePolicy" = "Fail"
        "name" = "mcrdbcluster.kb.io"
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

resource "kubernetes_manifest" "validatingwebhookconfiguration_cockroach_operator_validating_webhook_configuration" {
  manifest = {
    "apiVersion" = "admissionregistration.k8s.io/v1"
    "kind" = "ValidatingWebhookConfiguration"
    "metadata" = {
      "name" = "cockroach-operator-validating-webhook-configuration"
    }
    "webhooks" = [
      {
        "admissionReviewVersions" = [
          "v1",
        ]
        "clientConfig" = {
          "service" = {
            "name" = "cockroach-operator-webhook-service"
            "namespace" = var.namespace
            "path" = "/validate-crdb-cockroachlabs-com-v1alpha1-crdbcluster"
          }
        }
        "failurePolicy" = "Fail"
        "name" = "vcrdbcluster.kb.io"
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
