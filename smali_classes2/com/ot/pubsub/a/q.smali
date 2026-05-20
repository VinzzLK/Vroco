.class public Lcom/ot/pubsub/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ot/pubsub/a/c;


# instance fields
.field private d:Lcom/ot/pubsub/Configuration;

.field private e:Lcom/ot/pubsub/util/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/util/q;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    .line 48
    iput-object p3, p0, Lcom/ot/pubsub/a/q;->e:Lcom/ot/pubsub/util/q;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "PubSubTrackLocalImp"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 225
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannedParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 233
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterParams error\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "jsonObject is null or bannedParams is empty"

    .line 226
    invoke-static {p0, p1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 144
    invoke-static {}, Lcom/ot/pubsub/util/l;->i()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PubSubTrackLocalImp"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RU"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "region is RU,Not allowed pubsub"

    .line 147
    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 150
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "region is CN,Not allowed pubsub"

    .line 152
    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 247
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object p0

    const-string v0, "disable_log"

    invoke-virtual {p0, p1, v0}, Lcom/ot/pubsub/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDisableTrackForApp error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PubSubTrackLocalImp"

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 160
    iget-object v1, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v1}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ot/pubsub/a/q;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PubSubTrackLocalImp"

    if-eqz v1, :cond_0

    const-string p0, "This app disabled tracking data, skip it."

    .line 161
    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "H"

    .line 166
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v3, "B"

    .line 167
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object v4

    iget-object v5, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v5}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "needIds"

    invoke-virtual {v4, v5, p3, v6, v0}, Lcom/ot/pubsub/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    const-string v5, "tip"

    .line 170
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", needIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v5, v4}, Lcom/ot/pubsub/a/q;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    iget-object v4, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v4}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/ot/pubsub/a/q;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, " This event disabled tracking data , skip it."

    .line 176
    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v4}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/ot/pubsub/a/q;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, " This event should not upload by sampling , skip it."

    .line 180
    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_3
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object v4

    iget-object v5, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v5}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bannedParams"

    invoke-virtual {v4, v5, p3, v6, v0}, Lcom/ot/pubsub/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_4
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object v4

    iget-object v5, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v5}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ot/pubsub/b/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bannedParamsForApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", bannedParamsForEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ","

    .line 189
    invoke-static {v4, v0, v5}, Lcom/ot/pubsub/util/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 191
    invoke-direct {p0, p4, v0}, Lcom/ot/pubsub/a/q;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 192
    invoke-direct {p0, v3, v0}, Lcom/ot/pubsub/a/q;->a(Lorg/json/JSONObject;Ljava/util/Set;)V

    .line 193
    iget-object p0, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {p0}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ot/pubsub/util/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v9, p5

    invoke-static/range {v3 .. v9}, Lcom/ot/pubsub/f/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkCloudControl error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 205
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    const-string p0, "\\."

    .line 210
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 211
    array-length p1, p0

    const/4 v2, 0x5

    if-lt p1, v2, :cond_2

    const-string p1, ","

    .line 212
    invoke-static {p2, p1}, Lcom/ot/pubsub/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 213
    aget-object p0, p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :catch_0
    move-exception p0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isMatchId error\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PubSubTrackLocalImp"

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    .line 258
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object v0

    const-string v1, "disable_log"

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/ot/pubsub/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDisableTrackForEvent error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PubSubTrackLocalImp"

    invoke-static {p2, p1}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 267
    invoke-static {}, Lcom/ot/pubsub/b/h;->a()Lcom/ot/pubsub/b/h;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ot/pubsub/b/h;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    .line 268
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/ot/pubsub/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 272
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUploadBySampling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",  shouldUpload="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", sample="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", val="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PubSubTrackLocalImp"

    invoke-static {p1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 113
    new-instance p1, Lcom/ot/pubsub/a/r;

    invoke-direct {p1, p0}, Lcom/ot/pubsub/a/r;-><init>(Lcom/ot/pubsub/a/q;)V

    invoke-static {p1}, Lcom/ot/pubsub/e/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/ot/pubsub/a/q;->e:Lcom/ot/pubsub/util/q;

    const-string v1, "PubSubTrackLocalImp"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/ot/pubsub/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    .line 63
    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/ot/pubsub/a/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/ot/pubsub/g/i;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "track network is unaccessable, cta"

    .line 71
    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/ot/pubsub/g/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/ot/pubsub/g/i;->a(Lcom/ot/pubsub/a/c;)V

    .line 78
    sget-boolean v0, Lcom/ot/pubsub/util/j;->a:Z

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track pb ot data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    invoke-static {}, Lcom/ot/pubsub/b/e;->a()V

    .line 82
    invoke-static {}, Lcom/ot/pubsub/b/a;->a()Lcom/ot/pubsub/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ot/pubsub/a/q;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v1}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ot/pubsub/b/a;->b(Ljava/lang/String;)V

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/ot/pubsub/a/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/ot/pubsub/g/i;->a()Z

    move-result v0

    const-string v1, "PubSubTrackLocalImp"

    if-nez v0, :cond_0

    const-string p0, "network is unaccessable, cta"

    .line 98
    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 99
    invoke-static/range {v2 .. v7}, Lcom/ot/pubsub/g/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/ot/pubsub/g/i;->a(Lcom/ot/pubsub/a/c;)V

    .line 104
    sget-boolean p0, Lcom/ot/pubsub/util/j;->a:Z

    if-eqz p0, :cond_1

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "track pb data:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-static {}, Lcom/ot/pubsub/g/c;->a()Lcom/ot/pubsub/g/c;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ot/pubsub/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 128
    invoke-static {}, Lcom/ot/pubsub/PubSubTrack;->isDisable()Z

    move-result v0

    const-string v1, "PubSubTrackLocalImp"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Tracking data is disabled or onetrack use system net traffic only, skip it."

    .line 129
    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/ot/pubsub/a/q;->a()Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const-string v0, "onetrack_bug_report"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, p0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 136
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_3

    const-string p0, "Event size exceed limitation!"

    .line 137
    invoke-static {v1, p0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    return p0
.end method
