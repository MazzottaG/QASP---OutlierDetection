# Outlier Detection Problem with QASP
Knowledge discovery techniques had important impact inseveral relevant application domains. Among the most important knowledge discovery tasks isoutlier detection. Outlier detection is the taskof identifying anomalous individuals in a given population. This task is very demanding from the computational complexity point of view, being located in the second level of the polynomial hierarchy. In this project Answer Set Programming with Quantifiers (QASP), is used to provide a more declarative, compact and efficient modeling of the outlier detection problem. 

Testing benchmark are reported in the benchmarks folder.

In each dataset is made up instances that match possible combinations of the following parameters:
  * Possible graphs: Random vs Structured
  * Observation persentage: complete(100%) vs 80%
  * Graph node size range: {5 10 50 100 500 1000} 

Notice that reported instances are already encoded according to the rewriting required by our approach.



A generic instance can be encoded by using the script qaspLpGen.py:
```bash
  python qaspLpGen.py -r <rules.lp> -f <facts.lp> -obs <obs.lp> -o <outputFile.lp>
```
Example:
```bash
  python qaspLpGen.py -r network_rules.lp -f network_facts.lp-obs network_obs.lp -o QASP.lp
```
In oreder to execute an encoded instance you need to run qasp passing the encoded instance:
```bash
  java -jar qasp-0.1.2.jar -m --n-models=1  <inst.lp>
```
Example:
```bash
  java -jar qasp-0.1.2.jar -m --n-models=1  QASP.lp
```
## Related Works
Angiulli et al. in 2007 proposed to employ Answer Set Programming (ASP) to compute outliers. Their solution is based on the saturation technique and, as a consequence, it is very hard to evaluate by ASP systems.

The system is not public accessible and so, for further details and release version you need to contact angiulli@si.deis.unical.it
