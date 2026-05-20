.class public Lcom/miui/home/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgColorForSmallWindow:I

.field private mBgFillPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

.field private mCornerRadius:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mPosition:I

.field private mRealInsets:Landroid/graphics/Rect;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaledInsets:Landroid/graphics/Rect;

.field private mSoscTaskViewRect:Landroid/graphics/Rect;

.field private mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskRatio:F

.field private mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailBitmapRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailDrawingRect:Landroid/graphics/RectF;

.field private mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 82
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    .line 94
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRealInsets:Landroid/graphics/Rect;

    .line 106
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 107
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 108
    new-instance p1, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    .line 127
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06064d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06064e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    .line 132
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060651

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x3f19999a    # 0.6f

    .line 135
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    .line 138
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private calculateInsets(Z)V
    .locals 3

    .line 176
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 178
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 180
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 181
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    .line 187
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method private getRecentsRotation()I
    .locals 2

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    return p0

    .line 556
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public static getScaleToTargetAreaWithLimits(IIIIIII)F
    .locals 1

    if-eqz p5, :cond_4

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p5, p5

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p5, v0

    int-to-float p6, p6

    div-float/2addr p5, p6

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p0, p5

    .line 710
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p1, p5

    .line 711
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p2, p1, p0

    if-gez p2, :cond_1

    move p0, p1

    :cond_1
    int-to-float p2, p4

    div-float/2addr p2, p5

    float-to-double p2, p2

    .line 715
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    cmpg-float p3, p2, p0

    if-gez p3, :cond_2

    div-float/2addr p0, p6

    return p0

    :cond_2
    cmpl-float p0, p2, p1

    if-lez p0, :cond_3

    div-float/2addr p1, p6

    return p1

    :cond_3
    div-float/2addr p2, p6

    return p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRecentsContainerLandscape()Z
    .locals 1

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSplitScreen()Z
    .locals 1

    .line 691
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needCenterCut(ZLcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Z)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 505
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->needInsetsTranY(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Z)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private needInsetsTranY(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Z)Z
    .locals 1

    .line 512
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isRecentsContainerLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 515
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postTranslateToMatrix(ZLandroid/graphics/Matrix;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V
    .locals 8

    .line 478
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterClipForThumbnail()Z

    move-result v0

    .line 479
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_2

    .line 481
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v1

    const/16 v3, 0x5a

    const/4 v4, -0x1

    if-ne v1, v3, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    .line 482
    :goto_1
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    const/16 v5, -0x5a

    if-ne v3, v5, :cond_3

    move v2, v4

    :cond_3
    move v7, v2

    move v2, v1

    move v1, v7

    .line 484
    :goto_2
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 485
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v4

    mul-int/2addr v4, v1

    .line 486
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez v5, :cond_4

    .line 487
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 489
    :cond_4
    invoke-direct {p0, v0, p3, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->needCenterCut(ZLcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 490
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v0, v5, :cond_5

    .line 491
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    sub-int/2addr v0, v3

    mul-int/2addr v0, v2

    div-int/lit8 v3, v0, 0x2

    .line 493
    :cond_5
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 494
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    .line 496
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->needInsetsTranY(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    neg-int p1, v4

    .line 497
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p0, p0, 0x2

    add-int v4, p1, p0

    .line 500
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateThumbnailDrawInfo: transX="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", transY="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewThumbnail"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, v3

    int-to-float p1, v4

    .line 501
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private splitVerticallyInRecents(Z)Z
    .locals 0

    .line 726
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateBgColor()V
    .locals 1

    .line 519
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method private updateBgFillDrawInfo()V
    .locals 3

    .line 363
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isRecentsContainerLandscape()Z

    move-result v0

    .line 364
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 365
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->mapSplitBoundsToTaskViewRect(Z)V

    .line 366
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    .line 367
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;)V

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateDrawingPropertiesAndRequestDraw()V
    .locals 2

    .line 676
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06064d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    .line 677
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06064e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    .line 678
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;)V
    .locals 1

    .line 612
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 614
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 613
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 615
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 616
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p2

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    .line 615
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_0

    .line 618
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 619
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    :goto_0
    return-void
.end method

.method private updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V
    .locals 4

    .line 528
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    :cond_1
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto/16 :goto_4

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 532
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p3, :cond_9

    iget v3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v3, :cond_9

    iget p3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_a

    xor-int p3, p5, p6

    if-eqz p3, :cond_8

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p5, :cond_7

    .line 536
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getRecentsRotation()I

    move-result p0

    const/4 p5, 0x3

    if-ne p0, p5, :cond_6

    goto :goto_2

    :cond_6
    const/16 p0, -0x5a

    .line 540
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 541
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p3

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    :cond_7
    :goto_2
    const/16 p0, 0x5a

    .line 537
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 538
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p3

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    .line 544
    :cond_8
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_4

    .line 533
    :cond_9
    :goto_3
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 548
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    if-eqz v1, :cond_c

    .line 549
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_6

    :cond_c
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_6
    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$802(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    if-eqz v1, :cond_d

    .line 550
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_7

    :cond_d
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_7
    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$902(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void
.end method

.method private updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V
    .locals 7

    .line 565
    iget-object p5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p5}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p5

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p5, p5, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p5, v0

    .line 566
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    if-eqz p3, :cond_c

    iget v1, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v1, :cond_c

    iget p3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez p3, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz p5, :cond_9

    .line 571
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    cmpl-float p3, p3, v2

    if-eqz p3, :cond_8

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    cmpl-float p3, p3, v2

    if-nez p3, :cond_3

    goto/16 :goto_4

    .line 575
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result p3

    .line 576
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isSplitScreen()Z

    move-result p4

    if-eqz p4, :cond_4

    sget-boolean p4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez p4, :cond_4

    move p6, v0

    .line 577
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p4, p5

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v0

    div-float/2addr p4, v0

    .line 578
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    div-float/2addr v0, p5

    if-eqz p3, :cond_5

    .line 582
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3ecccccd    # 0.4f

    mul-float/2addr p3, p4

    float-to-int v0, p3

    .line 583
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const p5, 0x3f666666    # 0.9f

    mul-float/2addr p3, p5

    float-to-int v1, p3

    .line 584
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    float-to-int v2, p3

    .line 585
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p5

    float-to-int v3, p3

    .line 586
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/2addr p3, p2

    int-to-float p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    float-to-int v4, p2

    .line 587
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    float-to-int v5, p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    float-to-int v6, p2

    .line 581
    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getScaleToTargetAreaWithLimits(IIIIIII)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    :cond_5
    if-nez p6, :cond_7

    cmpl-float p2, p4, v0

    if-lez p2, :cond_6

    goto :goto_2

    .line 591
    :cond_6
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    .line 589
    :cond_7
    :goto_2
    invoke-static {p1, p4}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    .line 593
    :goto_3
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$002(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 594
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$102(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateThumbnailScale, t="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mThumbnailBitmapSizeAfterScaled=("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewThumbnail"

    .line 595
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 572
    :cond_8
    :goto_4
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void

    .line 601
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    .line 605
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    .line 606
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 604
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 602
    :cond_b
    :goto_5
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 569
    :cond_c
    :goto_6
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    :goto_7
    return-void
.end method

.method private updateThumbnailDrawInfoImpl(Landroid/graphics/Rect;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Matrix;Landroid/graphics/BitmapShader;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 426
    iput-boolean p7, p2, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->isRecentContainerLandscape:Z

    .line 427
    iget v0, p5, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move v7, v0

    .line 428
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V

    .line 429
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V

    .line 430
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;)V

    .line 431
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 432
    invoke-virtual {p3, p1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 434
    :cond_1
    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p1

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    invoke-virtual {p3, p1, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 435
    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$600(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$700(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p6

    invoke-virtual {p3, p1, p5, p6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 436
    invoke-direct {p0, v0, p3, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->postTranslateToMatrix(ZLandroid/graphics/Matrix;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V

    if-eqz p4, :cond_2

    .line 439
    :try_start_0
    invoke-virtual {p4, p3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "TaskViewThumbnail"

    const-string p2, "updateThumbnailDrawInfo mBitmapShader.setLocalMatrix error"

    .line 442
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private useCenterClipForThumbnail()Z
    .locals 1

    .line 472
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private useCenterLayoutForThumbnail()Z
    .locals 0

    .line 683
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isFreeFormMode()Z

    move-result p0

    return p0
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZI)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 637
    iput p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    .line 638
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method public calculateInsets(FLandroid/graphics/RectF;)V
    .locals 1

    .line 192
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 193
    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 410
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 411
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 412
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 413
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method

.method public getCornerRadius()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    return p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRealHeight()F
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 760
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0
.end method

.method public getRealWidth()F
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 752
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 6

    .line 302
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 304
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-eqz v1, :cond_1

    .line 305
    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->appearance:I

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v0, v4

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    goto :goto_2

    .line 312
    :cond_1
    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int p0, v0, v2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSysUiStatusNavFlags,flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewThumbnail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4
    return v0
.end method

.method public getTaskRatio()F
    .locals 0

    .line 150
    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    return p0
.end method

.method public getTaskViewHeaderHeight()I
    .locals 2

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda0;

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda1;

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/recents/views/TaskViewThumbnail$$ExternalSyntheticLambda2;

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result p0

    return p0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public isFreeFormMode()Z
    .locals 1

    .line 687
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method mapSplitBoundsToTaskViewRect(Z)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 375
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/home/recents/NavStubView;->isTouchingSingleRange:Z

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/model/Task;->getLeftOrTopPercent(Z)F

    move-result v1

    .line 384
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/Task;->getRightOrBottomPercent(Z)F

    move-result v0

    .line 385
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->splitVerticallyInRecents(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 386
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_2

    .line 387
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 388
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    sub-int/2addr p1, v1

    .line 392
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v2, p1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, p1, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 396
    :cond_3
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_4

    .line 397
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 398
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 401
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 402
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int p1, v1, p1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 216
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 222
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v0

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 231
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v2, :cond_2

    .line 232
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 234
    :goto_2
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 235
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v7}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 237
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    iget-boolean v2, v2, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->isRecentContainerLandscape:Z

    xor-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->splitVerticallyInRecents(Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    int-to-float v2, v5

    .line 238
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 239
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v2

    if-nez v2, :cond_4

    int-to-float v2, v7

    .line 240
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v7, v2

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    int-to-float v3, v3

    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 245
    invoke-static {v8}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget-object v9, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 246
    invoke-static {v9}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    .line 244
    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 249
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_9

    if-lez v6, :cond_9

    if-lez v7, :cond_9

    sub-int v0, v4, v6

    sub-int v2, v5, v7

    .line 252
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v8, 0x2

    if-le v3, v8, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    .line 253
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v8, :cond_6

    goto :goto_4

    :cond_6
    move v5, v7

    .line 255
    :goto_4
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v3

    if-nez v3, :cond_8

    if-gt v0, v8, :cond_7

    if-le v2, v8, :cond_8

    :cond_7
    const/4 v3, 0x0

    const/4 v0, 0x0

    int-to-float v6, v4

    int-to-float v7, v5

    .line 257
    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v2, "TaskViewThumbnail"

    const-string v3, "ondraw"

    .line 265
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 269
    invoke-static {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 270
    invoke-static {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 268
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 271
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 274
    :goto_5
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isCoverThumbnail()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 277
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    invoke-static {p0, v2, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 661
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 662
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 663
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 664
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 666
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 667
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 668
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 628
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 629
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setTaskRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 143
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 144
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V
    .locals 5

    const-string v0, "TaskViewThumbnail"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 329
    iget-boolean v1, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->isSnapshotInvalidate:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 342
    :cond_0
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 343
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 344
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    .line 345
    iget v1, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 346
    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isTaskStackViewIgnoreInset()Z

    move-result p2

    if-nez p2, :cond_1

    .line 347
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v3, v4

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 347
    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setThumbnail, t="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mThumbnailInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mThumbnailBitmapRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 357
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void

    .line 330
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbnail, clearThumbnail, t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailInfo="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    .line 335
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 337
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgFillDrawInfo()V

    .line 338
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method public soscStartTaskFromPair(FFLandroid/os/Bundle;)V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getLaunchHalfSplitTaskPosition()I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 739
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_1

    .line 740
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 742
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 646
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method public updateThumbnailDrawInfo()V
    .locals 8

    .line 450
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isRecentsContainerLandscape()Z

    move-result v7

    .line 451
    invoke-direct {p0, v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    xor-int/lit8 v0, v7, 0x1

    .line 452
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->mapSplitBoundsToTaskViewRect(Z)V

    .line 453
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    :goto_0
    move-object v1, v0

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfoImpl(Landroid/graphics/Rect;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Matrix;Landroid/graphics/BitmapShader;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;Z)V

    .line 456
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 458
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 0

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
