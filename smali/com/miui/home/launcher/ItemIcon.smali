.class public abstract Lcom/miui/home/launcher/ItemIcon;
.super Lcom/miui/launcher/views/LauncherRelativeLayout;
.source "ItemIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;
.implements Lcom/miui/home/launcher/IBackAnimView;
.implements Lcom/miui/home/library/mirror/MirrorContextView;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/UpdateIconSize;
.implements Lcom/miui/home/launcher/DesktopIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;,
        Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;
    }
.end annotation


# static fields
.field private static final DOWN_SCALE:F = 0.8f

.field private static final ICON_TOUCH_DOWN_SCALE:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "ItemIcon"

.field protected static final sLayerPaint:Landroid/graphics/Paint;


# instance fields
.field private final animatorSet:Landroid/animation/AnimatorSet;

.field private mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

.field private mDownState:Lmiuix/animation/controller/AnimState;

.field protected mDrawOutline:Z

.field private mDrawTouchMask:Z

.field private mEnableTouchMask:Z

.field private mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

.field protected mIconContainer:Landroid/widget/FrameLayout;

.field protected mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field protected mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

.field private mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

.field private mIconMessageVisibility:I

.field protected mIconTile:Landroid/widget/ImageView;

.field private mIsAutoLayoutAnimating:Z

.field private mIsDrawingInDragView:Z

.field private mIsDrawingInScreenPreview:Z

.field private mIsDrawingInThumbnailView:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsFolmeDown:Z

.field private mIsHideShadow:Z

.field private mIsHideTitle:Z

.field private mIsHideTouchMask:Z

.field private mIsMaskHintClick:Z

.field private mIsShowingIconMessage:Z

.field protected mMaskColor:I

.field private mMessageAnimator:Landroid/animation/Animator;

.field private mMessageBackground:Ljava/lang/String;

