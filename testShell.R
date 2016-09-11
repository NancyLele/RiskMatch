library(SparkR)

main<-function(){
  sparkR.session(appName = "testShell",sparkConfig = list(spark.sql.warehouse.dir="/E:/yanzi",enableHiveSupport = TRUE) )
  sql("create table if not exists test_shell as select cheat_flag,fraud_flag,maininfo_reqid from tablename  where maininfo_ordertype=14 and cardinfo_isforigencard='T' ")
}