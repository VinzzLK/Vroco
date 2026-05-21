.class public Lcom/ot/pubsub/util/k;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "connectivity"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkConnected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkUtil"

    invoke-static {v1, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/ot/pubsub/PubSubTrack$NetType;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 120
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->WIFI:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 154
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->UNKNOWN:Lcom/ot/pubsub/PubSubTrack$NetType;

    goto :goto_0

    .line 152
    :pswitch_0
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->MOBILE_5G:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    .line 150
    :pswitch_1
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->MOBILE_4G:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    .line 146
    :pswitch_2
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->MOBILE_3G:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    .line 135
    :pswitch_3
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->MOBILE_2G:Lcom/ot/pubsub/PubSubTrack$NetType;

    :goto_0
    return-object p0

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_4

    .line 157
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->ETHERNET:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    .line 121
    :cond_3
    :goto_1
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->NOT_CONNECTED:Lcom/ot/pubsub/PubSubTrack$NetType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NetworkUtil"

    const-string v1, "getNetworkState error"

    .line 160
    invoke-static {v0, v1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    :cond_4
    sget-object p0, Lcom/ot/pubsub/PubSubTrack$NetType;->UNKNOWN:Lcom/ot/pubsub/PubSubTrack$NetType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
