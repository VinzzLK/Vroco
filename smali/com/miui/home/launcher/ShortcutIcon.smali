.class public Lcom/miui/home/launcher/ShortcutIcon;
.super Landroid/widget/TextView;
.source "ShortcutIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Landroid/widget/Checkable;
.implements Lcom/miui/home/launcher/IItemInfo;
.implements Lcom/miui/home/launcher/DragController$VisualizeCalibration;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;
.implements Lcom/miui/home/launcher/IBackAnimView;
.implements Lcom/miui/home/library/mirror/MirrorContextView;
.implements Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
.implements Lcom/miui/home/launcher/interfaces/IEditable;
.implements Lcom/miui/home/launcher/UpdateIconSize;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/NewInstallAppIcon;
.implements Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;
.implements Lcom/miui/home/launcher/IShortcutIcon;
.implements Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private ICON_DRAWABLE_SCALE:Ljava/lang/String;

.field private final ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/ValueProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final animatorSet:Landroid/animation/AnimatorSet;

.field private iconScaleAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private isChecked:Z

.field private mCheckBoxDiameter:I

.field private mCheckBoxDrawableScale:F

.field protected mCheckBoxVisibility:I

.field private mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mClickPadding:I

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

.field protected mContext:Landroid/content/Context;

.field private mDownState:Lmiuix/animation/controller/AnimState;

.field protected mDrawOutline:Z

.field private mDrawTouchMask:Z

.field private mEnableTouchMask:Z

.field private mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

.field protected mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableScale:F

.field private mIconLocating:Z

.field protected mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

.field private mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

.field private mIconMessageVisibility:I

.field private mIgnoreAnimationForOnce:Z

.field private mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

.field private mIndicatorDrawableMargin:I

.field private mIsAnimating:Z

.field private mIsAutoLayoutAnimating:Z

.field protected mIsDrawingInDragView:Z

.field private mIsDrawingInScreenPreview:Z

.field private mIsDrawingInThumbnailView:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsFolderCreating:Z

.field private mIsFolmeDown:Z

.field protected mIsHideCheckBox:Z

.field protected mIsHideTitle:Z

.field private mIsHideTitleStateChanged:Z

.field private mIsInRunningFolderSimpleCloseAnim:Z

.field private mIsMaskHintClick:Z

.field private mIsMultiDrag:Z

.field private mIsShowNewInstallNotification:Z

.field private mIsShowSpeedOfLightIndicator:Z

.field private mIsShowingCheckBox:Z

.field private mIsShowingIconMessage:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field public mLauncherIconHeight:I

.field public mLauncherIconWidth:I

.field private mLock:Ljava/lang/Object;

.field protected mMaskColor:I

.field private mMaskRect:Landroid/graphics/Rect;

.field private mMessageAnimator:Landroid/animation/Animator;

.field private mMessageBackground:Ljava/lang/String;

.field private mMessageOldText:Ljava/lang/CharSequence;

.field private mNeedToSkipUpdateIconDrawableSize:Z

.field private mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

.field private mNotificationDrawable:Landroid/graphics/drawable/Drawable;

.field private mOutDistance:I

.field private mPerformClickRunnable:Ljava/lang/Runnable;

.field private mPerformHapticRunnable:Ljava/lang/Runnable;

.field public mRatio:F

.field public mResetBackAnimRunnable:Ljava/lang/Runnable;

.field private mShadowOffsetY:F

.field private mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

.field private mSkipNextAutoLayoutAnimation:Z

.field private mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

.field mStateStyle:Lmiuix/animation/IStateStyle;

.field protected mTempIconBoundRect:Landroid/graphics/Rect;

.field protected mTempRect:Landroid/graphics/Rect;

.field private mTempTitleBoundRect:Landroid/graphics/Rect;

.field private mTextAlpha:F

.field private mTextColorAlpha:I

.field private mTextColorWithoutAlpha:I

.field protected mTitle:Ljava/lang/CharSequence;

