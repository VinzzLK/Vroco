.class public Lcom/miui/home/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;,
        Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;
    }
.end annotation


# instance fields
.field public mHostId:I

.field public mIsAppWidgetHostStartedListening:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResetHost:Z

.field private mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherWidgetView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$obokNiNieVvY3YONmpx-_yhb24g(Lcom/miui/home/launcher/LauncherAppWidgetHost;ILcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->lambda$createWidgetView$0(ILcom/miui/home/launcher/LauncherWidgetView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeT7evCcBtViIzj8YssOSwztvQo(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->lambda$sendActionCancelled$1(Lcom/miui/home/launcher/BaseActivity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;IZ)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mResetHost:Z

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    .line 63
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    iput p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mHostId:I

    .line 65
    iput-boolean p4, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mResetHost:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherAppWidgetHost;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mResetHost:Z

    return p0
.end method

.method private synthetic lambda$createWidgetView$0(ILcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->addWidgetToCache(ILcom/miui/home/launcher/LauncherWidgetView;)V

    return-void
.end method

.method private static synthetic lambda$sendActionCancelled$1(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V
    .locals 1

    .line 180
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/BaseActivity;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addWidgetToCache(ILcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;Z)Lcom/miui/home/launcher/LauncherWidgetView;

    move-result-object p0

    return-object p0
.end method

.method createLauncherWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;Z)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 98
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;ZZZ)Lcom/miui/home/launcher/LauncherWidgetView;

    move-result-object p0

    return-object p0
.end method

.method createNoTitleWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 88
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;ZZZ)Lcom/miui/home/launcher/LauncherWidgetView;

    move-result-object p0

    return-object p0
.end method

.method createPendingWidgetView(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 1

    .line 148
    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 149
    new-instance p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/PendingLoadWidgetHostView;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/PendingLoadWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 153
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createPendingWidgetView: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "widgetInfo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LauncherAppWidgetHost"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 155
    iget p2, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d009a

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 158
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 160
    iget-boolean p0, p3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p0, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    iget-object p2, p3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_1
    iput-object p1, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    return-object p1
.end method

.method public createWidgetView(Landroid/content/Context;ILcom/miui/home/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;ZZZ)Lcom/miui/home/launcher/LauncherWidgetView;
    .locals 2

    .line 103
    iput-object p3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 104
    invoke-virtual {p0, p1, p2, p4}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 106
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v1, p7}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setClipCorner(Z)V

    .line 109
    :cond_0
    invoke-virtual {v0, p2, p4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 110
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->clearFocus()V

    const/4 p4, 0x1

    .line 111
    iput p4, p3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    if-eqz p6, :cond_1

    const p4, 0x7f0d009a

    goto :goto_0

    :cond_1
    const p4, 0x7f0d009b

    .line 113
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p7

    const/4 v1, 0x0

    invoke-virtual {p7, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/LauncherWidgetView;

    .line 114
    invoke-virtual {p4, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidget(Landroid/appwidget/AppWidgetHostView;)V

    .line 116
    iget-object p7, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p7}, Lcom/miui/home/launcher/Launcher;->getWidgetTouchDetector()Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    move-result-object p7

    invoke-virtual {p4, p7}, Lcom/miui/home/launcher/LauncherWidgetView;->setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V

    const/16 p7, 0x8

    if-eqz p6, :cond_3

    .line 119
    iget-boolean p6, p3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz p6, :cond_2

    .line 120
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p6

    iget-object p7, p3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p6

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p6

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_1
    iput-object p4, p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz p5, :cond_5

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p5

    if-eq p3, p5, :cond_4

    .line 131
    new-instance p3, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p4}, Lcom/miui/home/launcher/LauncherAppWidgetHost$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHost;ILcom/miui/home/launcher/LauncherWidgetView;)V

    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {p0, p2, p4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->addWidgetToCache(ILcom/miui/home/launcher/LauncherWidgetView;)V

    .line 137
    :cond_5
    :goto_2
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetDeviceAdapter;->updateMIUILargeScreenDeviceOptions(Landroid/content/Context;I)V

    return-object p4
.end method

.method public getLauncherAppWidgetHostCacheViews()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/LauncherWidgetView;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public initWidgetHost(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->initWidgetHost(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public initWidgetHost(ZLjava/lang/Runnable;)V
    .locals 3

    .line 222
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getWidgetCoreExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {v1, v2, p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost$WidgetHostInitRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Z)V

    .line 222
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 75
    new-instance p3, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p3, p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p2, :cond_0

    const p2, 0x7f0a0280

    .line 77
    iget-boolean p1, p1, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->miuiAutoScale:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(ILjava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mTempWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    :cond_0
    return-object p3
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez p0, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onProviderChanged()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherWidgetView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherWidgetView;->onScreenSizeChanged()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startConfigActivity(Lcom/miui/home/launcher/BaseActivity;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 172
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f100035

    const/4 v0, 0x0

    .line 174
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->sendActionCancelled(Lcom/miui/home/launcher/BaseActivity;I)V

    :goto_0
    return-void
.end method

.method public stopWidgetHostListening()V
    .locals 3

    .line 227
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getWidgetCoreExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost$StopListeningRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
