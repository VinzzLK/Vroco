.class public Lcom/ot/pubsub/PubSubTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ot/pubsub/PubSubTrack$NetType;,
        Lcom/ot/pubsub/PubSubTrack$IEventHook;,
        Lcom/ot/pubsub/PubSubTrack$ICommonPropertyProvider;
    }
.end annotation


# static fields
.field private static volatile c:Z = false


# instance fields
.field private d:Lcom/ot/pubsub/Configuration;

.field private e:Lcom/ot/pubsub/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/ot/pubsub/PubSubTrack;->d:Lcom/ot/pubsub/Configuration;

    .line 58
    invoke-static {}, Lcom/ot/pubsub/b/o;->a()Lcom/ot/pubsub/b/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ot/pubsub/b/o;->a(Lcom/ot/pubsub/Configuration;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ot/pubsub/util/b;->a(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/ot/pubsub/a/d;

    invoke-direct {v0, p1, p2}, Lcom/ot/pubsub/a/d;-><init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)V

    iput-object v0, p0, Lcom/ot/pubsub/PubSubTrack;->e:Lcom/ot/pubsub/a/d;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)Lcom/ot/pubsub/PubSubTrack;
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ot/pubsub/Configuration;->getPrivateKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    sget-boolean v0, Lcom/ot/pubsub/util/j;->a:Z

    if-nez v0, :cond_2

    const-string v0, "PubSubAnalytics"

    const-string v1, "PubSubAnalytics init error ,Configuration , ProjectId , PrivateKeyId can\'t null !!!"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    new-instance v0, Lcom/ot/pubsub/PubSubTrack;

    invoke-direct {v0, p0, p1}, Lcom/ot/pubsub/PubSubTrack;-><init>(Landroid/content/Context;Lcom/ot/pubsub/Configuration;)V

    return-object v0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PubSubAnalytics init error Configuration , ProjectId , PrivateKeyId can\'t null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDisable()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/ot/pubsub/PubSubTrack;->c:Z

    return v0
.end method


# virtual methods
.method public setCustomPrivacyPolicyAccepted(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/ot/pubsub/PubSubTrack;->e:Lcom/ot/pubsub/a/d;

    invoke-virtual {p0, p1}, Lcom/ot/pubsub/a/d;->a(Z)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ot/pubsub/PubSubTrack;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/ot/pubsub/PubSubTrack;->d:Lcom/ot/pubsub/Configuration;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ot/pubsub/PubSubTrack;->e:Lcom/ot/pubsub/a/d;

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ot/pubsub/PubSubTrack;->d:Lcom/ot/pubsub/Configuration;

    .line 116
    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->getProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ot/pubsub/PubSubTrack;->d:Lcom/ot/pubsub/Configuration;

    .line 117
    invoke-virtual {v0}, Lcom/ot/pubsub/Configuration;->getPrivateKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ot/pubsub/PubSubTrack;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 123
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v4, p3

    if-nez p4, :cond_2

    .line 126
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_2
    move-object v5, p4

    .line 128
    iget-object v0, p0, Lcom/ot/pubsub/PubSubTrack;->e:Lcom/ot/pubsub/a/d;

    iget-object p0, p0, Lcom/ot/pubsub/PubSubTrack;->d:Lcom/ot/pubsub/Configuration;

    invoke-virtual {p0}, Lcom/ot/pubsub/Configuration;->getProjectId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ot/pubsub/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "PubSubAnalytics"

    const-string p1, "The Configuration or ProjectId or PrivateKeyId or AppId or Topic or data is empty, skip it!"

    .line 119
    invoke-static {p0, p1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
