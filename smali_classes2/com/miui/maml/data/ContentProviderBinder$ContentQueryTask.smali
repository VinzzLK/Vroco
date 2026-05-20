.class Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;
.super Landroid/os/AsyncTask;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/ContentResolver;Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 534
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mResolver:Ljava/lang/ref/WeakReference;

    .line 535
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    .line 536
    iput-object p3, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 541
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    .line 542
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder;

    const-string v1, "ContentProviderBinder"

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 543
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    if-nez v2, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    new-instance v3, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;

    invoke-direct {v3, v0, p1, v2}, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;-><init>(Lcom/miui/maml/data/ContentProviderBinder;Landroid/content/ContentResolver;Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;)V

    .line 549
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 550
    invoke-static {}, Lcom/miui/maml/util/ExecutorHelper;->getLocalTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4e20

    .line 552
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkerTask execute error, maybe timeout, uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    .line 559
    invoke-virtual {p1, p0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :catch_1
    const-string p0, "WorkerTask interrupted"

    .line 556
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "WorkerTask execute exception, maybe timeout"

    .line 554
    invoke-static {v1, p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :goto_1
    const-string p0, "ContentQueryTask: resolver or binder is null"

    .line 544
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 528
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 567
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 568
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/ContentProviderBinder;

    if-nez p0, :cond_0

    const-string p0, "ContentProviderBinder"

    const-string p1, "ContentQueryTask onPost: binder is null"

    .line 570
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 573
    :cond_0
    invoke-static {p0}, Lcom/miui/maml/data/ContentProviderBinder;->access$200(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 528
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/ContentProviderBinder$ContentQueryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
