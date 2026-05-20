.class public Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;
.super Ljava/lang/Object;
.source "LauncherServiceDeliveryWidgetDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$BooleanRef;,
        Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;,
        Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$MamlWidgetFactoryImpl;,
        Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;
    }
.end annotation


# instance fields
.field private final appWidgetFactory:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

.field private final launcher:Lcom/miui/home/launcher/Launcher;

.field private final mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

.field private final pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;

.field private final serviceDeliveryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

.field protected final widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;


# direct methods
.method public static synthetic $r8$lambda$dzJ31N2jdqGRWesKz7vxx_GyhSo(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->lambda$trackExecuteServiceDeliveryReuse$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->serviceDeliveryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$1;-><init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    .line 93
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 94
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/16 v1, 0x803

    const/4 v2, 0x1

    invoke-direct {v0, p1, p1, v1, v2}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;IZ)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 95
    new-instance v1, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetHost;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->appWidgetFactory:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    .line 96
    new-instance v2, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$MamlWidgetFactoryImpl;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$MamlWidgetFactoryImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

    .line 97
    new-instance v3, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$PendingWidgetFactoryImpl;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/appwidget/AppWidgetHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;)V

    iput-object v3, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;

    return-void
.end method

.method private synthetic lambda$trackExecuteServiceDeliveryReuse$0()V
    .locals 3

    .line 296
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->getInstance(Landroid/content/Context;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->queryWidgetRecordCount()I

    move-result v0

    .line 303
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->getInstance(Landroid/content/Context;)Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordRepository;->queryMaMlRecordCount()I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v2

    .line 306
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->serviceDeliveryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    array-length v2, v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExecuteServiceDeliveryReuse(IIII)V

    return-void
.end method


# virtual methods
.method public createWidget(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;)Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;
    .locals 12

    .line 101
    iget v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    if-gtz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocCustomViewWidgetId()I

    move-result v0

    iput v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->widgetId:I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    .line 105
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    .line 107
    new-instance v11, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v11, p1, v1, v0}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;-><init>(Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;)V

    .line 108
    new-instance v8, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;

    const v1, 0x7f10046a

    const v2, 0x7f10046c

    const v3, 0x7f10046b

    invoke-direct {v8, v1, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;-><init>(III)V

    .line 112
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->appWidgetFactory:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->mamlWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;

    iget-object v6, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->pendingWidgetFactory:Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;-><init>(Landroid/appwidget/AppWidgetHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/AppWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/MamlWidgetFactory;Lcom/miui/miuiwidget/servicedelivery/appwidget/PendingWidgetFactory;)V

    new-instance v4, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;

    invoke-direct {v4}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;-><init>()V

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->tracker:Lcom/miui/miuiwidget/track/MiuiWidgetTracker;

    sget-object v6, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 118
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getWidgetCoreExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    const/4 v9, 0x0

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    move-object v2, v11

    .line 112
    invoke-static/range {v1 .. v10}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;->create(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/appwidget/WidgetController;Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;Lcom/miui/miuiwidget/track/MiuiWidgetTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/miui/miuiwidget/servicedelivery/ServiceDeliveryAccessibilityDesc;ZZ)Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;

    move-result-object v1

    .line 122
    iput-object v11, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->mLayoutHost:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryLayoutHost;

    .line 123
    iput-object v0, p1, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;->hostView:Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;

    .line 124
    sget-boolean v2, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    iput-boolean v2, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    .line 125
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->initialize(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout;Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 128
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetTouchDetector()Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryWidgetView;->setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->serviceDeliveryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->trackExecuteServiceDeliveryReuse()V

    return-object v0
.end method

.method public initWidgetHost()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->appWidgetFactory:Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$AppWidgetFactoryImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->initWidgetHost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppWidgetReset()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->initWidgetHost()V

    return-void
.end method

.method public stopWidgetHostListening()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;->widgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->stopWidgetHostListening()V

    return-void
.end method

.method public trackExecuteServiceDeliveryReuse()V
    .locals 1

    .line 295
    new-instance v0, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherServiceDeliveryWidgetDelegate;)V

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method
