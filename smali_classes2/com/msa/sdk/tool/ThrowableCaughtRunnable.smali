.class public abstract Lcom/msa/sdk/tool/ThrowableCaughtRunnable;
.super Ljava/lang/Object;
.source "ThrowableCaughtRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field mTrackException:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->mTrackException:Z

    return-void
.end method


# virtual methods
.method protected abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final run()V
    .locals 4

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 28
    iget-object v3, p0, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->mMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "AD-ThrowableCaughtRunnable message: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object p0, p0, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->mTag:Ljava/lang/String;

    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->addAdPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
