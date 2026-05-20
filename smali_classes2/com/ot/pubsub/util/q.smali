.class public Lcom/ot/pubsub/util/q;
.super Ljava/lang/Object;


# instance fields
.field private f:Lcom/ot/pubsub/PubSubTrack$IEventHook;

.field private g:Lcom/ot/pubsub/Configuration;

.field private h:Z

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcom/ot/pubsub/Configuration;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/ot/pubsub/util/q;->j:J

    .line 29
    iput-object p1, p0, Lcom/ot/pubsub/util/q;->g:Lcom/ot/pubsub/Configuration;

    .line 30
    invoke-static {p1}, Lcom/ot/pubsub/util/m;->a(Lcom/ot/pubsub/Configuration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ot/pubsub/util/t;->d(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ot/pubsub/util/q;->h:Z

    return-void
.end method

.method private b()Z
    .locals 4

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ot/pubsub/util/q;->j:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ot/pubsub/util/q;->j:J

    .line 95
    invoke-static {}, Lcom/ot/pubsub/util/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ot/pubsub/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ot/pubsub/util/q;->i:Z

    .line 98
    :cond_0
    iget-boolean p0, p0, Lcom/ot/pubsub/util/q;->i:Z

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "onetrack_dau"

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "onetrack_pa"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ot/pubsub/util/q;->f:Lcom/ot/pubsub/PubSubTrack$IEventHook;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ot/pubsub/PubSubTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ot/pubsub/util/q;->f:Lcom/ot/pubsub/PubSubTrack$IEventHook;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ot/pubsub/PubSubTrack$IEventHook;->isCustomDauEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ot/pubsub/util/q;->g:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-boolean p0, p0, Lcom/ot/pubsub/util/q;->h:Z

    if-eqz p0, :cond_0

    const-string p0, "custom_open"

    return-object p0

    :cond_0
    const-string p0, "custom_close"

    return-object p0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/ot/pubsub/util/q;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "exprience_open"

    return-object p0

    :cond_2
    const-string p0, "exprience_close"

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/ot/pubsub/util/q;->h:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/ot/pubsub/util/q;->g:Lcom/ot/pubsub/Configuration;

    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    const-string v1, "open"

    const-string v2, "close"

    const-string v3, "PrivacyManager"

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use custom privacy policy, the policy is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/ot/pubsub/util/q;->h:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lcom/ot/pubsub/util/q;->h:Z

    goto :goto_2

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/ot/pubsub/util/q;->b()Z

    move-result v0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use system experience plan, the policy is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_8

    .line 45
    invoke-direct {p0, p1}, Lcom/ot/pubsub/util/q;->b(Ljava/lang/String;)Z

    move-result v0

    .line 46
    invoke-direct {p0, p1}, Lcom/ot/pubsub/util/q;->c(Ljava/lang/String;)Z

    move-result v1

    .line 47
    invoke-direct {p0, p1}, Lcom/ot/pubsub/util/q;->d(Ljava/lang/String;)Z

    move-result p0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This event "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string p1, " is "

    goto :goto_3

    :cond_3
    const-string p1, " is not "

    :goto_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "basic event and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is"

    const-string v4, "is not"

    if-eqz v1, :cond_4

    move-object v5, p1

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " recommend event and "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move-object p1, v4

    :goto_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " custom dau event"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p0, 0x1

    :goto_7
    move v0, p0

    :cond_8
    return v0
.end method
