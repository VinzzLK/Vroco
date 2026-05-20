.class public Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.super Lcom/miui/launcher/views/LauncherWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IAppWidgetView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;,
        Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;
    }
.end annotation


# static fields
.field private static final INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;


# instance fields
.field private mAppWidgetId:I

.field private mClipCorner:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

.field private mEnforcedCornerRadius:F

.field private final mEnforcedRectangle:Landroid/graphics/Rect;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mIsAutoLayoutAnimating:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsReInflate:Z

.field private mIsScrollable:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

.field private mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$2iK06bpytRJkZnpyEfxYZcpVTVE(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->lambda$printUpdateInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$3hY6HxsuIzB_PaEMbmjQEFIeW5s(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYm9VGQhZkFLgBqAaBHhgE8ba4U(Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->lambda$static$3(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y9WnFP9MuP3zx_n_f3l0npsZR_M(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->lambda$reInflate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jaTo5HOZUFPuKZY79hpGMyYMY2Y(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->lambda$updateAppWidget$0(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 617
    sget-object v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    .line 99
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    .line 110
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mClipCorner:Z

    const-string v0, "layout_inflater"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 116
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 117
    new-instance p2, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p2, v0}, Landroid/appwidget/AppWidgetHostView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 119
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    .line 120
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getWidgetCoreExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 121
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "widget corner = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Widget"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Landroid/graphics/Rect;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)F
    .locals 0

    .line 76
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->printUpdateInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setBlurIfNeed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    return-object p0
.end method

.method private checkScrollableRecursively(Landroid/view/ViewGroup;)Z
    .locals 5

    .line 395
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 396
    instance-of p0, p1, Landroid/widget/AbsListView;

    if-eqz p0, :cond_2

    .line 397
    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    .line 398
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    move v0, v1

    .line 402
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private computeRoundedCornerRadius(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)F
    .locals 4

    .line 492
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 494
    iget-boolean v1, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 495
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v1

    if-nez v1, :cond_2

    .line 496
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_1
    div-int/2addr p0, v3

    int-to-float p0, p0

    move v0, p0

    :cond_2
    return v0
.end method

.method private enforceRoundedCorners()V
    .locals 3

    .line 469
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mClipCorner:Z

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 471
    iget v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 478
    invoke-static {p0, v1}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedRectangle:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 485
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->computeRoundedCornerRadius(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mCornerRadiusEnforcementOutline:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 487
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->invalidateOutline()V

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    return-void

    .line 479
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void

    .line 473
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void
.end method

.method private getLauncherAppWidgetInfo()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 1

    .line 647
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.widget.RemoteViews"

    .line 637
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSourceBounds"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 638
    const-class v5, Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 639
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get source bounds error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Launcher.Widget"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private synthetic lambda$printUpdateInfo$1()V
    .locals 5

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    .line 318
    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Launcher.Widget"

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateInfo appWidgetId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " options is null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "miuiUpdateInfo"

    const-string v3, ""

    .line 323
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-le v2, v4, :cond_2

    .line 325
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpdateInfo widget id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " miuiUpdateInfo:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$reInflate$2()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private static synthetic lambda$static$3(Ljava/lang/Class;)Z
    .locals 1

    .line 618
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateAppWidget$0(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 273
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$UpdateRunnable;-><init>(Ljava/lang/ref/WeakReference;Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onDefaultViewClicked(Landroid/view/View;)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 625
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 626
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 627
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 630
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 631
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 632
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x0

    .line 631
    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method private printUpdateInfo()V
    .locals 1

    .line 312
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reInflate()V
    .locals 9

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v1, "Launcher.Widget"

    if-nez v0, :cond_0

    const-string p0, "reInflate mRemoteViews is null!"

    .line 432
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isLauncherReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 450
    const-class v3, Landroid/view/View;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v7, v0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v7, v2

    new-array v8, v1, [Ljava/lang/Object;

    const v1, 0x1020018

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    const-string/jumbo v5, "setTagInternal"

    .line 450
    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reInflate childCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") error"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsReInflate:Z

    .line 458
    new-instance v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetRoundedCorners()V
    .locals 1

    .line 463
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setClipToOutline(Z)V

    return-void
.end method

.method private setBlurIfNeed(Landroid/view/View;)V
    .locals 3

    .line 336
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->supportWidgetBackgroundBlur(Landroid/view/View;)Z

    move-result v0

    const-string v1, "Launcher.Widget"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setBlurIfNeed: widget not support bg blur "

    .line 337
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x1020018

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "setBlurIfNeed: can not find remoteContainerView "

    .line 343
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBlurIfNeed: set blur isWidgetBlurSupported = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isWidgetBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p0, "setBlurIfNeed: set blur to set background null "

    .line 351
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 352
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo p0, "setBlurIfNeed: set blur remoteViewDefaultBg is not null "

    .line 355
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    const-string/jumbo v0, "setBlurIfNeed: can\'t request default bg color ,use local default"

    .line 361
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0606d4

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0606d5

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 367
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method private setRemoteContext(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "android.appwidget.AppWidgetHostView"

    .line 610
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mRemoteContext"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 613
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public backupProperty()V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public bindWidgetUpdateListener(Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mWidgetUpdateListener:Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->isTouchPointInView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetClick(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 176
    :cond_1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 251
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 9

    const-string v0, "appWidgetCategory"

    const-string v1, "Launcher.Widget"

    .line 532
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    .line 536
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_5

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v5

    .line 538
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->setRemoteContext(Landroid/content/Context;)V

    const-string v6, "layout_inflater"

    .line 540
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 541
    invoke-virtual {v6}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v7

    if-nez v7, :cond_2

    .line 542
    new-instance v7, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;

    invoke-direct {v7}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;-><init>()V

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 543
    :goto_1
    invoke-virtual {v7, v2}, Lcom/miui/home/launcher/widget/device/LauncherWidgetLayoutFactory;->setNeedScale(Z)V

    .line 544
    invoke-virtual {v6, v7}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 546
    :cond_2
    invoke-virtual {v6, v5}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 547
    sget-object v5, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v2, v5}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 548
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 549
    iget v6, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 551
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 552
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 553
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 555
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v6, v0

    .line 561
    :cond_4
    :goto_2
    invoke-virtual {v2, v6, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :try_start_1
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_6

    .line 564
    new-instance v2, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v4, v2

    goto :goto_3

    :cond_5
    :try_start_2
    const-string v0, "can\'t inflate defaultView because mInfo is missing"

    .line 567
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get default view error inflating AppWidget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    if-nez v0, :cond_8

    .line 578
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getEnforcedCornerRadius()F
    .locals 0

    .line 505
    iget p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mEnforcedCornerRadius:F

    return p0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "widget load error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Widget"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "android.content.ContextWrapper"

    .line 586
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createApplicationContext"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 587
    const-class v4, Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 588
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 589
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    aput-object v3, v2, v5

    const/4 v3, 0x4

    .line 590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 589
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.appwidget.AppWidgetHostView"

    .line 591
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mColorResources"

    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 593
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 594
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.widget.RemoteViews$ColorResources"

    .line 596
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "apply"

    new-array v4, v6, [Ljava/lang/Class;

    .line 597
    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 598
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 599
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "Launcher.Widget"

    const-string v2, "Error trying to create the remote context."

    .line 604
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 242
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWindowAttachCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 246
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 128
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBlurIfSupported(Landroid/view/View;)V

    .line 129
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.Widget"

    const-string v1, "onAttachedToWindow: register"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 420
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBlurIfSupported(Landroid/view/View;)V

    .line 425
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->reInflate()V

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    .line 138
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearWidgetBlurIfSupported(Landroid/view/View;)V

    .line 139
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Widget"

    const-string v1, "onDetachedFromWindow: unregister"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 189
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SuperDraglayer;->requestSwipeControllerDisallowInterceptTouchEventVertical(Z)V

    .line 198
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 388
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V

    .line 389
    invoke-direct {p0, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->checkScrollableRecursively(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsScrollable:Z

    .line 391
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->enforceRoundedCorners()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is null"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Widget"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 657
    iget-object p1, p1, Lcom/miui/home/launcher/common/messages/WidgetBlurStateMessage;->packageName:Ljava/lang/String;

    .line 658
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getLauncherAppWidgetInfo()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageEvent: launcherAppWidgetInfo.packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 662
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 664
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: setWidgetBlurIfSupported launcherAppWidgetInfo.supportBackgroundBlur "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->supportBackgroundBlur:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->setWidgetBlurIfSupported(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->reInflate()V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public restoreProperty()V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    .line 157
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 158
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 160
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 161
    instance-of v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_0

    .line 162
    check-cast p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 163
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 165
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mAppWidgetId:I

    return-void
.end method

.method public setClipCorner(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mClipCorner:Z

    if-eqz p1, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->resetRoundedCorners()V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 373
    invoke-super {p0, p1, p1, p1, p1}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 272
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 273
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getWidgetCoreExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;Landroid/widget/RemoteViews;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAppWidget: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Widget"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
