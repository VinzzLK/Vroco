.class Lmiuix/util/Log$AsyncFileLoggerInstance;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncFileLoggerInstance"
.end annotation


# static fields
.field private static volatile facade:Lmiuix/util/Log$Facade;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lmiuix/util/Log$Facade;
    .locals 4

    .line 109
    sget-object v0, Lmiuix/util/Log$AsyncFileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lmiuix/util/Log$AsyncFileLoggerInstance;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lmiuix/util/Log$AsyncFileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lmiuix/util/Log$Facade;

    invoke-static {p0}, Lmiuix/internal/log/LoggerFactory;->getFileLogger(Landroid/content/Context;)Lmiuix/internal/log/Logger;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;ZLmiuix/util/Log$1;)V

    sput-object v1, Lmiuix/util/Log$AsyncFileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 116
    :cond_1
    :goto_0
    sget-object p0, Lmiuix/util/Log$AsyncFileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    return-object p0
.end method
