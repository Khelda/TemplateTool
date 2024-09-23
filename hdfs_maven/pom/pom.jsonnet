local pom = import './pom.libsonnet';

pom.Project(
  pom.Artifact('ub.scaledprog', 'hdfs-maven', '0.0.1-SNAPSHOT')
  {
    name: 'hdfs-maven',
    description: 'minimal skeleton for hadoop apps in Java',

    dependencies: [
      pom.Dependency('org.apache.hadoop', 'hadoop-common', '2.7.3'),
    ],

    build: {
      plugins: [
        pom.Plugin('org.apache.maven.plugins',
                   'maven-jar-plugin',
                   '3.0.2',
                   {
                     configuration: {
                       archive: {
                         manifest: { mainClass: 'bigdata.hdfs-maven' },
                       },
                     },
                   }),
      ],
    },
  }
)
