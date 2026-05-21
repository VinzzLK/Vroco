.class Lcom/xiaomi/dist/utils/ExecutorHelper$1;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;
.source "ExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string p0, "ExecutorHelper"

    const-string p1, "rejectedExecution"

    .line 60
    invoke-static {p0, p1}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