.field private mMessageIconTile:[B

.field private mMessageOldText:Ljava/lang/CharSequence;

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

.field private mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

.field protected mOutDistance:I

.field private mPerformClickRunnable:Ljava/lang/Runnable;

.field private mSkipNextAutoLayoutAnimation:Z

.field mStateStyle:Lmiuix/animation/IStateStyle;

.field private mTempRect:Landroid/graphics/Rect;

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

.field protected mTitleView:Lcom/miui/home/launcher/TitleTextView;

.field private mTouchDown:Z

.field private mUpState:Lmiuix/animation/controller/AnimState;

.field private mUseCustomWidth:Z

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;


# direct methods
.method public static synthetic $r8$lambda$TetyzAC-jE1WlCARwV4SHXEK9yk(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/ItemIcon;->lambda$initFolMe$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    .line 85
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    .line 88
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInDragView:Z

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    .line 96
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    const/4 p2, 0x4

    .line 97
    iput p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    .line 100
    new-instance p2, Lcom/miui/home/launcher/IconMessageRender;

    invoke-direct {p2}, Lcom/miui/home/launcher/IconMessageRender;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

    .line 102
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPocoDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0705e9

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ac

    .line 102
    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    .line 106
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsMaskHintClick:Z

    const/4 p2, 0x0

    .line 201
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    const-string v0, ""

    .line 212
    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 348
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 355
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    .line 356
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 357
    iput-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    .line 499
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    .line 685
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mUseCustomWidth:Z

    .line 924
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    .line 1065
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    .line 110
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getDefaultLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const p2, 0x7f0600d9

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMaskColor:I

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    .line 114
    new-instance p1, Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-direct {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result p1

    .line 116
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setMessageSize(F)V

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget p0, p0, Lcom/miui/home/launcher/ItemIcon;->mOutDistance:I

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setOutDistance(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ItemIcon;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ItemIcon;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    return p1
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/ItemIcon;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private varargs animateIconMessageScale([F)V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1050
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/IconMessageRender;->ITEM_MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x15e

    .line 1051
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1052
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/miui/home/launcher/ItemIcon$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ItemIcon$1;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1062
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected static createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 913
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    move-object v0, p0

    goto :goto_2

    .line 914
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 915
    :cond_2
    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 918
    :goto_2
    instance-of p1, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_3

    instance-of p1, p0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    if-nez p1, :cond_3

    .line 919
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method protected static createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 969
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private drawIconMessage(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isNeedDrawIconMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1026
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->drawMessageIfNecessary(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMessageIfNecessary(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget-object v0, v0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 1036
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/home/launcher/IconMessageRender;->onDraw(Landroid/graphics/Canvas;Lcom/miui/home/launcher/IconMessageRender$DrawParams;I)V

    return-void
.end method

.method private getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getResourcePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 295
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 296
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getResourcePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3a

    .line 323
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initFolMe()V
    .locals 1

    .line 378
    new-instance v0, Lcom/miui/home/launcher/ItemIcon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ItemIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initPerformClickRunnable()V
    .locals 2

    .line 476
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mPerformClick"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 479
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$initFolMe$0()V
    .locals 5

    .line 379
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 380
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 381
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "myDown"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 382
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 383
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 384
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v2, "myUp"

    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 385
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method private refreshFolderIconMessage(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->startShowIconMessageAnim()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method private setMessageIconTile([B)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageIconTile:[B

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 312
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 316
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMessageTextBackground(Ljava/lang/String;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageBackground:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic animator()Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->animator()Lcom/miui/home/launcher/animate/SpringAnimator;

    move-result-object p0

    return-object p0
.end method

.method public backupProperty()V
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 796
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 797
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->buildDrawingCache(Z)V

    :cond_0
    return-void
.end method

.method protected cancelMessageAnim()V
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1018
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->drawIconMessage(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 517
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInThumbnailView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsMaskHintClick:Z

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 519
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 518
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 521
    iget p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMaskColor:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isSkipDraw(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 504
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDrawableState()[I

    move-result-object v0

    .line 505
    sget-object v1, Landroid/widget/RelativeLayout;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    .line 506
    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 507
    :goto_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    if-eqz v1, :cond_2

    .line 508
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawTouchMask:Z

    .line 509
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 511
    :cond_2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    return-void
.end method

.method public enableDrawTouchMask(Z)V
    .locals 0

    .line 791
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mEnableTouchMask:Z

    return-void
.end method

.method public endFolmeAnim()V
    .locals 1

    .line 401
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 402
    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public folmeDown()V
    .locals 3

    .line 370
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "itemIcon"

    const-string v1, "folmeDown"

    .line 371
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public folmeUp()V
    .locals 4

    .line 361
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "itemIcon"

    const-string v1, "folmeUp"

    .line 363
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 365
    iput-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public abstract synthetic getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getBoomAnimBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 553
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 554
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 555
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 557
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .line 892
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 897
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 899
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getDefaultLayerType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1010
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 1011
    invoke-static {v1, p0, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget v1, v0, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-int v4, v4

    aget v2, v0, v2

    .line 1012
    iget-object v5, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    aget v0, v0, v3

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1, v1, v4, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public getIconContainer()Landroid/view/View;
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getIconContainerTopPadding()I
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p0, :cond_0

    .line 997
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconHeight()I
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    return-object p0
.end method

.method public getIconImageViewCenterPoint([I)Z
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, p1, v0

    .line 591
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    const/4 v0, 0x1

    aput p0, p1, v0

    return v0
.end method

.method public getIconImageViewHeight()I
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p0, :cond_0

    .line 644
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIconImageViewOriginalLocation()Landroid/graphics/Rect;
    .locals 7

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 623
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 624
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v3

    float-to-int v2, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    aget v3, v0, v3

    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 625
    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    aget v0, v0, v4

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 626
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-direct {v1, v2, v5, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 620
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ItemIcon hasn\'t layout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIconImageViewWidth()I
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p0, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIconLocation()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 598
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 602
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    aget v4, v0, v1

    aget v5, v0, v3

    aget v1, v0, v1

    iget-object v6, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    aget v0, v0, v3

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getIconWidth()I
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getIsHideShadow()Z
    .locals 0

    .line 787
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideShadow:Z

    return p0
.end method

.method public getIsHideTitle()Z
    .locals 0

    .line 765
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    return p0
.end method

.method public getIsHideTouchMask()Z
    .locals 0

    .line 819
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    return p0
.end method

.method public getLeftGap()I
    .locals 1

    .line 615
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMessageOldText()Ljava/lang/CharSequence;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isEmptyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
.end method

.method public getNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method protected getSpanX()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getSpanY()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleContainer()Landroid/view/View;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method protected getTopPadding(I)I
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitleMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_0
    add-int/2addr v0, p0

    goto :goto_2

    .line 147
    :cond_2
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    .line 151
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, v0

    .line 152
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getVisionCenter([I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 573
    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget v2, v1, v3

    float-to-int v2, v2

    .line 574
    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v2, v4

    aput v2, p1, v3

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    .line 575
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v1, p0

    aput v1, p1, v2

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 567
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x1

    aput v0, p1, p0

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 581
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    aget v1, v0, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-int v4, v4

    aget v2, v0, v2

    float-to-int v2, v2

    .line 582
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconWidth()I

    move-result v5

    add-int/2addr v2, v5

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 809
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isMessageVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 121
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 465
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isDrawOutline()Z
    .locals 0

    .line 979
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    return p0
.end method

.method public isDrawingInScreenPreview()Z
    .locals 0

    .line 861
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInScreenPreview:Z

    return p0
.end method

.method public isDrawingInThumbnailView()Z
    .locals 0

    .line 857
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInThumbnailView:Z

    return p0
.end method

.method public isDropVisibilityAggregated(Z)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isEmptyMessage()Z
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

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

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 682
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isHintClick(Landroid/view/ViewGroup;II)Z
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 928
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 929
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 930
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 934
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-nez v0, :cond_1

    .line 935
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 938
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getTextContentWidth(Landroid/widget/TextView;)I

    move-result p1

    .line 939
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getTextContentHeight(Landroid/widget/TextView;)I

    move-result v0

    .line 940
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 941
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 942
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isHintIconHotClick(Landroid/view/ViewGroup;II)Z
    .locals 3

    .line 946
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 947
    instance-of v0, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz v0, :cond_0

    .line 948
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getIconHotClickBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 951
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 957
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-nez v0, :cond_2

    .line 958
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    .line 960
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 961
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getTextContentWidth(Landroid/widget/TextView;)I

    move-result p1

    .line 962
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getTextContentHeight(Landroid/widget/TextView;)I

    move-result v0

    .line 963
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->setRectSize(Landroid/graphics/Rect;II)V

    .line 964
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 965
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isIconLocating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isIgnoreAnimationForOnce()Z
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->isIgnoreAnimationForOnce()Z

    move-result p0

    return p0
.end method

.method public isMessageVisible()Z
    .locals 0

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedDrawIconMessage()Z
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isMessageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInDragView:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needReset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected needTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimation(Z)V
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-eqz p0, :cond_0

    .line 848
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIconTitleContainer;->setIsOnAnimation(Z)V

    :cond_0
    return-void
.end method

.method public abstract synthetic onBackAnimStart()V
.end method

.method public abstract synthetic onBackAnimStop()V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->endFolmeAnim()V

    .line 409
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a01f9

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0202

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconTile:Landroid/widget/ImageView;

    const v0, 0x7f0a01fd

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const v0, 0x7f0a0203

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    const v0, 0x7f0a0204

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemIconTitleContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    .line 136
    sget-object v1, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 139
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    .line 140
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemIcon;->initFolMe()V

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onBindElementFinishInflate()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    return-void
.end method

.method public onIconSetNull()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 692
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mUseCustomWidth:Z

    if-eqz v0, :cond_0

    .line 693
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    .line 696
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getSpanX()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 697
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getSpanX()I

    move-result v0

    mul-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 699
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 701
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 702
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_3

    .line 705
    invoke-static {v0}, Lcom/miui/home/launcher/util/OperatorGridUtils;->setMaxLines(Landroid/widget/TextView;)V

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->getTopPadding(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/ItemIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 708
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 417
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/CellLayout;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 418
    :goto_1
    invoke-virtual {p0, p0, v0, v3}, Lcom/miui/home/launcher/ItemIcon;->isHintIconHotClick(Landroid/view/ViewGroup;II)Z

    move-result v5

    .line 419
    invoke-virtual {p0, p0, v0, v3}, Lcom/miui/home/launcher/ItemIcon;->isHintClick(Landroid/view/ViewGroup;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsMaskHintClick:Z

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent ACTION_DOWN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "---"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ItemIcon"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    return v1

    .line 426
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsMaskHintClick:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isAutoLayoutAnimating()Z

    move-result v0

    if-nez v0, :cond_5

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isAutoLayoutAnimating()Z

    move-result v4

    if-nez v4, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeDown()V

    :cond_3
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_5

    .line 435
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->isDrawingInScreenPreview()Z

    move-result v0

    if-nez v0, :cond_5

    .line 436
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    if-eqz v0, :cond_a

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_8

    goto :goto_2

    .line 443
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 444
    iget-boolean v3, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 445
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;->onSlideVertically(Lcom/miui/home/launcher/ItemIcon;)V

    .line 446
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 447
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 455
    :cond_8
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    goto :goto_2

    .line 451
    :cond_9
    iput-boolean v2, p0, Lcom/miui/home/launcher/ItemIcon;->mTouchDown:Z

    .line 459
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f1103c8

    const v3, 0x7f1103cb

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->setTitleDynamicShadow()V

    .line 184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;->onColorModeChange(Z)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->updateFolderIconBg()V

    return-void
.end method

.method public onlyShowIconWhenDrawChild()V
    .locals 1

    const/4 v0, 0x1

    .line 773
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 774
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemIcon;->initPerformClickRunnable()V

    :cond_0
    if-eqz p1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-ne p1, v0, :cond_1

    .line 493
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 496
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method protected refreshBackground()V
    .locals 0

    return-void
.end method

.method public abstract synthetic resetBackAnim()V
.end method

.method public resetHintClick()V
    .locals 1

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsMaskHintClick:Z

    .line 538
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public restoreProperty()V
    .locals 0

    .line 887
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public setColorModeChangedListener(Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mDrawOutline:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public abstract synthetic setEditMode(ZZ)V
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 726
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 546
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 548
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public setIconLocating(Z)V
    .locals 0

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p0, :cond_0

    .line 631
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsAutoLayoutAnimating isAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setIsDrawingInDragView(Z)V
    .locals 0

    .line 877
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInDragView:Z

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 869
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInScreenPreview:Z

    .line 870
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setIsDrawingInScreenPreview(Z)V

    :cond_0
    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 865
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setIsHideShadow(Z)V
    .locals 0

    .line 783
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideShadow:Z

    return-void
.end method

.method public setIsHideTitle(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTitle:Z

    return-void
.end method

.method public setIsHideTouchMask(Z)V
    .locals 0

    .line 815
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsHideTouchMask:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ItemIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    .line 221
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMessage text"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ItemIcon"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, ""

    if-nez p1, :cond_0

    move-object p1, p3

    .line 223
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 226
    iput-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 227
    iput-boolean v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    new-array p1, v2, [F

    .line 229
    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->animateIconMessageScale([F)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_1

    .line 231
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_7

    :cond_3
    const/4 p2, 0x1

    .line 232
    iput-boolean p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    .line 234
    instance-of p2, p0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz p2, :cond_4

    .line 235
    move-object p2, p0

    check-cast p2, Lcom/miui/home/launcher/FolderIcon;

    .line 236
    iget-object p3, p2, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/FolderIcon;->folderIsOpen(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p2

    goto :goto_0

    :cond_4
    move p2, v3

    .line 238
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p3

    if-nez p3, :cond_5

    if-nez p2, :cond_5

    .line 239
    iput v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    .line 241
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->createMessageBitmap(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->cancelMessageAnim()V

    new-array p2, v2, [F

    .line 245
    fill-array-data p2, :array_1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->animateIconMessageScale([F)V

    .line 247
    :cond_6
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 248
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_7
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setMessageImmediately(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    iput-boolean v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    const/4 p1, 0x4

    .line 265
    iput p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    .line 266
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->resetMessageBitmap()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIsShowingIconMessage:Z

    .line 269
    iput v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->createMessageBitmap(Ljava/lang/String;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setMessageVisible(I)V
    .locals 1

    .line 276
    iget v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    if-eq p1, v0, :cond_0

    .line 277
    iput p1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconMessageVisibility:I

    .line 278
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->refreshFolderIconMessage(I)V

    :cond_0
    return-void
.end method

.method public setOnSlideVerticallyListener(Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mOnSlideVerticallyListener:Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 673
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 661
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 662
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 750
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 756
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon;->mTitle:Ljava/lang/CharSequence;

    .line 654
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 656
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElement()V

    return-void
.end method

.method public setTouchScaleFactor(F)V
    .locals 5

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 394
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 395
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    float-to-double v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 396
    invoke-virtual {p0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method public setUseCustomWidth(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemIcon;->mUseCustomWidth:Z

    return-void
.end method

.method public showAllChildViewWhenDrawChild()V
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 779
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    return-void
.end method

.method public startShowIconMessageAnim()V
    .locals 5

    .line 1067
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1072
    sget-object v0, Lcom/miui/home/launcher/IconMessageRender;->ITEM_MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1073
    sget-object v2, Lcom/miui/home/launcher/IconMessageRender;->ITEM_MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1074
    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1075
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1076
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1077
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract synthetic updateBackAnim(Ljava/lang/String;)V
.end method

.method public updateFolderIconBg()V
    .locals 0

    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 984
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/miui/home/launcher/TitleTextView;->updateSizeOnIconSizeChanged()V

    :cond_0
    return-void
.end method
