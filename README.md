# Mediator Utilities
Just some script that can be adapted used to check KIT's mediator logs. In our KIT's mediator installation, mediator writes logs on journal like this

```
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: =INFO REPORT==== 20-Mar-2019::14:40:30.264389 ===
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: New worker <0.16234.14> connected from: {141,3,25,137}
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: =INFO REPORT==== 20-Mar-2019::14:40:30.270069 ===
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: New worker <0.16236.14> connected from: {141,3,25,137}
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: =INFO REPORT==== 20-Mar-2019::14:40:30.276936 ===
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: Worker <0.16234.14> announced service: {node,[],"1711638382","ASR KIT",
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: "asr-en-01",
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: "en-EU-lecture_KIT-hybrid","audio",
Mar 20 14:40:30 elitr-mediator run-kit-mediator.sh[36775]: "en-EU","unseg-text",undefined}
```

## Check Workers
If mediator writes logs on journal like in the provided example, you can check connected workers behavior like this

```
sh workerslist.sh | sort
```

or if you want to check workers connected on 20th of March

```
sh workerslist.sh 20
```

## Check Clients requests
If mediator writes logs on journal like in the provided example, you can check client requests

```
sh clientrequestslist.sh
```
