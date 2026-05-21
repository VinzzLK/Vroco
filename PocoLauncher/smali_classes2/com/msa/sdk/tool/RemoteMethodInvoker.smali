.class public abstract Lcom/msa/sdk/tool/RemoteMethodInvoker;
.super Ljava/util/concurrent/FutureTask;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field private static final CONNECTED_BINDERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemSdk-RemoteMethodInvoker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mReuseBinder:Z

.field private mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mUnbindDelayInterval:I


# direct methods
.method public static synthetic $r8$lambda$Ug1mlJsA0aPsmB2z2VARgIXvArc()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->lambda$new$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->CONNECTED_BINDERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/msa/sdk/tool/RemoteMethodInvoker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/msa/sdk/tool/RemoteMethodInvoker$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 42
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RMI of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemSdk-RemoteMethodInvoker"

    invoke-static {p1, p0}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/msa/sdk/tool/RemoteMethodInvoker;Landroid/os/IBinder;)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->getAndKeepBinder(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/os/IInterface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/msa/sdk/tool/RemoteMethodInvoker;Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->invokeInternal(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/msa/sdk/tool/RemoteMethodInvoker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->unbindService()V

    return-void
.end method

.method static synthetic access$600(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/msa/sdk/tool/RemoteMethodInvoker;)Ljava/lang/Class;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->CONNECTED_BINDERS:Ljava/util/Map;

    return-object v0
.end method

.method public static binderCanBeReused(Ljava/lang/Class;)Z
    .locals 1

    .line 166
    sget-object v0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->CONNECTED_BINDERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getAndKeepBinder(Landroid/os/IBinder;)Z
    .locals 7

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$Stub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v1

    .line 90
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 91
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    iput-object v2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] connected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->trySaveReuseBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cast binder exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;->onBindException(Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method

.method private invokeInternal(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeInternal Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    invoke-interface {v1, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;->onIPCException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RMIMonitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static synthetic lambda$new$0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryGetReuseBinder()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mReuseBinder:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->CONNECTED_BINDERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reuse Service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemSdk-RemoteMethodInvoker"

    invoke-static {v1, p0}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private trySaveReuseBinder(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mReuseBinder:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;

    invoke-direct {v0, p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker$3;-><init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keep Service["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] for reusing!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    invoke-static {v0, p1}, Lcom/msa/sdk/tool/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object p1, Lcom/msa/sdk/tool/RemoteMethodInvoker;->CONNECTED_BINDERS:Ljava/util/Map;

    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private unbindService()V
    .locals 4

    .line 105
    new-instance v0, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;

    const-string v1, "SystemSdk-RemoteMethodInvoker"

    const-string v2, "Unbind service exception"

    invoke-direct {v0, p0, v1, v2}, Lcom/msa/sdk/tool/RemoteMethodInvoker$2;-><init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget v1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mUnbindDelayInterval:I

    if-lez v1, :cond_0

    .line 115
    invoke-static {}, Lcom/msa/sdk/tool/HandlerHolder;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    iget p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mUnbindDelayInterval:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/msa/sdk/tool/ThrowableCaughtRunnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public invoke(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0, v1}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->invoke(Landroid/content/Intent;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Landroid/content/Intent;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J)TT;"
        }
    .end annotation

    .line 129
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mStartTime:J

    .line 133
    invoke-direct {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->tryGetReuseBinder()Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    const-string v1, "invoke Exception "

    if-gtz p1, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    if-eqz p0, :cond_2

    .line 150
    invoke-interface {p0, p1}, Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;->onIPCException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " Timeout"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    if-eqz p0, :cond_2

    .line 145
    invoke-interface {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;->onTimeout()V

    goto :goto_0

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not find bind service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mServiceClass:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    if-eqz p0, :cond_2

    .line 156
    invoke-interface {p0}, Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;->onBindFailed()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_3
    invoke-direct {p0, v0}, Lcom/msa/sdk/tool/RemoteMethodInvoker;->invokeInternal(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 130
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Should not run on main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 69
    new-instance p1, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;

    const-string v0, "SystemSdk-RemoteMethodInvoker"

    const-string v1, "onServiceConnected exception"

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/msa/sdk/tool/RemoteMethodInvoker$1;-><init>(Lcom/msa/sdk/tool/RemoteMethodInvoker;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 82
    sget-object p0, Lcom/msa/sdk/tool/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public setInvokeFailedCallback(Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;)Lcom/msa/sdk/tool/RemoteMethodInvoker;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mInvokeFailedCallback:Lcom/msa/sdk/tool/RemoteMethodInvoker$InvokeFailedCallback;

    return-object p0
.end method

.method public setReuseBinder(Z)Lcom/msa/sdk/tool/RemoteMethodInvoker;
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mReuseBinder:Z

    return-object p0
.end method

.method public setUnbindDelay(I)Lcom/msa/sdk/tool/RemoteMethodInvoker;
    .locals 0

    .line 59
    iput p1, p0, Lcom/msa/sdk/tool/RemoteMethodInvoker;->mUnbindDelayInterval:I

    return-object p0
.end method
