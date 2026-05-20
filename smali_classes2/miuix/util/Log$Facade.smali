.class public Lmiuix/util/Log$Facade;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Facade"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/util/Log$Facade$PrintLogRunnable;
    }
.end annotation


# instance fields
.field private mLogger:Lmiuix/internal/log/Logger;

.field private mPrintAsync:Z

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lmiuix/internal/log/Logger;)V
    .locals 1

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, p1, v0}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/log/Logger;Lmiuix/util/Log$1;)V
    .locals 0

    .line 531
    invoke-direct {p0, p1}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;)V

    return-void
.end method

.method private constructor <init>(Lmiuix/internal/log/Logger;Z)V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lmiuix/util/Log$Facade;->mLogger:Lmiuix/internal/log/Logger;

    .line 545
    iput-boolean p2, p0, Lmiuix/util/Log$Facade;->mPrintAsync:Z

    if-eqz p2, :cond_0

    .line 547
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lmiuix/util/Log$Facade;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/log/Logger;ZLmiuix/util/Log$1;)V
    .locals 0

    .line 531
    invoke-direct {p0, p1, p2}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;Z)V

    return-void
.end method

.method private log(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 761
    invoke-virtual/range {v0 .. v5}, Lmiuix/util/Log$Facade;->doLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    return-void
.end method

.method private printLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 0

    .line 843
    iget-object p0, p0, Lmiuix/util/Log$Facade;->mLogger:Lmiuix/internal/log/Logger;

    if-nez p0, :cond_0

    const-string p0, "LogcatFacade"

    const-string p1, "mLogger is null"

    .line 844
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 847
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/log/Logger;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p0, p1, p2, p5}, Lmiuix/internal/log/Logger;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;)V

    .line 850
    invoke-interface {p5}, Lmiuix/internal/log/message/Message;->recycle()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 8

    .line 772
    iget-boolean v0, p0, Lmiuix/util/Log$Facade;->mPrintAsync:Z

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Lmiuix/util/Log$Facade$PrintLogRunnable;->obtain()Lmiuix/util/Log$Facade$PrintLogRunnable;

    move-result-object v0

    .line 774
    iget-object v2, p0, Lmiuix/util/Log$Facade;->mLogger:Lmiuix/internal/log/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lmiuix/util/Log$Facade$PrintLogRunnable;->setLogInfo(Lmiuix/internal/log/Logger;Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    .line 775
    iget-object p0, p0, Lmiuix/util/Log$Facade;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 777
    :cond_0
    invoke-direct/range {p0 .. p5}, Lmiuix/util/Log$Facade;->printLog(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V

    :goto_0
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 745
    sget-object v0, Lmiuix/internal/log/Level;->FATAL:Lmiuix/internal/log/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/util/Log$Facade;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 629
    sget-object v0, Lmiuix/internal/log/Level;->INFO:Lmiuix/internal/log/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiuix/util/Log$Facade;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
