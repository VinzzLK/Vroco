.class public Lcom/miui/home/launcher/CellScreen;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "CellScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# static fields
.field public static final EDITIMG_ANIM_PIVOTY_RATIO:F

.field public static FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F


# instance fields
.field private final QUICK_ANIM_PIVOTY_RATIO:F

.field public autoScrolling:Z

.field private mCameraDistanceCache:F

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mEditingPreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInEditing:Z

.field private mInLayoutPreview:Z

.field private mInQuickEditing:Z

.field private mIsAnimating:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public static synthetic $r8$lambda$CGAQnxmNAFUIbdz8sw-09D0ni78(Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->lambda$onQuickEditingModeChanged$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    const v0, 0x3efae148    # 0.49f

    :goto_0
    sput v0, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/CellScreen;->FOLD_EDITIMG_ANIM_PIVOTY_RATIO:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x3f5c28f6    # 0.86f

    goto :goto_0

    :cond_0
    const p2, 0x3f4ccccd    # 0.8f

    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    .line 39
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 40
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInLayoutPreview:Z

    .line 41
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->autoScrolling:Z

    .line 153
    new-instance p2, Lcom/miui/home/launcher/CellScreen$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$1;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 169
    new-instance p2, Lcom/miui/home/launcher/CellScreen$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/CellScreen$2;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 p2, 0x0

    .line 480
    iput-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    const/4 p2, 0x0

    .line 506
    iput p2, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 47
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/CellScreen;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object p0
.end method

.method private static calcCellScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static createCellScreen(Landroid/content/Context;)Lcom/miui/home/launcher/CellScreen;
    .locals 3

    .line 51
    new-instance v0, Lcom/miui/home/launcher/CellScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/CellScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 54
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-static {p0}, Lcom/miui/home/launcher/CellScreen;->calcCellScreenWidth(Landroid/content/Context;)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCellScreen , width = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , isInFoldLargeScreen = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isInFoldLargeScreenMode = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Launcher.CellScreen"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getEditimgAnimPivotyRatio()F
    .locals 1

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditingAnimPivotyRatio()F

    move-result v0

    return v0
.end method

.method private getScaledY(FFF)F
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    sub-float/2addr v0, p0

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    return v0
.end method

.method private isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 1

    .line 411
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 414
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "display_layout_preview"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p0, p1

    :cond_0
    return p0

    :cond_1
    if-eqz p3, :cond_3

    .line 418
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_back"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 419
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_home"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 420
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_pinch_out"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 421
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_finish_button"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 422
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_menu"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 423
    invoke-virtual {p3}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event_apply"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, p0

    :cond_3
    return v0
.end method

.method private synthetic lambda$onQuickEditingModeChanged$0()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-boolean p0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellLayout;->onQuickEditModeChanged(Z)V

    return-void
.end method

.method private needPostDelayedExitEditMode(Lcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "event_back_from_screen_cells_config"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private scaleCellLayoutToFoldEditCenter()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModeCenterScalePivotX()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method private setCellLayoutScale()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeEnterAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    .line 327
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final translateTouchX(Lcom/miui/home/launcher/DragObject;F)F
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->getXFromCenter(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private final translateTouchY(Lcom/miui/home/launcher/DragObject;FF)F
    .locals 10

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-nez v0, :cond_0

    .line 98
    iget p0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    :goto_0
    int-to-float p0, p0

    return p0

    .line 100
    :cond_0
    new-instance v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 102
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v8, v0

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->setupLayoutParam(IIIIZLcom/miui/home/launcher/CellLayout$LayoutParams;)V

    .line 104
    iget v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 105
    invoke-direct {p0, v8, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result v1

    .line 106
    invoke-direct {p0, v0, p2, p3}, Lcom/miui/home/launcher/CellScreen;->getScaledY(FFF)F

    move-result p0

    .line 107
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p2

    aget p2, p2, v9

    int-to-float p2, p2

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_1

    return v8

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p2

    aget p2, p2, v9

    int-to-float p2, p2

    cmpl-float p2, p2, p0

    if-ltz p2, :cond_2

    return v0

    :cond_2
    sub-float/2addr v0, v8

    sub-float/2addr p0, v1

    div-float/2addr v0, p0

    mul-float/2addr v1, v0

    sub-float/2addr v8, v1

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getCenterPosition()[I

    move-result-object p0

    aget p0, p0, v9

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->getYFromCenter(I)I

    move-result p0

    goto :goto_0
.end method

.method private updateCellScreenWidth()V
    .locals 2

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/CellScreen;->calcCellScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public cellLayoutAnimSkipToEnd(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 320
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 321
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public changeCellCount(IIII[[Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[[",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->updateCellScreenWidth()V

    .line 543
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateEditLayout()V

    .line 544
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout;->changeCellCount(IIII[[Landroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method clearDraggingState()V
    .locals 1

    .line 449
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->clearDraggingState(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public createCellLayout(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 431
    new-instance v1, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v0, 0x0

    .line 432
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 433
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setScreenType(I)V

    return-void
.end method

.method public findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I
    .locals 1

    .line 462
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 465
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->findDropTargetPosition(Lcom/miui/home/launcher/DragObject;)[I

    move-result-object p0

    return-object p0
.end method

.method public getCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object p0
.end method

.method public getEditModePinchingPivotX()F
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result p0

    return p0
.end method

.method public getEditModePinchingPivotY()F
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result p0

    add-float/2addr v0, p0

    div-float/2addr v0, v2

    return v0
.end method

.method public getEditModePivotX()F
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEditModePivotY()F
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v0

    mul-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFoldEditModeCenterScalePivotX()F
    .locals 3

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v2

    sub-int/2addr v0, v2

    .line 231
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 232
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float v1, p0

    :goto_0
    return v1

    .line 234
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float v1, p0

    :cond_3
    return v1
.end method

.method public getFoldEditModePivotX()F
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    const v0, 0x7f0a00df

    if-ne p1, v0, :cond_1

    .line 494
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 496
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateVision()V

    .line 503
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public isAnimating()Z
    .locals 0

    .line 521
    iget-boolean p0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 453
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 454
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragOver(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DragObject;)V

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method onEditingAnimationEnterEnd()V
    .locals 0

    return-void
.end method

.method onEditingAnimationExitEnd()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-boolean p0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/CellLayout;->setDisableTouch(Z)V

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNormalEditAnimationEnterEnd()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onEditingModeEnterEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationExitEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->onEditingModeExitEnd()V

    :cond_0
    return-void
.end method

.method public onNormalEditAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsAnimating:Z

    return-void
.end method

.method onQuickEditingModeChanged(ZZ)V
    .locals 4

    .line 287
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 290
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz p2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 294
    invoke-static {v1, v3}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p1

    if-nez p1, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->setCellLayoutScale()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mQuickModeExitAnimCompleteListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 305
    :goto_0
    new-instance p1, Lcom/miui/home/launcher/CellScreen$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/CellScreen$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x14

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->onScreenOrientationChanged()V

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Lcom/miui/home/launcher/CellScreen$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellScreen$3;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->updateCellScreenWidth()V

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->onScreenSizeChanged()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->updateCellScreenWidth()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public scaleCellLayoutToNormalEditMode(F)V
    .locals 2

    .line 389
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->scaleCellLayoutToFoldEditCenter()V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePinchingPivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 395
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    goto :goto_1

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 399
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :goto_1
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 510
    iget v0, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 511
    iput p1, p0, Lcom/miui/home/launcher/CellScreen;->mCameraDistanceCache:F

    .line 512
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setCameraDistance(F)V

    :cond_0
    return-void
.end method

.method public setCellLayoutScale(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/miui/home/launcher/CellScreen;->setCellLayoutScale()V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    :goto_0
    return-void
.end method

.method public setEditMode(ZZILcom/miui/home/launcher/EditStateChangeReason;)Z
    .locals 3

    .line 351
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/CellScreen;->mInLayoutPreview:Z

    if-ne p2, v2, :cond_0

    return v1

    .line 354
    :cond_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen;->mInLayoutPreview:Z

    const/4 v2, 0x1

    if-eq v0, p1, :cond_6

    .line 356
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-nez p3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 357
    :goto_0
    invoke-direct {p0, v0, p1, p4}, Lcom/miui/home/launcher/CellScreen;->isShowEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object p2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/miui/home/launcher/CellScreen;->mInLayoutPreview:Z

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, p1, v1, p4}, Lcom/miui/home/launcher/CellLayout;->setAndDoEditModeAnimation(ZZLcom/miui/home/launcher/EditStateChangeReason;)V

    return v2

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->cancelEditEnterAnim()V

    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 363
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/CellScreen;->needPostDelayedExitEditMode(Lcom/miui/home/launcher/EditStateChangeReason;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 364
    iget-object p4, p0, Lcom/miui/home/launcher/CellScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p4}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/miui/home/launcher/CellScreen$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/CellScreen$4;-><init>(Lcom/miui/home/launcher/CellScreen;ZZ)V

    .line 370
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x14

    const/16 p1, 0x64

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    .line 364
    invoke-virtual {p4, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 372
    :cond_4
    iget-object p3, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p3, v2}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateEditLayout()V

    :goto_2
    return v1

    .line 378
    :cond_6
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(Z)V

    return v1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1

    const v0, 0x7f0a00df

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 487
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method translateTouch(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 125
    iget v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchX(Lcom/miui/home/launcher/DragObject;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DragObject;->x:I

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/CellScreen;->translateTouchY(Lcom/miui/home/launcher/DragObject;FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Lcom/miui/home/launcher/DragObject;->y:I

    return-void
.end method

.method public updateEditLayout()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getFoldEditModePivotX()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotX()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 247
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    goto :goto_1

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 250
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    :goto_1
    return-void
.end method

.method public updateLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 3

    .line 255
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->scaleCellLayout()V

    goto :goto_0

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInQuickEditing:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/CellScreen;->QUICK_ANIM_PIVOTY_RATIO:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :goto_0
    if-eqz p1, :cond_2

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    :cond_2
    return-void
.end method

.method updateVision()V
    .locals 2

    .line 517
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a00e0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    return-void
.end method
