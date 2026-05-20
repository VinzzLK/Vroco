.class Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mResolver:Ljava/lang/ref/WeakReference;

    .line 488
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mBinder:Ljava/lang/ref/WeakReference;

    .line 489
    iput-object p3, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ContentResolver;

    .line 495
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/data/ContentProviderBinder;

    const-string v7, "ContentProviderBinder"

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "resolver not null, go on!"

    .line 500
    invoke-static {v7, v2}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->mWorkArgs:Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget-object v2, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 510
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    goto :goto_0

    :cond_1
    const-string v1, "failed to query, cursor is null"

    .line 512
    invoke-static {v7, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception thrown during handling EVENT_ARG_QUERY"

    .line 515
    invoke-static {v7, v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 519
    :goto_0
    iget-boolean v1, v0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    if-nez v1, :cond_2

    .line 520
    invoke-static {v0, p0}, Lcom/miui/maml/data/ContentProviderBinder;->access$100(Lcom/miui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V

    .line 522
    :cond_2
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 524
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "WorkerTask: resolver or binder is null"

    .line 497
    invoke-static {v7, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/miui/maml/data/ContentProviderBinder$WorkerTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
