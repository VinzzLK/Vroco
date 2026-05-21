.class public Lcom/miui/home/launcher/common/ForegroundTaskQueue;
.super Ljava/lang/Object;
.source "ForegroundTaskQueue.java"


# instance fields
.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handleRemainingTasksOnResume(Landroid/app/Activity;)V
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 16
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->mMessageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
