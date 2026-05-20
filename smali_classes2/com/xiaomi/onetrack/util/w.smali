.class public Lcom/xiaomi/onetrack/util/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "custom_open"

.field private static final b:Ljava/lang/String; = "custom_close"

.field private static final c:Ljava/lang/String; = "exprience_open"

.field private static final d:Ljava/lang/String; = "exprience_close"

.field private static final e:Ljava/lang/String; = "PrivacyManager"

.field private static final l:J = 0xdbba0L


# instance fields
.field private f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

.field private g:Lcom/xiaomi/onetrack/Configuration;

.field private h:Ljava/lang/Boolean;

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/w;->j:Z

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/w;->k:J

    .line 31
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/w;->g:Lcom/xiaomi/onetrack/Configuration;

    return-void
.end method

.method private c()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/w;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/w;->g:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->j(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/util/w;->h:Ljava/lang/Boolean;

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/w;->h:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "onetrack_dau"

    .line 65
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

.method private d()Z
    .locals 4

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/onetrack/util/w;->k:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/util/w;->k:J

    .line 103
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/w;->i:Z

    .line 106
    :cond_0
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/util/w;->i:Z

    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/w;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isCustomDauEvent(Ljava/lang/String;)Z

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

    .line 85
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/w;->g:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/w;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "custom_open"

    return-object p0

    :cond_0
    const-string p0, "custom_close"

    return-object p0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/w;->d()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "exprience_open"

    return-object p0

    :cond_2
    const-string p0, "exprience_close"

    return-object p0
.end method

.method public a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/w;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/w;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/w;->g:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isUseCustomPrivacyPolicy()Z

    move-result v0

    const-string v1, "open"

    const-string v2, "close"

    const-string v3, "PrivacyManager"

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use custom privacy policy, the policy is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/w;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/w;->c()Z

    move-result v0

    goto :goto_2

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/w;->d()Z

    move-result v0

    .line 49
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

    invoke-static {v3, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_8

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/w;->c(Ljava/lang/String;)Z

    move-result v0

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/util/w;->b(Ljava/lang/String;)Z

    move-result v1

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/w;->d(Ljava/lang/String;)Z

    move-result p0

    .line 56
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

    .line 57
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

    .line 56
    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

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

.method public b(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/w;->j:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/util/w;->j:Z

    return p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/w;->f:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
