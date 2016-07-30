Bos Grunniens
=============

![cc-by-sa Dennis Jarvis](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Bos_grunniens_at_Yundrok_Yumtso_Lake.jpg/320px-Bos_grunniens_at_Yundrok_Yumtso_Lake.jpg)

A dashboard / command center for visualising and manging the state of a network of services.

Architecture
------------

A number of very simple sources poll the services we're interested in and output a stream of newline delimited JSON messages to standard out.

```
$ bos-grunniens-jenkins
{"key":"jenkins","message":{"...":"..."}}
{"key":"jenkins","message":{"...":"..."}}
{"key":"jenkins","message":{"...":"..."}}
{"key":"jenkins","message":{"...":"..."}}
```

A separate process receives these messages through named pipes and exposes them as a [`text/event-stream`](https://html.spec.whatwg.org/multipage/comms.html#text/event-stream).

The UI displays these streams of events.

```
$ paste -d '\n' <(bos-grunnines-jenkins) <(bos-grunnines-sensu) | eventsourced
Streaming standard input to port 1337
Allowed orgins: null
```

