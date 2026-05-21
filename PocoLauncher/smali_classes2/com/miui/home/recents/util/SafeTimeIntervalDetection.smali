.class public Lcom/miui/home/recents/util/SafeTimeIntervalDetection;
.super Ljava/lang/Object;
.source "SafeTimeIntervalDetection.java"


# static fields
.field private static mCurrentTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isMoreThanTimeInterval()Z
    .locals 6

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    sget-wide v2, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->mCurrentTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "SafeTimeIntervalDetection"

    if-gez v2, :cond_0

    const-string v0, "checkTimeInterval: return false"

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    sput-wide v0, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->mCurrentTimeMillis:J

    const-string v0, "checkTimeInterval: return true"

    .line 21
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static resetCurrentTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 30
    sput-wide v0, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->mCurrentTimeMillis:J

    return-void
.end method

.method public static updateCurrentTime()V
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->mCurrentTimeMillis:J

    return-void
.end method
