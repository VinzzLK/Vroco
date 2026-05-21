.class public Lcom/miui/launcher/appprediction/GoogleRecommendApp;
.super Ljava/lang/Object;
.source "GoogleRecommendApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;,
        Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPredictionTag"


# instance fields
.field private isRegister:Z

.field private final mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

.field private final mCallBack:Landroid/app/prediction/AppPredictor$Callback;

.field private mContext:Landroid/content/Context;

.field private mDataChangedRunnable:Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

.field private final mPredictionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/launcher/appprediction/AppPredictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictor:Landroid/app/prediction/AppPredictor;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$dMiUT3-ijIbPfZ60ln4JPRNmcWw(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->lambda$notifyAppTargetEvent$0(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->uiHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    .line 47
    const-class p2, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionManager;

    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    .line 49
    new-instance p1, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;

    invoke-direct {p1, p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$1;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V

    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mDataChangedRunnable:Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;)Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mDataChangedRunnable:Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)Landroid/app/prediction/AppPredictor;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    return-object p0
.end method

.method private synthetic lambda$notifyAppTargetEvent$0(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3

    .line 159
    new-instance v0, Landroid/app/prediction/AppTargetId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 161
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    .line 163
    new-instance p2, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    const-string p1, "all-apps"

    .line 164
    invoke-virtual {p2, p1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    const-string p1, "com.miui.home.launcher.common.BackgroundThread"

    .line 167
    invoke-static {p1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getHandler"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 168
    new-instance p2, Lcom/miui/launcher/appprediction/GoogleRecommendApp$2;

    invoke-direct {p2, p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$2;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public createAppPredictionSession(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Landroid/app/prediction/AppPredictionContext$Builder;

    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "home"

    .line 94
    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAppPredictionSession : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictionTag"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getPredictList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/launcher/appprediction/AppPredictionInfo;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    return-object p0
.end method

.method public isSupportPredict()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mAppPredictionManager:Landroid/app/prediction/AppPredictionManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictionInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAppTargetEvent(Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/launcher/appprediction/GoogleRecommendApp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/launcher/appprediction/GoogleRecommendApp$$ExternalSyntheticLambda0;-><init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerPredictionUpdates()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    if-nez v0, :cond_0

    const-string v0, "AppPredictionTag"

    const-string v1, "registerPredictionUpdates"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 129
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    :cond_0
    return-void
.end method

.method public requestPredictionUpdate()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    :cond_0
    return-void
.end method

.method public setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-void
.end method

.method public unRegisterPredictionUpdates()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPredictionTag"

    const-string v1, "unRegisterPredictionUpdates"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mPredictor:Landroid/app/prediction/AppPredictor;

    iget-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mCallBack:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->isRegister:Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mDataChangedRunnable:Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    iget-object v2, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iput-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mDataChangedRunnable:Lcom/miui/launcher/appprediction/GoogleRecommendApp$DataChangedRunnable;

    .line 147
    :cond_1
    iput-object v1, p0, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->mListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    return-void
.end method
