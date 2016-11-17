### Use the API

    {
      "timestamp" : "2016-11-17T08:31:51.455Z",
      "clusters" : [ {
        "name" : "Ioann_Denisov_Cluster",
        "version" : "CDH5",
        "services" : [ {
          "name" : "hive",
          "type" : "HIVE",
          "config" : {
            "roleTypeConfigs" : [ {
              "roleType" : "HIVEMETASTORE",
              "items" : [ {
                "name" : "hive_metastore_java_heapsize",
                "value" : "916455424"
              } ]
            }, {
              "roleType" : "HIVESERVER2",
              "items" : [ {
                "name" : "hiveserver2_java_heapsize",
                "value" : "916455424"
              }, {
                "name" : "hiveserver2_spark_driver_memory",
                "value" : "966367641"
              }, {
                "name" : "hiveserver2_spark_executor_cores",
                "value" : "4"
              }, {
                "name" : "hiveserver2_spark_executor_memory",
                "value" : "1893099110"
              }, {
                "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
                "value" : "102"
              }, {
                "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
                "value" : "318"
              } ]
            } ],
            "items" : [ {
              "name" : "hive_metastore_database_host",
              "value" : "ip-10-0-0-253.ec2.internal"
            }, {
              "name" : "hive_metastore_database_password",
              "value" : "metastorepassword"
            }, {
              "name" : "hive_metastore_database_user",
              "value" : "metastore"
            }, {
              "name" : "mapreduce_yarn_service",
              "value" : "yarn"
            }, {
              "name" : "zookeeper_service",
              "value" : "zookeeper"
            } ]
          },
          "roles" : [ {
            "name" : "hive-GATEWAY-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "GATEWAY",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hive-GATEWAY-244dcbb93c59e794f66c5c6db1140647",
            "type" : "GATEWAY",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hive-GATEWAY-3ca872cdb31926589b8e769aa9642848",
            "type" : "GATEWAY",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hive-GATEWAY-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "GATEWAY",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hive-GATEWAY-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "GATEWAY",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hive-HIVEMETASTORE-3ca872cdb31926589b8e769aa9642848",
            "type" : "HIVEMETASTORE",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "ahii1isdfulizrdz7fkibrksu"
              } ]
            }
          }, {
            "name" : "hive-HIVESERVER2-3ca872cdb31926589b8e769aa9642848",
            "type" : "HIVESERVER2",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "f22t4ydhtltvc1hfkql22yfcp"
              } ]
            }
          } ],
          "displayName" : "Hive"
        }, {
          "name" : "zookeeper",
          "type" : "ZOOKEEPER",
          "config" : {
            "roleTypeConfigs" : [ ],
            "items" : [ ]
          },
          "roles" : [ {
            "name" : "zookeeper-SERVER-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "SERVER",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "cjp1na921enujk57eyeqb4yc2"
              }, {
                "name" : "serverId",
                "value" : "3"
              } ]
            }
          }, {
            "name" : "zookeeper-SERVER-244dcbb93c59e794f66c5c6db1140647",
            "type" : "SERVER",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "cjpv91ix2eblm8ajz2y6ly7e"
              }, {
                "name" : "serverId",
                "value" : "2"
              } ]
            }
          }, {
            "name" : "zookeeper-SERVER-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "SERVER",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "28mbu2i4h7pdyvakhfkwglr85"
              }, {
                "name" : "serverId",
                "value" : "1"
              } ]
            }
          } ],
          "displayName" : "ZooKeeper"
        }, {
          "name" : "hue",
          "type" : "HUE",
          "config" : {
            "roleTypeConfigs" : [ ],
            "items" : [ {
              "name" : "database_host",
              "value" : "ip-10-0-0-253.ec2.internal"
            }, {
              "name" : "database_password",
              "value" : "huepassword"
            }, {
              "name" : "database_type",
              "value" : "mysql"
            }, {
              "name" : "hive_service",
              "value" : "hive"
            }, {
              "name" : "hue_webhdfs",
              "value" : "hdfs-HTTPFS-0a5c3aeb4f353868ec805e3609d0c79d"
            }, {
              "name" : "oozie_service",
              "value" : "oozie"
            }, {
              "name" : "zookeeper_service",
              "value" : "zookeeper"
            } ]
          },
          "roles" : [ {
            "name" : "hue-HUE_SERVER-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "HUE_SERVER",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "3ksgt5n05thb5bob1flcfwf9m"
              }, {
                "name" : "secret_key",
                "value" : "jIo3tjdmsybIJxOBPUFMLWN0oNcBBA"
              } ]
            }
          } ],
          "displayName" : "Hue"
        }, {
          "name" : "oozie",
          "type" : "OOZIE",
          "config" : {
            "roleTypeConfigs" : [ {
              "roleType" : "OOZIE_SERVER",
              "items" : [ {
                "name" : "oozie_database_host",
                "value" : "ip-10-0-0-253.ec2.internal"
              }, {
                "name" : "oozie_database_password",
                "value" : "ooziepassword"
              }, {
                "name" : "oozie_database_type",
                "value" : "mysql"
              }, {
                "name" : "oozie_database_user",
                "value" : "oozie"
              } ]
            } ],
            "items" : [ {
              "name" : "hive_service",
              "value" : "hive"
            }, {
              "name" : "mapreduce_yarn_service",
              "value" : "yarn"
            }, {
              "name" : "zookeeper_service",
              "value" : "zookeeper"
            } ]
          },
          "roles" : [ {
            "name" : "oozie-OOZIE_SERVER-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "OOZIE_SERVER",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "3e0xiibw46vcujf2x2s6n549"
              } ]
            }
          } ],
          "displayName" : "Oozie"
        }, {
          "name" : "yarn",
          "type" : "YARN",
          "config" : {
            "roleTypeConfigs" : [ {
              "roleType" : "GATEWAY",
              "items" : [ {
                "name" : "mapred_reduce_tasks",
                "value" : "8"
              }, {
                "name" : "mapred_submit_replication",
                "value" : "2"
              } ]
            }, {
              "roleType" : "NODEMANAGER",
              "items" : [ {
                "name" : "rm_cpu_shares",
                "value" : "1800"
              }, {
                "name" : "rm_io_weight",
                "value" : "900"
              }, {
                "name" : "yarn_nodemanager_heartbeat_interval_ms",
                "value" : "100"
              }, {
                "name" : "yarn_nodemanager_local_dirs",
                "value" : "/yarn/nm"
              }, {
                "name" : "yarn_nodemanager_log_dirs",
                "value" : "/yarn/container-logs"
              }, {
                "name" : "yarn_nodemanager_resource_cpu_vcores",
                "value" : "3"
              }, {
                "name" : "yarn_nodemanager_resource_memory_mb",
                "value" : "1278"
              } ]
            }, {
              "roleType" : "RESOURCEMANAGER",
              "items" : [ {
                "name" : "resource_manager_java_heapsize",
                "value" : "916455424"
              }, {
                "name" : "yarn_scheduler_maximum_allocation_mb",
                "value" : "2609"
              }, {
                "name" : "yarn_scheduler_maximum_allocation_vcores",
                "value" : "3"
              } ]
            } ],
            "items" : [ {
              "name" : "hdfs_service",
              "value" : "hdfs"
            }, {
              "name" : "rm_dirty",
              "value" : "false"
            }, {
              "name" : "rm_last_allocation_percentage",
              "value" : "90"
            }, {
              "name" : "yarn_service_cgroups",
              "value" : "false"
            }, {
              "name" : "yarn_service_lce_always",
              "value" : "false"
            }, {
              "name" : "zk_authorization_secret_key",
              "value" : "plPVs4Kh7QlLlA9qXHP00UX2GWJ9vJ"
            }, {
              "name" : "zookeeper_service",
              "value" : "zookeeper"
            } ]
          },
          "roles" : [ {
            "name" : "yarn-JOBHISTORY-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "JOBHISTORY",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "2ap61n1p3fr2dsfn3fdh1y24x"
              } ]
            }
          }, {
            "name" : "yarn-NODEMANAGER-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "NODEMANAGER",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "bn44ftjw5ezjzc81il9rt3t99"
              } ]
            }
          }, {
            "name" : "yarn-NODEMANAGER-244dcbb93c59e794f66c5c6db1140647",
            "type" : "NODEMANAGER",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "1rp85pc6qgb8ihrrl3vmja6ke"
              } ]
            }
          }, {
            "name" : "yarn-NODEMANAGER-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "NODEMANAGER",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "8dkq6gud5afsb9wgr2wcp7ooy"
              } ]
            }
          }, {
            "name" : "yarn-NODEMANAGER-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "NODEMANAGER",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "bl10dv7soxdtehvw3uj2q2fbl"
              } ]
            }
          }, {
            "name" : "yarn-RESOURCEMANAGER-3ca872cdb31926589b8e769aa9642848",
            "type" : "RESOURCEMANAGER",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ {
                "name" : "rm_id",
                "value" : "53"
              }, {
                "name" : "role_jceks_password",
                "value" : "9vzxjcwihxrjbwuywmjh2klfw"
              } ]
            }
          } ],
          "displayName" : "YARN (MR2 Included)"
        }, {
          "name" : "hdfs",
          "type" : "HDFS",
          "config" : {
            "roleTypeConfigs" : [ {
              "roleType" : "DATANODE",
              "items" : [ {
                "name" : "datanode_java_heapsize",
                "value" : "1073741824"
              }, {
                "name" : "dfs_data_dir_list",
                "value" : "/dfs/dn"
              }, {
                "name" : "dfs_datanode_du_reserved",
                "value" : "4293264998"
              }, {
                "name" : "dfs_datanode_max_locked_memory",
                "value" : "4294967296"
              }, {
                "name" : "rm_cpu_shares",
                "value" : "200"
              }, {
                "name" : "rm_io_weight",
                "value" : "100"
              } ]
            }, {
              "roleType" : "GATEWAY",
              "items" : [ {
                "name" : "dfs_client_use_trash",
                "value" : "true"
              } ]
            }, {
              "roleType" : "JOURNALNODE",
              "items" : [ {
                "name" : "dfs_journalnode_edits_dir",
                "value" : "/dfs/jn"
              } ]
            }, {
              "roleType" : "NAMENODE",
              "items" : [ {
                "name" : "dfs_name_dir_list",
                "value" : "/dfs/nn"
              }, {
                "name" : "dfs_namenode_servicerpc_address",
                "value" : "8022"
              }, {
                "name" : "namenode_java_heapsize",
                "value" : "1073741824"
              }, {
                "name" : "role_config_suppression_namenode_java_heapsize_minimum_validator",
                "value" : "true"
              } ]
            }, {
              "roleType" : "SECONDARYNAMENODE",
              "items" : [ {
                "name" : "fs_checkpoint_dir_list",
                "value" : "/dfs/snn"
              }, {
                "name" : "secondary_namenode_java_heapsize",
                "value" : "1073741824"
              } ]
            } ],
            "items" : [ {
              "name" : "dfs_client_use_datanode_hostname",
              "value" : "true"
            }, {
              "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
              "value" : "e4EJWHzcEqczH7vGZwMwzPJWvfCpj8"
            }, {
              "name" : "dfs_ha_fencing_methods",
              "value" : "shell(true)"
            }, {
              "name" : "fc_authorization_secret_key",
              "value" : "7XZZrsbrcSsXZLONNGzjGLklOl535i"
            }, {
              "name" : "http_auth_signature_secret",
              "value" : "A76xrBXLNgSe4gvvaB9el0Ur9LCbII"
            }, {
              "name" : "rm_dirty",
              "value" : "false"
            }, {
              "name" : "rm_last_allocation_percentage",
              "value" : "10"
            }, {
              "name" : "zookeeper_service",
              "value" : "zookeeper"
            } ]
          },
          "roles" : [ {
            "name" : "hdfs-BALANCER-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "BALANCER",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ ]
            }
          }, {
            "name" : "hdfs-DATANODE-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "DATANODE",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "b7febw1d4hyxe31u79t258jug"
              } ]
            }
          }, {
            "name" : "hdfs-DATANODE-244dcbb93c59e794f66c5c6db1140647",
            "type" : "DATANODE",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "7r97f3kc44isr1g4toagyfu7u"
              } ]
            }
          }, {
            "name" : "hdfs-DATANODE-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "DATANODE",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "1vks2wcmmtka62sd10rkgd3tf"
              } ]
            }
          }, {
            "name" : "hdfs-DATANODE-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "DATANODE",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "dy5pyer124moqsg93tpwski5j"
              } ]
            }
          }, {
            "name" : "hdfs-FAILOVERCONTROLLER-244dcbb93c59e794f66c5c6db1140647",
            "type" : "FAILOVERCONTROLLER",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "2v8bnmtg4ykywo0wrrqxh8726"
              } ]
            }
          }, {
            "name" : "hdfs-FAILOVERCONTROLLER-3ca872cdb31926589b8e769aa9642848",
            "type" : "FAILOVERCONTROLLER",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "a6fgp2qys1zrjloeo3wrzq050"
              } ]
            }
          }, {
            "name" : "hdfs-HTTPFS-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "HTTPFS",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "6mwwqdb24s38ktiiqotclqz59"
              } ]
            }
          }, {
            "name" : "hdfs-HTTPFS-cd7d8fd2ae8e09b5e4e054e7615cf973",
            "type" : "HTTPFS",
            "hostRef" : {
              "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "6hz9ceznugouinwpxgl84fxgu"
              } ]
            }
          }, {
            "name" : "hdfs-JOURNALNODE-0a5c3aeb4f353868ec805e3609d0c79d",
            "type" : "JOURNALNODE",
            "hostRef" : {
              "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "8vwrmummhqh7fmjmxlpxjlju8"
              } ]
            }
          }, {
            "name" : "hdfs-JOURNALNODE-244dcbb93c59e794f66c5c6db1140647",
            "type" : "JOURNALNODE",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "c0sjeznbnrjjrs8a5j2j3srn6"
              } ]
            }
          }, {
            "name" : "hdfs-JOURNALNODE-b0f73791f4bac0a998f19482aa1035ae",
            "type" : "JOURNALNODE",
            "hostRef" : {
              "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5"
            },
            "config" : {
              "items" : [ {
                "name" : "role_jceks_password",
                "value" : "6lyzhm28biriqtn9epwr4htuh"
              } ]
            }
          }, {
            "name" : "hdfs-NAMENODE-244dcbb93c59e794f66c5c6db1140647",
            "type" : "NAMENODE",
            "hostRef" : {
              "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4"
            },
            "config" : {
              "items" : [ {
                "name" : "autofailover_enabled",
                "value" : "true"
              }, {
                "name" : "dfs_federation_namenode_nameservice",
                "value" : "NameServiceIoannDenisov"
              }, {
                "name" : "dfs_namenode_quorum_journal_name",
                "value" : "NameServiceIoannDenisov"
              }, {
                "name" : "namenode_id",
                "value" : "61"
              }, {
                "name" : "role_jceks_password",
                "value" : "elzvqvg4goh1007r7dtldsxj2"
              } ]
            }
          }, {
            "name" : "hdfs-NAMENODE-3ca872cdb31926589b8e769aa9642848",
            "type" : "NAMENODE",
            "hostRef" : {
              "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
            },
            "config" : {
              "items" : [ {
                "name" : "autofailover_enabled",
                "value" : "true"
              }, {
                "name" : "dfs_federation_namenode_nameservice",
                "value" : "NameServiceIoannDenisov"
              }, {
                "name" : "dfs_namenode_quorum_journal_name",
                "value" : "NameServiceIoannDenisov"
              }, {
                "name" : "namenode_id",
                "value" : "55"
              }, {
                "name" : "role_jceks_password",
                "value" : "bna8lm5tupdvlgfabilsuh6mf"
              } ]
            }
          } ],
          "displayName" : "HDFS"
        } ]
      } ],
      "hosts" : [ {
        "hostId" : "96b9062a-8fe5-4958-9231-46ca1f8dd4a5",
        "ipAddress" : "10.0.0.250",
        "hostname" : "ip-10-0-0-250.ec2.internal",
        "rackId" : "/default",
        "config" : {
          "items" : [ {
            "name" : "host_config_suppression_memory_overcommitted_validator",
            "value" : "true"
          } ]
        }
      }, {
        "hostId" : "af651f0c-ed46-4122-b6ff-16650d496153",
        "ipAddress" : "10.0.0.251",
        "hostname" : "ip-10-0-0-251.ec2.internal",
        "rackId" : "/default",
        "config" : {
          "items" : [ {
            "name" : "host_config_suppression_memory_overcommitted_validator",
            "value" : "true"
          } ]
        }
      }, {
        "hostId" : "cdfe963b-f0c2-4898-99f1-0c57aceddc7d",
        "ipAddress" : "10.0.0.252",
        "hostname" : "ip-10-0-0-252.ec2.internal",
        "rackId" : "/default",
        "config" : {
          "items" : [ ]
        }
      }, {
        "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a",
        "ipAddress" : "10.0.0.253",
        "hostname" : "ip-10-0-0-253.ec2.internal",
        "rackId" : "/default",
        "config" : {
          "items" : [ {
            "name" : "memory_overcommit_threshold",
            "value" : "0.9"
          } ]
        }
      }, {
        "hostId" : "1be84738-2145-41cb-8bc4-c1b4d2d96fb4",
        "ipAddress" : "10.0.0.254",
        "hostname" : "ip-10-0-0-254.ec2.internal",
        "rackId" : "/default",
        "config" : {
          "items" : [ {
            "name" : "host_config_suppression_memory_overcommitted_validator",
            "value" : "true"
          } ]
        }
      } ],
      "users" : [ {
        "name" : "UNIm95",
        "roles" : [ "ROLE_ADMIN" ],
        "pwHash" : "f0c1559890753530eb90b6b9cc665ac8310c13f83c5d0d1146b5805d6b6ef393",
        "pwSalt" : -2926035300267804327,
        "pwLogin" : true
      }, {
        "name" : "__cloudera_internal_user__0138d800-e216-48eb-8279-207b31eafd53",
        "roles" : [ "ROLE_USER" ],
        "pwHash" : "e587538c56ca539b3e2706682fbd8450c10b0a1f5defd7af70ab3ba6b45ddafa",
        "pwSalt" : -889733205856297176,
        "pwLogin" : true
      }, {
        "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-3ca872cdb31926589b8e769aa9642848",
        "roles" : [ "ROLE_USER" ],
        "pwHash" : "b5a2369c988c9944341120a084c404b485e760bea300a1347d34ff2b4c75bf3a",
        "pwSalt" : -8966179005793658383,
        "pwLogin" : true
      }, {
        "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-3ca872cdb31926589b8e769aa9642848",
        "roles" : [ "ROLE_USER" ],
        "pwHash" : "0823f675b69f475abb8a1a39a18759b530de46e4fd10d22c1fce8f0389abb8e3",
        "pwSalt" : -5705557518649853035,
        "pwLogin" : true
      }, {
        "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-3ca872cdb31926589b8e769aa9642848",
        "roles" : [ "ROLE_USER" ],
        "pwHash" : "a0f183ec448558ee56655fc8dbdda59feb3bb333971323e1a248c1785c889c49",
        "pwSalt" : 7044659917651195764,
        "pwLogin" : true
      }, {
        "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-3ca872cdb31926589b8e769aa9642848",
        "roles" : [ "ROLE_USER" ],
        "pwHash" : "7d0f12d561d0cfd12ff477931ea0aa0a83f06a11b2290c6eac04dbaab366ed4f",
        "pwSalt" : -2070785551555847822,
        "pwLogin" : true
      }, {
        "name" : "admin",
        "roles" : [ "ROLE_LIMITED" ],
        "pwHash" : "42b2f7a012a9514e678f6d083deb8d3eeb744408935ad5c30e14297daeb64c4d",
        "pwSalt" : 6757068278016405484,
        "pwLogin" : true
      }, {
        "name" : "minotaur",
        "roles" : [ "ROLE_CONFIGURATOR" ],
        "pwHash" : "5c323f4d57b06638aef1d97198c3a6aeea376bf96a778f83b459188a66850459",
        "pwSalt" : 3405032505161025038,
        "pwLogin" : true
      } ],
      "versionInfo" : {
        "version" : "5.8.3",
        "buildUser" : "jenkins",
        "buildTimestamp" : "20161019-1013",
        "gitHash" : "518f0d6d44abc87bc392646e4369a20c8192b7cf",
        "snapshot" : false
      },
      "managementService" : {
        "name" : "mgmt",
        "type" : "MGMT",
        "config" : {
          "roleTypeConfigs" : [ {
            "roleType" : "EVENTSERVER",
            "items" : [ {
              "name" : "event_server_heapsize",
              "value" : "916455424"
            } ]
          }, {
            "roleType" : "HOSTMONITOR",
            "items" : [ {
              "name" : "firehose_heapsize",
              "value" : "916455424"
            }, {
              "name" : "firehose_non_java_memory_bytes",
              "value" : "1191182336"
            }, {
              "name" : "role_config_suppression_firehose_heap_size_validator",
              "value" : "true"
            }, {
              "name" : "role_config_suppression_firehose_non_java_memory_validator",
              "value" : "true"
            } ]
          }, {
            "roleType" : "REPORTSMANAGER",
            "items" : [ {
              "name" : "headlamp_database_host",
              "value" : "ip-10-0-0-253.ec2.internal"
            }, {
              "name" : "headlamp_database_name",
              "value" : "rman"
            }, {
              "name" : "headlamp_database_password",
              "value" : "rmanpassword"
            }, {
              "name" : "headlamp_database_user",
              "value" : "rman"
            }, {
              "name" : "headlamp_heapsize",
              "value" : "916455424"
            } ]
          }, {
            "roleType" : "SERVICEMONITOR",
            "items" : [ {
              "name" : "firehose_heapsize",
              "value" : "916455424"
            }, {
              "name" : "firehose_non_java_memory_bytes",
              "value" : "1191182336"
            }, {
              "name" : "role_config_suppression_firehose_heap_size_validator",
              "value" : "true"
            }, {
              "name" : "role_config_suppression_firehose_non_java_memory_validator",
              "value" : "true"
            } ]
          } ],
          "items" : [ ]
        },
        "roles" : [ {
          "name" : "mgmt-ALERTPUBLISHER-3ca872cdb31926589b8e769aa9642848",
          "type" : "ALERTPUBLISHER",
          "hostRef" : {
            "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
          },
          "config" : {
            "items" : [ {
              "name" : "role_jceks_password",
              "value" : "rautho9i3lb1uytcjdnvuden"
            } ]
          }
        }, {
          "name" : "mgmt-EVENTSERVER-3ca872cdb31926589b8e769aa9642848",
          "type" : "EVENTSERVER",
          "hostRef" : {
            "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
          },
          "config" : {
            "items" : [ {
              "name" : "role_jceks_password",
              "value" : "cxlilkgop8o85a2e4bsn4vj9k"
            } ]
          }
        }, {
          "name" : "mgmt-HOSTMONITOR-3ca872cdb31926589b8e769aa9642848",
          "type" : "HOSTMONITOR",
          "hostRef" : {
            "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
          },
          "config" : {
            "items" : [ {
              "name" : "role_jceks_password",
              "value" : "eikfxpc7v0tmel455c438m88s"
            } ]
          }
        }, {
          "name" : "mgmt-REPORTSMANAGER-3ca872cdb31926589b8e769aa9642848",
          "type" : "REPORTSMANAGER",
          "hostRef" : {
            "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
          },
          "config" : {
            "items" : [ {
              "name" : "role_jceks_password",
              "value" : "3wd9g6u2ml4lddolby47pz4os"
            } ]
          }
        }, {
          "name" : "mgmt-SERVICEMONITOR-3ca872cdb31926589b8e769aa9642848",
          "type" : "SERVICEMONITOR",
          "hostRef" : {
            "hostId" : "d9663885-79ff-48d3-ba5e-aeaf373f1b7a"
          },
          "config" : {
            "items" : [ {
              "name" : "role_jceks_password",
              "value" : "36hqiie8r76tgrr0r316zfv4l"
            } ]
          }
        } ],
        "displayName" : "Cloudera Management Service"
      },
      "managerSettings" : {
        "items" : [ {
          "name" : "CLUSTER_STATS_START",
          "value" : "10/23/2012 5:30"
        }, {
          "name" : "PUBLIC_CLOUD_STATUS",
          "value" : "NOT_ON_PUBLIC_CLOUD"
        }, {
          "name" : "REMOTE_PARCEL_REPO_URLS",
          "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
        } ]
      }
    }

