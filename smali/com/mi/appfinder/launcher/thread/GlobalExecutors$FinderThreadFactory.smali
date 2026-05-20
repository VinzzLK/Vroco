.class Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;
.super Ljava/lang/Object;
.source "GlobalExecutors.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/appfinder/launcher/thread/GlobalExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinderThreadFactory"
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNamePrefix:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public static synthetic $r8$lambda$mEIeWJ0oMYWXIulcBsuKwBREESY(Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->lambda$newThread$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7fffffff

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    iput-object p1, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mNamePrefix:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mPriority:I

    return-void
.end method

.method private synthetic lambda$newThread$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    iget p0, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mPriority:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 66
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 68
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .line 64
    new-instance v6, Ljava/lang/Thread;

    new-instance v2, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory$$ExternalSyntheticLambda0;-><init>(Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mNamePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-wide/32 v4, -0x80000

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-object v6
.end method