.field private mTitleShadowBound:[F

.field public mToFolderScale:F

.field protected mTransparentDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpState:Lmiuix/animation/controller/AnimState;

.field private mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

.field private releaseDrawableRunanble:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1D2LG1FipvQHrqYWUwSOMYQyG8o(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$startLightAnim$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$GePO7KVq05bPXeP3uoKI0shjv-Y(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$isInHotseat$7(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S27vnDD9cQv47TjW2tjPsuuYT_g(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yvr2FCAJi8xNw3qizGmcH5TOuN0(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$fromXml$1(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ge42JoOo8OIkoEc5YEHw5NmffM(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$postResetBackAnim$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0tSo4GgeUZc7IiMQC0BQ_jNq20(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$je9GdqdThtPXlsc0mfiWTUOPGOo(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$initFolMe$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ldRcy55ltreTrzW5xrfZ86vQog8(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->lambda$initShowOrHideCheckBoxAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 144
    sput-object v0, Lcom/miui/home/launcher/ShortcutIcon;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    new-instance p2, Lcom/miui/home/launcher/IconMessageRender;

    invoke-direct {p2}, Lcom/miui/home/launcher/IconMessageRender;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

    .line 130
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 139
    iput p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawableScale:F

    .line 141
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPocoDefaultIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0705e9

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ac

    .line 141
    :goto_0
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIndicatorDrawableMargin()I

    move-result p4

    iput p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIndicatorDrawableMargin:I

    .line 155
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    .line 157
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    .line 160
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNeedToSkipUpdateIconDrawableSize:Z

    .line 162
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMaskHintClick:Z

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 170
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    .line 383
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMaskRect:Landroid/graphics/Rect;

    .line 748
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    .line 749
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    .line 750
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempTitleBoundRect:Landroid/graphics/Rect;

    .line 845
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

    const-string p4, "icon_drawable_scale"

    .line 914
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE:Ljava/lang/String;

    .line 915
    new-instance p4, Lmiuix/animation/property/ValueProperty;

    const v0, 0x3b83126f    # 0.004f

    const-string v1, "scale"

    invoke-direct {p4, v1, v0}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;F)V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    .line 916
    new-instance p4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {p4, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p4

    const/4 v0, 0x1

    new-array v1, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/ShortcutIcon$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ShortcutIcon$3;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    aput-object v2, v1, p3

    .line 917
    invoke-virtual {p4, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->iconScaleAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 1021
    new-instance p4, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    .line 1022
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolderCreating:Z

    .line 1111
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEnableTouchMask:Z

    const-string p4, ""

    .line 1178
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 1179
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    .line 1180
    iput p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    const/4 p4, 0x0

    .line 1371
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    .line 1407
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsEnableAutoLayoutAnimation:Z

    .line 1408
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSkipNextAutoLayoutAnimation:Z

    .line 1531
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    .line 1532
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    const/4 v0, 0x4

    .line 1533
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    .line 1600
    iput p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDrawableScale:F

    .line 1834
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitleStateChanged:Z

    .line 1904
    iput-boolean p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolmeDown:Z

    .line 1905
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 1906
    iput-object p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    .line 1980
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    .line 2096
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    .line 2121
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    .line 2319
    iput p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextAlpha:F

    .line 187
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMaskColor:I

    .line 189
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07069c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickPadding:I

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getDefaultLayerType()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 192
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    .line 193
    new-instance p1, Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-direct {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    .line 194
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result p1

    .line 195
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setMessageSize(F)V

    .line 196
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget p4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setOutDistance(I)V

    .line 197
    invoke-virtual {p0, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initCheckBoxDrawable()V

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitleMarginTop()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/ShortcutIcon;I)I
    .locals 0

    .line 105
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ShortcutIcon;)Lmiuix/animation/property/ValueProperty;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ShortcutIcon;)Ljava/lang/Runnable;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private varargs animateIconMessageScale([F)V
    .locals 2

    .line 829
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->cancelMessageAnim()V

    .line 830
    sget-object v0, Lcom/miui/home/launcher/IconMessageRender;->MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x15e

    .line 831
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 832
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$2;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 842
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private calShadowBoundsAndSetDynamicShadow()V
    .locals 2

    .line 586
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->getShadowBounds(Landroid/text/Layout;[F)V

    .line 587
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->setTitleDynamicShadow()V

    return-void
.end method

.method private calTitleShadowOffsetY()V
    .locals 4

    .line 598
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 599
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result v1

    .line 600
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 601
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShadowOffsetY:F

    return-void
.end method

.method public static createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 329
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 330
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const p2, 0x7f1103c8

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 332
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060125

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-object p0
.end method

.method private drawCheckBox(Landroid/graphics/Canvas;)V
    .locals 7

    .line 502
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedDrawCheckBox()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 506
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 507
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 508
    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDiameter:I

    div-int/lit8 v1, v1, 0x2

    .line 509
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 510
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 511
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 512
    iget v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 513
    iget v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDiameter:I

    iget v6, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    int-to-float v3, v5

    add-int/2addr v6, v4

    int-to-float v4, v6

    sub-float/2addr v2, v3

    sub-float/2addr v0, v4

    .line 515
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDrawableScale:F

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 517
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawIconMask(Landroid/graphics/Canvas;)V
    .locals 4

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 477
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 478
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 479
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMaskColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawIconMessage(Landroid/graphics/Canvas;)V
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedDrawIconMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawMessageIfNecessary(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMessageIfNecessary(Landroid/graphics/Canvas;)V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget-object v0, v0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 825
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageRender:Lcom/miui/home/launcher/IconMessageRender;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/home/launcher/IconMessageRender;->onDraw(Landroid/graphics/Canvas;Lcom/miui/home/launcher/IconMessageRender$DrawParams;I)V

    return-void
.end method

.method private drawNinePatchShadow(Landroid/graphics/Canvas;)V
    .locals 3

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedShowShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, p0, v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->drawNinePatchShadow(Landroid/graphics/Canvas;Landroid/widget/TextView;[FI)V

    :cond_0
    return-void
.end method

.method private drawTitleIndicator(Landroid/graphics/Canvas;)V
    .locals 5

    .line 432
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedDrawTitleIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 436
    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowSpeedOfLightIndicator:Z

    if-eqz v1, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowNewInstallNotification:Z

    if-eqz v1, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIndicatorDrawableMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 443
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getFirstLineHeight(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    const/4 v2, 0x0

    .line 444
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    float-to-int v4, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, v3, v4, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 6

    .line 269
    monitor-enter p3

    .line 270
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 272
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 273
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 274
    invoke-virtual {p3, v0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setBuddyIconView(Lcom/miui/home/launcher/IShortcutIcon;Landroid/view/ViewGroup;)V

    .line 275
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 278
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    instance-of v4, p2, Landroid/widget/AbsListView;

    if-eqz v4, :cond_7

    .line 286
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellWidth()I

    move-result p2

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v4

    if-nez p0, :cond_2

    .line 289
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p0, p2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    :goto_0
    move-object v2, p0

    goto :goto_1

    .line 290
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, p2, :cond_3

    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v4, :cond_4

    .line 291
    :cond_3
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 295
    :cond_4
    :goto_1
    instance-of p2, p0, Landroid/widget/AbsListView$LayoutParams;

    if-nez p2, :cond_5

    .line 296
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 300
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result p0

    if-nez p0, :cond_6

    const/high16 p0, 0x3f800000    # 1.0f

    .line 301
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 305
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f0600da

    .line 307
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_2

    .line 309
    :cond_7
    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 p0, 0x1

    .line 310
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 311
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableAutoLayoutAnimation(Z)V

    const p0, 0x7f060125

    .line 313
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_2
    const p2, 0x7f1103c8

    if-eqz v2, :cond_8

    .line 316
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 318
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/common/Utilities;->setTitleShadow(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 321
    :cond_8
    new-instance p0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda7;

    invoke-direct {p0, v0, p3, p1}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    .line 324
    monitor-exit p3

    return-object v0

    :catchall_0
    move-exception p0

    .line 325
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 257
    instance-of v0, p2, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0d016a

    goto :goto_2

    :cond_2
    :goto_0
    const v0, 0x7f0d016c

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f0d016e

    .line 264
    :goto_2
    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method private getCellHeightPx(Z)I
    .locals 2

    if-eqz p1, :cond_0

    .line 560
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    return p0

    .line 562
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTextHeight()I

    move-result p1

    .line 563
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private getIconPadding()Landroid/graphics/Rect;
    .locals 6

    .line 905
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 906
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 907
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 908
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 909
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    sub-int/2addr v4, p0

    .line 906
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getNotificationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2221
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2222
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080662

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    .line 2223
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2225
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNotificationDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1231
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getResourcePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 1232
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1233
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getResourcePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x3a

    .line 1242
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2214
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2215
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0806e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 2217
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSpeedOfLightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getTitleBounds(Landroid/graphics/Rect;)V
    .locals 6

    .line 860
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getTextContentWidth(Landroid/widget/TextView;)I

    move-result v0

    .line 861
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getTextContentHeight(Landroid/widget/TextView;)I

    move-result v1

    .line 862
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 863
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v4

    add-int/2addr v3, v4

    .line 864
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    .line 865
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v0, v1

    .line 862
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getTopPaddingDiffOnTitleHideStateChange()I
    .locals 3

    .line 575
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->getTopPadding(IZ)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getTopPadding(IZ)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private initCheckBoxDrawable()V
    .locals 3

    .line 356
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100d1

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f08044b

    .line 357
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateBadgeConfig()V

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method private initFolMe()V
    .locals 1

    .line 1928
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initPerformClickRunnable()V
    .locals 2

    .line 797
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mPerformClick"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 800
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformClickRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 803
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initShowOrHideCheckBoxAnim()V
    .locals 3

    .line 226
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ShortcutIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ShortcutIcon$1;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private isDropable(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 1059
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1060
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x12

    if-eq p0, v1, :cond_1

    .line 1061
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq p0, v0, :cond_1

    .line 1062
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    .line 1063
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0xb

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isQuickCallScreen()Z
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUninstallAnimShowing()Z
    .locals 1

    .line 2302
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2303
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2304
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static synthetic lambda$fromXml$1(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 322
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p1

    if-nez p1, :cond_1

    .line 323
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 322
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    return-void
.end method

.method private synthetic lambda$initFolMe$3()V
    .locals 5

    .line 1929
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1930
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    .line 1931
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "myDown"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 1932
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 1933
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    .line 1934
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v2, "myUp"

    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1935
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 1936
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initShowOrHideCheckBoxAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 230
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method private static synthetic lambda$isInHotseat$7(Lcom/miui/home/launcher/ShortcutInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 2366
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 1021
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 3

    .line 2122
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2123
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->clearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2125
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2126
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2128
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$postResetBackAnim$4(Ljava/lang/Runnable;)V
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_0

    .line 2104
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$startLightAnim$6()V
    .locals 1

    const/4 v0, 0x0

    .line 2208
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    return-void
.end method

.method private scaleDownToFolder(Z)V
    .locals 7

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleDownToFolder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    .line 943
    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v0, v3

    .line 945
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mToFolderScale:F

    int-to-float v0, v1

    sub-float/2addr v0, v2

    div-float/2addr v2, v0

    .line 946
    iput v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 954
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    .line 948
    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE:Ljava/lang/String;

    aput-object v5, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    aput-object v6, v5, v3

    aput-object v0, v5, v4

    .line 949
    invoke-interface {p1, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    aput-object v1, v0, v3

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mToFolderScale:F

    .line 950
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->iconScaleAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    .line 952
    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE:Ljava/lang/String;

    aput-object v5, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    aput-object v6, v5, v3

    iget v6, p0, Lcom/miui/home/launcher/ShortcutIcon;->mToFolderScale:F

    .line 953
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {p1, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/home/launcher/ShortcutIcon;->ICON_DRAWABLE_SCALE_PROPERTY:Lmiuix/animation/property/ValueProperty;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    .line 954
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->iconScaleAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v1, v2

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private setMessageTextBackground(Ljava/lang/String;)V
    .locals 0

    .line 1216
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getRemoteResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 1220
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageBackground:Ljava/lang/String;

    return-void
.end method

.method private setTitleDynamicShadow()V
    .locals 2

    .line 591
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedShowShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->calTitleShadowOffsetY()V

    .line 593
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShadowOffsetY:F

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/widget/TextView;[FF)V

    :cond_0
    return-void
.end method

.method private showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 0

    .line 1561
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1562
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 1563
    :goto_0
    iput p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1564
    :goto_1
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDrawableScale:F

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 1567
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->showOrHideCheckBoxWithAnim(Z)V

    goto :goto_2

    .line 1569
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->quickHideOrShowCheckbox(Z)V

    .line 1572
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private showFolderCreateBackground(ZZ)V
    .locals 4

    .line 984
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-nez v0, :cond_0

    return-void

    .line 987
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    .line 988
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getFolderCreateAnim()Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    move-result-object v0

    .line 989
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 990
    iget v3, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aput p0, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->showFolderCreateBackground(ZZ[I)V

    return-void
.end method

.method private supportHotClick()Z
    .locals 0

    .line 792
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateBadgeConfig()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDiameter:I

    .line 367
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPocoDefaultIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0705e9

    goto :goto_0

    :cond_0
    const v1, 0x7f0700ac

    .line 367
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mOutDistance:I

    .line 370
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->setOutDistance(I)V

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDiameter:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateContentDescription()V
    .locals 5

    .line 1549
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1550
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 1554
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100138

    goto :goto_0

    :cond_1
    const v2, 0x7f100139

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    invoke-super {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1551
    :cond_2
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTextColor()V
    .locals 3

    .line 494
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextColorWithoutAlpha:I

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextColorAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 495
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private updateTitleSize()V
    .locals 2

    .line 1645
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1646
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 6

    .line 1728
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 1730
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1731
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    .line 1732
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->loadToggleBackground(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 1733
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/miui/home/launcher/ShortcutIcon$4;

    invoke-direct {v5, p0, p1}, Lcom/miui/home/launcher/ShortcutIcon$4;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 1740
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 1743
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(Z)V

    :cond_1
    return-void
.end method

.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 1075
    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1078
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "ShortcutIcon"

    const-string p1, "applyCompoundDrawables icon is null return"

    .line 626
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isCrop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->roundedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 632
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected applyUninstallDialogIconDrawables(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;F)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "ShortcutIcon"

    const-string p1, "applyCompoundDrawables icon is null return"

    .line 664
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 667
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ShortcutIcon;->roundedBigIcon(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 668
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 669
    iget p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    iget p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    .line 670
    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public backupProperty()V
    .locals 0

    .line 1457
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->backupProperty()V

    return-void
.end method

.method public bindAppInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V
    .locals 3

    .line 344
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getFillShortcutIconConsumer(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IShortcutIcon;)Ljava/util/function/Consumer;

    move-result-object v2

    .line 345
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleTip()V

    .line 348
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setMessageImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 2

    .line 1883
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1884
    invoke-super {p0, p1}, Landroid/widget/TextView;->buildDrawingCache(Z)V

    :cond_0
    return-void
.end method

.method protected cancelMessageAnim()V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 1284
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public changeToFancyDrawable()V
    .locals 0

    return-void
.end method

.method public checkCheckBox(Z)V
    .locals 0

    .line 1749
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setChecked(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 2172
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2173
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public drawOutLine(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2163
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2164
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setDrawOutline(Z)V

    .line 2165
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 2166
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setDrawOutline(Z)V

    .line 2167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 0

    .line 1156
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 1158
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1159
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 1120
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 1122
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 1123
    sget-object v1, Landroid/widget/TextView;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/TextView;->SELECTED_STATE_SET:[I

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

    .line 1124
    :goto_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEnableTouchMask:Z

    if-eqz v1, :cond_2

    .line 1125
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawTouchMask:Z

    .line 1126
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    return-void

    .line 1134
    :cond_3
    sget-object v1, Lcom/miui/home/launcher/ShortcutIcon;->CHECKED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v1

    .line 1135
    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->isChecked:Z

    if-eqz v1, :cond_5

    .line 1136
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1137
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1138
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isUninstallAnimShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1140
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_5
    return-void
.end method

.method public enableDrawTouchMask(Z)V
    .locals 0

    .line 1115
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mEnableTouchMask:Z

    return-void
.end method

.method public endFolmeAnim()V
    .locals 1

    .line 1942
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1943
    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public folmeDown()V
    .locals 3

    .line 1920
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "ShortcutIcon"

    const-string v1, "folmeDown"

    .line 1921
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const/4 v0, 0x1

    .line 1923
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public folmeUp()V
    .locals 4

    .line 1911
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolmeDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    const-string v0, "ShortcutIcon"

    const-string v1, "folmeUp"

    .line 1913
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mStateStyle:Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 1915
    iput-boolean v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolmeDown:Z

    :cond_0
    return-void
.end method

.method public getAnimTargetContainerView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getAnimTargetHeight()I
    .locals 0

    .line 2261
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    return p0
.end method

.method public getAnimTargetOriginalLocation()Landroid/graphics/Rect;
    .locals 3

    .line 2182
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2190
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 2191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2192
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    aget p0, v0, v2

    float-to-int p0, p0

    const/4 v2, 0x1

    aget v0, v0, v2

    float-to-int v0, v0

    .line 2193
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1

    .line 2186
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAnimTargetVisibility()I
    .locals 0

    .line 2251
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result p0

    return p0
.end method

.method public getAnimTargetWidth()I
    .locals 0

    .line 2256
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    return p0
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1515
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getBoomAnimBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1787
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 1788
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 1790
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1791
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .line 2134
    invoke-super {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2135
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-nez v1, :cond_0

    .line 2136
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2138
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2139
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2030
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDefaultLayerType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 5

    .line 1652
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    const v1, 0x7f100091

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1654
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    .line 1450
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-object p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIconAlpha()F
    .locals 1

    .line 1327
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1328
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 876
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 877
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 878
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 879
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v3, p0

    .line 875
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconDrawableScale()F
    .locals 0

    .line 960
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawableScale:F

    return p0
.end method

.method public getIconHeight()I
    .locals 0

    .line 1812
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    return p0
.end method

.method public getIconHotClickBounds(Landroid/graphics/Rect;I)V
    .locals 5

    .line 892
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 893
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 894
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 895
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 891
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getIconImageViewCenterPoint([I)Z
    .locals 2

    .line 1798
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, p1, v0

    .line 1803
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    const/4 v0, 0x1

    aput p0, p1, v0

    return v0
.end method

.method public getIconLocation()Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1521
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1525
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1526
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    aget p0, v0, v1

    aget v0, v0, v3

    .line 1527
    invoke-virtual {v2, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public getIconRadius()F
    .locals 1

    .line 2020
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultIconRadius(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    int-to-float p0, p0

    const v0, 0x40951eb8    # 4.66f

    div-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    int-to-float p0, p0

    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconVisibility()I
    .locals 2

    .line 2241
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconWidth()I
    .locals 0

    .line 1808
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    return p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 1700
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1701
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 1702
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getIsHideTitle()Z
    .locals 0

    .line 1849
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    return p0
.end method

.method public getIsMultiDrag()Z
    .locals 0

    .line 1859
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    return p0
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 2361
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
    .locals 1

    .line 1667
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1668
    instance-of v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 1669
    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftGap()I
    .locals 1

    .line 1816
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getLeftPadding()I
    .locals 0

    .line 582
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getTitlePaddingSide()I

    move-result p0

    return p0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .line 1247
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isEmptyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 1984
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$6;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-object v0
.end method

.method public getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 1

    .line 1965
    new-instance v0, Lcom/miui/home/launcher/ShortcutIcon$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon$5;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-object v0
.end method

.method public getNeedToSkipUpdateIconDrawableSize()Z
    .locals 0

    .line 2298
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNeedToSkipUpdateIconDrawableSize:Z

    return p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowOffsetY()F
    .locals 0

    .line 608
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShadowOffsetY:F

    return p0
.end method

.method public getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 1714
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1715
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 1716
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 1427
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSkipNextAutoLayoutAnimation:Z

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

.method public getTextColor()I
    .locals 1

    .line 1400
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060123

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 1403
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060124

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1878
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleShadowBound()[F
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    return-object p0
.end method

.method protected getTopPadding(IZ)I
    .locals 0

    .line 552
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->getCellHeightPx(Z)I

    move-result p0

    .line 553
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p0

    .line 554
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public getVisionCenter([I)V
    .locals 2

    .line 1296
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1297
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    const/4 p0, 0x1

    aput v0, p1, p0

    return-void
.end method

.method public getVisionOffset([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1290
    aput v0, p1, v0

    .line 1291
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p0

    const/4 v0, 0x1

    aput p0, p1, v0

    return-void
.end method

.method public getVisionRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1302
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public hasFocusable()Z
    .locals 1

    .line 1104
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1107
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->hasFocusable()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1897
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isMessageVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 204
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isAutoLayoutAnimating()Z
    .locals 0

    .line 2274
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsAutoLayoutAnimating:Z

    return p0
.end method

.method public isCanChecked()Z
    .locals 0

    .line 1874
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isPairIcon()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 1170
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->isChecked:Z

    return p0
.end method

.method public isCrop()Z
    .locals 1

    .line 1686
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

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

.method public isDrawingInThumbnailView()Z
    .locals 0

    .line 2034
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInThumbnailView:Z

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 996
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmptyMessage()Z
    .locals 0

    .line 1279
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

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

    .line 1417
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isHintClick(II)Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 769
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 772
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/miui/home/launcher/AppIcon;

    if-nez v0, :cond_1

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleBounds(Landroid/graphics/Rect;)V

    .line 776
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHintClick(Landroid/view/ViewGroup;II)Z
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 753
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 754
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 755
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 756
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempIconBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 759
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/miui/home/launcher/AppIcon;

    if-nez p1, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempTitleBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleBounds(Landroid/graphics/Rect;)V

    .line 763
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempTitleBoundRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 764
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempTitleBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHintIconHotClick(II)Z
    .locals 3

    .line 780
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->supportHotClick()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mClickPadding:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconHotClickBounds(Landroid/graphics/Rect;I)V

    .line 781
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 784
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/miui/home/launcher/AppIcon;

    if-nez v0, :cond_2

    goto :goto_1

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTitleBounds(Landroid/graphics/Rect;)V

    .line 788
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public isIconLocating()Z
    .locals 0

    .line 2352
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconLocating:Z

    return p0
.end method

.method public isIgnoreAnimationForOnce()Z
    .locals 0

    .line 2290
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIgnoreAnimationForOnce:Z

    return p0
.end method

.method public isInHotseat()Z
    .locals 1

    .line 2366
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda9;->INSTANCE:Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda9;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMessageVisible()Z
    .locals 0

    .line 1224
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedDrawCheckBox()Z
    .locals 1

    .line 522
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedDrawIconMaskOnPress()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawTouchMask:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolderCreating:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMaskHintClick:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedDrawIconMessage()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isMessageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedDrawTitleIndicator()Z
    .locals 1

    .line 464
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedNewInstalledAnim()Z
    .locals 1

    .line 1691
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1692
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 1693
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isNeedNewInstalledAnim()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShowShadow()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInScreenPreview:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/miui/home/launcher/oldman/ElderlyManShortcutIcon;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isInWorkspace(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNewInstalled()Z
    .locals 1

    .line 1677
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 1678
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 1679
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPairIcon()Z
    .locals 1

    .line 1613
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShownCheckBox()Z
    .locals 0

    .line 1609
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isPairIcon()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVerticalClip()Z
    .locals 5

    .line 2080
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 2081
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    .line 2082
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    .line 2083
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-lez p0, :cond_0

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, v1

    mul-float/2addr p0, v4

    int-to-float v1, v2

    div-float/2addr p0, v1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isVerticalShape()Z
    .locals 2

    .line 2072
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2074
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ge v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 1148
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 1149
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 1150
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public needPostWhenDrop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needReset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAnimation(Z)V
    .locals 0

    return-void
.end method

.method public onBackAnimStart()V
    .locals 1

    const/4 v0, 0x4

    .line 1472
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 1

    const/4 v0, 0x4

    .line 1487
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 376
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 377
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 378
    sget-object p0, Lcom/miui/home/launcher/ShortcutIcon;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1959
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->endFolmeAnim()V

    .line 1960
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 5

    .line 1026
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isQuickCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1027
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolderCreating:Z

    .line 1028
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->scaleDownToFolder(Z)V

    const/4 v1, 0x0

    .line 1029
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(ZZ)V

    .line 1030
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1031
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10006d

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->announce(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    const-string p1, "ShortcutIcon"

    const-string v0, "onDragExit: "

    .line 1042
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isQuickCallScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1044
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsFolderCreating:Z

    .line 1045
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->scaleDownToFolder(Z)V

    .line 1046
    invoke-direct {p0, p1, p1}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(ZZ)V

    .line 1047
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1048
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 394
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedDrawIconMaskOnPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 398
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTextColor()V

    .line 399
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawNinePatchShadow(Landroid/graphics/Canvas;)V

    .line 400
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawIconMessage(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 403
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawIconMask(Landroid/graphics/Canvas;)V

    .line 405
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawCheckBox(Landroid/graphics/Canvas;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawTitleIndicator(Landroid/graphics/Canvas;)V

    .line 408
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-eqz p0, :cond_2

    .line 409
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->drawLight(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 412
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 1006
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isQuickCallScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1007
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->isDropable(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1008
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(ZZ)V

    .line 1009
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    .line 1010
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1009
    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/Workspace;->createUserFolderWithDragOverlap(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 1011
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    return v0

    :cond_1
    return v1
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onEnterHomeAnimFinish()V
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1499
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1500
    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->animateIconMessageScale([F)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onEnterHomeAnimStart()V
    .locals 1

    .line 1491
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 1492
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    .line 1493
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 210
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initFolMe()V

    .line 211
    new-instance v0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onBindElementFinishInflate()V

    .line 214
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initShowOrHideCheckBoxAnim()V

    return-void
.end method

.method public onLaunchAppWindowAlphaChange(F)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 545
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->calShadowBoundsAndSetDynamicShadow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 527
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateIconDrawableSize()V

    .line 528
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateBadgeConfig()V

    .line 529
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateTitleSize()V

    .line 530
    invoke-static {p0}, Lcom/miui/home/launcher/util/OperatorGridUtils;->setMaxLines(Landroid/widget/TextView;)V

    .line 531
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 532
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->getTopPadding(IZ)I

    move-result v1

    .line 533
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 534
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 531
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 535
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getSpanX()I

    move-result v3

    mul-int/2addr v1, v3

    if-le v0, v1, :cond_2

    .line 536
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getSpanX()I

    move-result v0

    mul-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 538
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitleStateChanged:Z

    .line 539
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

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
    .locals 7

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "ShortcutIcon"

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 714
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/CellLayout;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 715
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->isHintIconHotClick(II)Z

    move-result v6

    .line 716
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/ShortcutIcon;->isHintClick(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMaskHintClick:Z

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent ACTION_DOWN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "---"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    return v5

    .line 721
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 722
    instance-of v3, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_3

    .line 723
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 724
    invoke-static {v0}, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->preLaunchProcess(Lcom/miui/home/launcher/ShortcutInfo;)Z

    .line 729
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMaskHintClick:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isAutoLayoutAnimating()Z

    move-result v0

    if-nez v0, :cond_6

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    const-string v3, "FolmeUtils isEnable"

    .line 732
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isAutoLayoutAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    .line 734
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->folmeDown()V

    :cond_4
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_6

    .line 739
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isAutoLayoutAnimating()Z

    move-result v0

    if-nez v0, :cond_6

    .line 740
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->folmeUp()V

    .line 745
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 1387
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f1103c8

    const v2, 0x7f1103cb

    invoke-static {v0, p0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 1388
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 1389
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isNeedShowShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitleShadowBound:[F

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShadowOffsetY:F

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/widget/TextView;[FF)V

    .line 1392
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1393
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    if-eqz v0, :cond_1

    .line 1394
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    .line 1395
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    invoke-interface {p0, v0}, Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;->onColorModeChange(Z)V

    :cond_1
    return-void
.end method

.method public onlyShowIconWhenDrawChild()V
    .locals 1

    const/4 v0, 0x1

    .line 1820
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideTitle(Z)V

    .line 1821
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 222
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->initPerformClickRunnable()V

    :cond_0
    if-eqz p1, :cond_1

    .line 813
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mPerformClickRunnable:Ljava/lang/Runnable;

    if-ne p1, v0, :cond_1

    .line 814
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 817
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postResetBackAnim(Ljava/lang/Runnable;)V
    .locals 3

    .line 2099
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2100
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->removeReleaseRunnable()V

    .line 2101
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x5dc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public quickHideOrShowCheckbox(Z)V
    .locals 1

    .line 1576
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isShownCheckBox()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1579
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 1582
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 1583
    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1584
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    .line 1585
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public removeReleaseRunnable()V
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    .line 1506
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->resetBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->releaseDrawableRunanble:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public resetCheckBox()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1753
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    return-void
.end method

.method public resetHintClick()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMaskHintClick:Z

    .line 490
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public resetIShortcutIcon(Landroid/view/View;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 337
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 338
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    const/4 p0, 0x0

    .line 339
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public resetInRunningFolderSimpleCloseAnimStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 2068
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    return-void
.end method

.method public resetPendingBackAnim()V
    .locals 3

    .line 2110
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2111
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2112
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->removeReleaseRunnable()V

    .line 2113
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mResetBackAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public restoreProperty()V
    .locals 0

    .line 1462
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mViewPropertyBackuperDelegate:Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->restoreProperty()V

    return-void
.end method

.method public restoreToInitState()V
    .locals 1

    const/4 v0, 0x0

    .line 2056
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    .line 2057
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    return-void
.end method

.method public roundedBigIcon(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 682
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v1, p2, :cond_1

    goto :goto_0

    .line 685
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07029a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    goto :goto_1

    .line 683
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p2

    :goto_1
    mul-float/2addr p2, p3

    .line 687
    instance-of p3, p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz p3, :cond_5

    .line 688
    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    .line 689
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 690
    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p3, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    .line 694
    :cond_3
    invoke-static {p3}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 695
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    .line 696
    invoke-virtual {p0, p2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 697
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_4
    :goto_2
    return-object v0

    .line 699
    :cond_5
    invoke-static {p1}, Lcom/miui/maml/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 700
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    .line 701
    invoke-virtual {p0, p2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method public roundedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public setAnimTargetVisibility(I)V
    .locals 0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconVisibility(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1093
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->isChecked:Z

    if-eq v0, p1, :cond_0

    .line 1094
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->isChecked:Z

    .line 1095
    invoke-virtual {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 1096
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->isChecked:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V

    .line 1097
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    .line 1098
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performCheckedStateInEditMode(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setColorModeChangedListener(Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mColorModeChangeListener:Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;

    return-void
.end method

.method public setDefaultTextColor(I)V
    .locals 1

    .line 2322
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextColorAlpha:I

    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 2323
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextColorWithoutAlpha:I

    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 0

    .line 2178
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 2

    .line 1537
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    if-eqz p1, :cond_0

    .line 1538
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1541
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1542
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isShownCheckBox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->showCheckBox(ZLcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 1545
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateContentDescription()V

    return-void
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 1412
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 1437
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

    .line 1445
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mGhostView:Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;

    return-void
.end method

.method public setIconAlpha(F)V
    .locals 1

    .line 1321
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1322
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 620
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;->onImageDrawableSet(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIconDrawableScale(F)V
    .locals 3

    .line 964
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawableScale:F

    .line 965
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    .line 966
    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float p1, v0

    sub-float/2addr p1, v1

    .line 967
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 970
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    sub-int/2addr v0, p1

    float-to-int v1, v1

    sub-int v1, v0, v1

    goto :goto_0

    :cond_0
    float-to-int v0, v1

    add-int/2addr v0, p1

    move v1, p1

    .line 978
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    float-to-int v2, v2

    add-int/2addr v2, p1

    .line 979
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public setIconLocating(Z)V
    .locals 0

    .line 2356
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconLocating:Z

    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1

    .line 2233
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2236
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2237
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIgnoreAnimationForOnce(Z)V
    .locals 0

    .line 2285
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIgnoreAnimationForOnce:Z

    return-void
.end method

.method public setImageSetCallback(Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;)V
    .locals 0

    .line 2152
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

    return-void
.end method

.method public setInRunningFolderSimpleCloseAnimStatus(Z)V
    .locals 0

    .line 2062
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsInRunningFolderSimpleCloseAnim:Z

    .line 2063
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    .line 2310
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsAnimating:Z

    return-void
.end method

.method public setIsAutoLayoutAnimating(Z)V
    .locals 2

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsAutoLayoutAnimating isAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsAutoLayoutAnimating:Z

    return-void
.end method

.method public setIsDrawingInDragView(Z)V
    .locals 0

    .line 2051
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInDragView:Z

    return-void
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 2046
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInScreenPreview:Z

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 2042
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsDrawingInThumbnailView:Z

    return-void
.end method

.method public setIsHideCheckBox(Z)V
    .locals 0

    .line 1844
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideCheckBox:Z

    return-void
.end method

.method public setIsHideTitle(Z)V
    .locals 1

    .line 1837
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-eq v0, p1, :cond_0

    .line 1838
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    const/4 p1, 0x1

    .line 1839
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitleStateChanged:Z

    :cond_0
    return-void
.end method

.method public setIsMultiDrag(Z)V
    .locals 0

    .line 1855
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    .line 1189
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMessage text"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ShortcutIcon"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, ""

    if-nez p1, :cond_0

    move-object p1, p3

    .line 1191
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1193
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 1194
    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 1195
    iput-boolean v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    new-array p1, v1, [F

    .line 1197
    fill-array-data p1, :array_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->animateIconMessageScale([F)V

    .line 1198
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 1199
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    const/4 p2, 0x1

    .line 1200
    iput-boolean p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    .line 1201
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 1202
    iput v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    .line 1204
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    if-nez p2, :cond_5

    new-array p2, v1, [F

    .line 1205
    fill-array-data p2, :array_1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->animateIconMessageScale([F)V

    .line 1207
    :cond_5
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 1208
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->createMessageBitmap(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_6
    :goto_0
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

    .line 1255
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mMessageOldText:Ljava/lang/CharSequence;

    .line 1256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1257
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    const/4 p1, 0x4

    .line 1258
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    .line 1259
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->resetMessageBitmap()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    .line 1262
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1263
    iput v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->createMessageBitmap(Ljava/lang/String;)V

    .line 1267
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setNeedToSkipUpdateIconDrawableSize(Z)V
    .locals 0

    .line 2294
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNeedToSkipUpdateIconDrawableSize:Z

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 1422
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1

    .line 2345
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2346
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTextAlpha:F

    .line 2347
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2340
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setDefaultTextColor(I)V

    .line 2341
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1863
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1865
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->calShadowBoundsAndSetDynamicShadow()V

    .line 1867
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTitle:Ljava/lang/CharSequence;

    .line 1868
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1869
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElement()V

    return-void
.end method

.method public setTouchScaleFactor(F)V
    .locals 5

    .line 1949
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDownState:Lmiuix/animation/controller/AnimState;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 1951
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 1952
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mUpState:Lmiuix/animation/controller/AnimState;

    float-to-double v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 1953
    invoke-virtual {p0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_0
    return-void
.end method

.method public setUninstallDialogViewContainerIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 639
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 643
    iget v0, p3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v1, p3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-le v0, v1, :cond_2

    .line 645
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    .line 646
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int p2, v1

    goto :goto_1

    .line 648
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 649
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p2

    .line 651
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 652
    iput p2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    int-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    .line 653
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 654
    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/home/launcher/ShortcutIcon;->applyUninstallDialogIconDrawables(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;F)V

    .line 658
    :goto_2
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mImageSetCallback:Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;

    if-eqz p0, :cond_3

    .line 659
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;->onImageDrawableSet(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public showAllChildViewWhenDrawChild()V
    .locals 1

    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideTitle(Z)V

    .line 1826
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIsHideCheckBox(Z)V

    return-void
.end method

.method public showMessageImmediately()V
    .locals 1

    .line 1271
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingIconMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1272
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageVisibility:I

    .line 1273
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showOrHideCheckBoxWithAnim(Z)V
    .locals 4

    .line 1589
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1592
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowingCheckBox:Z

    const/4 v0, 0x0

    .line 1593
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxVisibility:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    move v1, v2

    .line 1596
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1597
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mShowOrHideCheckBoxAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1348
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsMultiDrag:Z

    .line 1349
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mDrawOutline:Z

    return-void
.end method

.method public startLightAnim(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-nez v0, :cond_0

    .line 2207
    new-instance v0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;-><init>(Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    .line 2208
    new-instance p1, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->setAnimFinishCallBack(Ljava/lang/Runnable;)V

    .line 2209
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->start()V

    :cond_0
    return-void
.end method

.method public startNewInstallAnim()V
    .locals 1

    .line 1709
    new-instance v0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->start()V

    return-void
.end method

.method public startShowIconMessageAnim()V
    .locals 5

    .line 847
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget-object v0, v0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 851
    sget-object v0, Lcom/miui/home/launcher/IconMessageRender;->MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 852
    sget-object v2, Lcom/miui/home/launcher/IconMessageRender;->MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 853
    iget-object v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 854
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 855
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 856
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->animatorSet:Landroid/animation/AnimatorSet;

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

.method public superSetFrame(IIII)Z
    .locals 0

    .line 1432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toggle()V
    .locals 0

    return-void
.end method

.method public transform([I)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1353
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1356
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitleStateChanged:Z

    if-nez v0, :cond_1

    return-void

    .line 1360
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTopPaddingDiffOnTitleHideStateChange()I

    move-result v0

    .line 1361
    iget-boolean p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsHideTitle:Z

    if-eqz p0, :cond_2

    neg-int v0, v0

    :cond_2
    const/4 p0, 0x1

    .line 1364
    aget v1, p1, p0

    add-int/2addr v1, v0

    aput v1, p1, p0

    :cond_3
    :goto_0
    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 2

    .line 1477
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->changeToFancyDrawable(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    .line 1481
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateCheckBoxAnimProgress(F)V
    .locals 0

    .line 1603
    iput p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckBoxDrawableScale:F

    .line 1604
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1605
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method protected updateIconDrawableSize()V
    .locals 3

    .line 1626
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getNeedToSkipUpdateIconDrawableSize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1629
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    .line 1630
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v1

    .line 1631
    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    if-eq v2, v1, :cond_3

    .line 1632
    :cond_1
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 1633
    iput v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    .line 1634
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1635
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIconDrawableSize NullPointerException e --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortcutIcon"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 0

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 2

    .line 1618
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateBadgeConfig()V

    .line 1619
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateIconDrawableSize()V

    .line 1620
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTitleTextSize()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1621
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public updateTitleTip()V
    .locals 5

    .line 1757
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_6

    .line 1758
    instance-of v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 1761
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1762
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1763
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentLightSpeedIconPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1764
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1765
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getSeepOfLightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1766
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowSpeedOfLightIndicator:Z

    goto :goto_1

    :cond_1
    move-object v2, v1

    move v1, v4

    :goto_1
    if-nez v1, :cond_3

    .line 1769
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 1770
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getNotificationDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1771
    iput-boolean v3, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowNewInstallNotification:Z

    .line 1773
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getLeftPadding()I

    move-result v0

    .line 1774
    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowSpeedOfLightIndicator:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIsShowNewInstallNotification:Z

    if-eqz v1, :cond_5

    .line 1775
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIndicatorDrawableMargin:I

    add-int/2addr v0, v1

    .line 1777
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1165
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mCheckboxDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
