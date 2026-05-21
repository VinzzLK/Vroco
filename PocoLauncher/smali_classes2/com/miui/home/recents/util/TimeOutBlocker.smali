.class public Lcom/miui/home/recents/util/TimeOutBlocker;
.super Ljava/lang/Object;
.source "TimeOutBlocker.java"


# static fields
.field private static final TIME_OUT_SESSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vKRAGivAmGuS3X3pLJfWzc6Ua-E(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/TimeOutBlocker;->lambda$startCountDown$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    return-void
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 37
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$startCountDown$0(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static startCountDown(Landroid/os/Handler;JLjava/lang/String;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 25
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 26
    check-cast v2, Landroid/os/Handler;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    new-instance v1, Lcom/miui/home/recents/util/TimeOutBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/miui/home/recents/util/TimeOutBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
