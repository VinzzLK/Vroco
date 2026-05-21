.class public Lcom/ot/pubsub/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/PubSubTrack$IEventHook;Lorg/json/JSONObject;Lcom/ot/pubsub/util/q;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    invoke-static {p0, p2, p3, p5}, Lcom/ot/pubsub/h/a;->a(Ljava/lang/String;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/PubSubTrack$IEventHook;Lcom/ot/pubsub/util/q;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "H"

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-static {p1, p4}, Lcom/ot/pubsub/util/m;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "B"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
