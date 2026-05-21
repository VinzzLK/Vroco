.class public Lcom/miui/msa/utils/SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"


# static fields
.field private static final DEFAULT_READ_WAIT_TIME_OUT:I = 0x3e8

.field private static final DEFAULT_WRITE_INTERVAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesWrapper"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSyncWriteTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/miui/msa/utils/SharedPreferencesWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper$1;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;)V

    iput-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mSyncWriteTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mSharedPref:Landroid/content/SharedPreferences;

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/msa/sdk/tool/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/msa/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/msa/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TV;>;TV;)TV;"
        }
    .end annotation

    .line 184
    sget-object p0, Lcom/msa/sdk/tool/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    .line 186
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SharedPreferencesWrapper"

    const-string v0, "getCommonReturnValue exception"

    .line 188
    invoke-static {p1, v0, p0}, Lcom/msa/sdk/tool/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method private triggerDelayWrite()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/msa/sdk/tool/GlobalHolder;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mSyncWriteTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 173
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 180
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$8;

    invoke-direct {v1, p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper$8;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 141
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper$7;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 148
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 125
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper$6;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;F)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 132
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 93
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper$4;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 109
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/msa/utils/SharedPreferencesWrapper$5;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 116
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 68
    invoke-direct {p0, v0, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/utils/SharedPreferencesWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper$3;-><init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 84
    invoke-direct {p0, v0, p2}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-direct {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method
