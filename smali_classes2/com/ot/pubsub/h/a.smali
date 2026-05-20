.class public Lcom/ot/pubsub/h/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ot/pubsub/h/a$c;
    }
.end annotation


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lorg/json/JSONObject;

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/PubSubTrack$IEventHook;Lcom/ot/pubsub/util/q;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    .line 224
    invoke-static {p0, p1, p2, v0, p3}, Lcom/ot/pubsub/h/a;->a(Ljava/lang/String;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/PubSubTrack$IEventHook;Ljava/lang/String;Lcom/ot/pubsub/util/q;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ot/pubsub/Configuration;Lcom/ot/pubsub/PubSubTrack$IEventHook;Ljava/lang/String;Lcom/ot/pubsub/util/q;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 229
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 230
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/ot/pubsub/h/a$c;->a:Ljava/lang/String;

    invoke-virtual {p3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 233
    invoke-interface {p2, p0}, Lcom/ot/pubsub/PubSubTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 234
    invoke-static {v0}, Lcom/ot/pubsub/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 236
    sget-object p2, Lcom/ot/pubsub/h/a$c;->c:Ljava/lang/String;

    invoke-virtual {p3, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_0
    sget-object p0, Lcom/ot/pubsub/h/a$c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/g/b;->a()Lcom/ot/pubsub/g/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ot/pubsub/g/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    sget-object p0, Lcom/ot/pubsub/h/a$c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    sget-object p0, Lcom/ot/pubsub/h/a$c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/DeviceUtil;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    sget-object p0, Lcom/ot/pubsub/h/a$c;->g:Ljava/lang/String;

    const-string p2, "Android"

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object p0, Lcom/ot/pubsub/h/a$c;->h:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/l;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    sget-object p0, Lcom/ot/pubsub/h/a$c;->i:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/l;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    sget-object p0, Lcom/ot/pubsub/h/a$c;->j:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/l;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    sget-object p0, Lcom/ot/pubsub/h/a$c;->l:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    sget-object p0, Lcom/ot/pubsub/h/a$c;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 248
    sget-object p0, Lcom/ot/pubsub/h/a$c;->p:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/l;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    sget-object p0, Lcom/ot/pubsub/h/a$c;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/ot/pubsub/util/k;->b(Landroid/content/Context;)Lcom/ot/pubsub/PubSubTrack$NetType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ot/pubsub/PubSubTrack$NetType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-static {}, Lcom/ot/pubsub/util/l;->i()Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-static {}, Lcom/ot/pubsub/b/a;->a()Lcom/ot/pubsub/b/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/ot/pubsub/b/a;->d(Ljava/lang/String;)V

    .line 252
    sget-object p2, Lcom/ot/pubsub/h/a$c;->r:Ljava/lang/String;

    invoke-virtual {p3, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    sget-object p0, Lcom/ot/pubsub/h/a$c;->t:Ljava/lang/String;

    const-string p2, "2.0.3"

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    sget-object p0, Lcom/ot/pubsub/h/a$c;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    sget-object p0, Lcom/ot/pubsub/h/a$c;->m:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "default"

    .line 257
    :goto_0
    sget-object p1, Lcom/ot/pubsub/h/a$c;->n:Ljava/lang/String;

    invoke-virtual {p3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    sget-object p0, Lcom/ot/pubsub/h/a$c;->w:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/l;->f()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    sget-object p0, Lcom/ot/pubsub/h/a$c;->x:Ljava/lang/String;

    const-string p1, "sdk"

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    sget-object p0, Lcom/ot/pubsub/h/a$c;->y:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/t;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/ot/pubsub/util/v;->d(J)Z

    move-result p1

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    sget-boolean p0, Lcom/ot/pubsub/util/j;->c:Z

    if-eqz p0, :cond_2

    .line 265
    sget-object p0, Lcom/ot/pubsub/h/a$c;->z:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 267
    :cond_2
    sget-object p0, Lcom/ot/pubsub/h/a$c;->A:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/ot/pubsub/util/q;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    sget-object p0, Lcom/ot/pubsub/h/a$c;->B:Ljava/lang/String;

    invoke-static {}, Lcom/ot/pubsub/util/DeviceUtil;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p3
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/ot/pubsub/h/a;->k:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ot/pubsub/h/a;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ot/pubsub/h/a;->l:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/ot/pubsub/h/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public b(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/ot/pubsub/h/a;->m:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ot/pubsub/h/a;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ot/pubsub/h/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/ot/pubsub/h/a;->j:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/ot/pubsub/h/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/ot/pubsub/h/a;->k:I

    return p0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/ot/pubsub/h/a;->l:Lorg/json/JSONObject;

    return-object p0
.end method

.method public i()Z
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/ot/pubsub/h/a;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ot/pubsub/h/a;->l:Lorg/json/JSONObject;

    const-string v1, "B"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ot/pubsub/h/a;->h:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/ot/pubsub/h/a;->i:Ljava/lang/String;

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "BaseMessage"

    const-string v1, "check event isValid error, "

    .line 120
    invoke-static {v0, v1, p0}, Lcom/ot/pubsub/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
