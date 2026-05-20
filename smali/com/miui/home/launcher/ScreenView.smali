.class public Lcom/miui/home/launcher/ScreenView;
.super Lcom/miui/launcher/views/LauncherViewGroup;
.source "ScreenView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;,
        Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;,
        Lcom/miui/home/launcher/ScreenView$SavedState;,
        Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;,
        Lcom/miui/home/launcher/ScreenView$SliderTouchListener;,
        Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;,
        Lcom/miui/home/launcher/ScreenView$SlideBar;,
        Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;,
        Lcom/miui/home/launcher/ScreenView$IndicatorView;,
        Lcom/miui/home/launcher/ScreenView$Indicator;,
        Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DAMPING:F = 0.96f

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final GESTURE_PUSH_CONFIRM_DIP:F = 50.0f

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_SCREEN:I = -0x1

.field protected static final INVALID_SIZE:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x5

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final RESPONSE:F = 0.36f

.field public static final SCREEN_LAYOUT_MODE_CENTER:I = 0x1

.field public static final SCREEN_LAYOUT_MODE_CENTER_FIXED_GAP:I = 0x7

.field public static final SCREEN_LAYOUT_MODE_FIXED_GAP:I = 0x6

.field public static final SCREEN_LAYOUT_MODE_FOLD_EDIT:I = 0x9

.field public static final SCREEN_LAYOUT_MODE_LINEAR:I = 0x8

.field public static final SCREEN_LAYOUT_MODE_NORMAL:I = 0x0

.field public static final SCREEN_LAYOUT_MODE_PREVIEW:I = 0x2

.field public static final SCREEN_LAYOUT_MODE_UNIFORM:I = 0x3

.field private static final SEEKBAR_DOT_FADE_IN_OUT_DURATION:J = 0xfaL

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SNAP_DIRECTION_LEFT:I = -0x1

.field private static final SNAP_DIRECTION_RIGHT:I = 0x1

.field protected static final SNAP_VELOCITY:I = 0x12c

.field public static final TOUCH_STATE_CANCLED:I = 0x5

.field public static final TOUCH_STATE_PINCHING:I = 0x4

.field public static final TOUCH_STATE_REST:I = 0x0

.field public static final TOUCH_STATE_SCROLLING:I = 0x1

.field public static final TOUCH_STATE_SLIDING:I = 0x3

.field public static final VIEW_CONFIGURATION_TOUCH_SLOP:I

.field protected static mIsChangingCellCount:Z


# instance fields
.field protected final DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

.field private final PREVIEW_MODE_MAX_SCREEN_WIDTH:F

.field private SCROLL_X:Lmiuix/animation/property/ViewProperty;

.field private final TAG:Ljava/lang/String;

.field animConfig:Lmiuix/animation/base/AnimConfig;

.field public isOverlayDragStart:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field protected mAutoHideTimer:Ljava/lang/Runnable;

.field private mChildScreenLayoutMeasureDiffX:I

.field private mChildScreenMeasureHeight:I

.field protected mChildScreenMeasureWidth:I

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreenIndex:I

.field private mEnableReverseDrawingMode:Z

.field private mFixedGap:I

.field private mFlingHelper:Lcom/miui/home/launcher/util/FlingHelper;

.field private mFoldEditModeChanging:Z

.field private mFoldEditOriginalIndex:I

.field protected mGestureTrigged:Z

.field mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

.field private mIgnoreCenterY:Z

.field private mIndicatorCount:I

.field private mIsLayoutInTop:Z

.field protected mIsSlideBarAutoHide:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLastScrollX:I

.field private mLastScrollXInDraw:I

.field protected mLayoutScreensSeamless:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLinearScrollX:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mMiuiScaleDetector:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

.field protected mNextScreenIndex:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mPinIned:Z

.field private mPreviewModeFooter:Landroid/view/View;

.field private mPreviewModeHeader:Landroid/view/View;

.field private mPushGestureEnabled:Z

.field protected mScreenContentWidth:I

.field private mScreenCounter:I

.field protected mScreenLayoutMode:I

.field protected mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

.field protected mScreenScrollLeftIndex:I

.field protected mScreenScrollRightIndex:I

.field protected mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

.field private mScreenSnapDuration:I

.field private mScrollCurrentValue:F

.field private final mScrollEndState:Lmiuix/animation/controller/AnimState;

.field private mScrollLeftBound:I

.field private mScrollOffset:I

.field private mScrollRightBound:I

.field private mScrollStartValue:F

.field private mScrollStartX:I

.field private mScrollTargetValue:I

.field private mScrollWholeScreen:Z

.field private mScrollX:F

.field private mScrollingStateStartX:I

.field private mSecondPointerStartX:F

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

.field private mSnapDelta:I

.field private mTouchIntercepted:Z

.field private mTouchPointerSize:I

.field private mTouchSlop:I

.field private mTouchState:I

.field protected mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

.field private mUniformLayoutModeCurrentGap:I

.field private mUniformLayoutModeMaxGap:I

.field protected mVisibleRange:I


# direct methods
.method public static synthetic $r8$lambda$ejQvIjCjc-4BioslxnZ_l0HDDWs(Lcom/miui/home/launcher/ScreenView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->lambda$createSeekPoint$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/miui/home/launcher/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 175
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    const/4 v0, 0x0

    .line 208
    sput-boolean v0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 460
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScreenView_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const p1, 0x7f080716

    .line 85
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 92
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 114
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 116
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditModeChanging:Z

    .line 117
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const v0, 0x7fffffff

    .line 118
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 119
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 120
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 123
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 v1, 0x1

    .line 124
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    const/4 v2, -0x1

    .line 125
    iput v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 126
    iput v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 127
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 128
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v3, 0x0

    .line 130
    iput-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 131
    iput-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 133
    iput v2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 134
    iput v2, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 137
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    .line 138
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 139
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 140
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 145
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 151
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 159
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 164
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 165
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 166
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 167
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    .line 171
    iput-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 186
    iput v2, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 189
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 194
    new-instance v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 195
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const v0, 0x3fa66666    # 1.3f

    .line 196
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 v0, 0x1f4

    .line 197
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 200
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 203
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 206
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIsLayoutInTop:Z

    .line 451
    new-instance v0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 v0, 0x0

    .line 506
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1209
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1703
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1735
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1977
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1978
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 1980
    new-instance v0, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;

    invoke-direct {v0}, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 1999
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    .line 2000
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/ScreenView$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ScreenView$3;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    aput-object v2, v1, p1

    .line 2001
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 2037
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "scroll_end"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollEndState:Lmiuix/animation/controller/AnimState;

    .line 2054
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->isOverlayDragStart:Z

    .line 461
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->initScreenView()V

    return-void

    nop

    :array_0
    .array-data 8
        0x3feeb851eb851eb8L    # 0.96
        0x3fd6666660000000L    # 0.3499999940395355
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ScreenView_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const p1, 0x7f080716

    .line 85
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 92
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 114
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 116
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditModeChanging:Z

    .line 117
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const p2, 0x7fffffff

    .line 118
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 119
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 120
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 123
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 p3, 0x1

    .line 124
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 126
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 127
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 128
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 131
    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 133
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 134
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 137
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    .line 138
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 139
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 140
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 145
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 151
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 159
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 164
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 165
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 166
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 167
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    .line 171
    iput-boolean p3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 186
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 189
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 194
    new-instance p2, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {p2}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 195
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const p2, 0x3fa66666    # 1.3f

    .line 196
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 p2, 0x1f4

    .line 197
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 200
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 203
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 206
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIsLayoutInTop:Z

    .line 451
    new-instance p2, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 p2, 0x0

    .line 506
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1209
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1703
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1735
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1977
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1978
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 1980
    new-instance p2, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;

    invoke-direct {p2}, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 1999
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    .line 2000
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-array p3, p3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v0, Lcom/miui/home/launcher/ScreenView$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ScreenView$3;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    aput-object v0, p3, p1

    .line 2001
    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 2037
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string p3, "scroll_end"

    invoke-direct {p2, p3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollEndState:Lmiuix/animation/controller/AnimState;

    .line 2054
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->isOverlayDragStart:Z

    .line 483
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->initScreenView()V

    return-void

    nop

    :array_0
    .array-data 8
        0x3feeb851eb851eb8L    # 0.96
        0x3fd6666660000000L    # 0.3499999940395355
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ScreenView;F)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->isOverScroll(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/ScreenView;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/ScreenView;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    return p0
.end method

.method static synthetic access$1402(Lcom/miui/home/launcher/ScreenView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditOriginalIndex:I

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/ScreenView;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->isLargeRTLOnePage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ScreenView;)Lcom/miui/home/launcher/util/FlingHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mFlingHelper:Lcom/miui/home/launcher/util/FlingHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ScreenView;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/ScreenView;)Lmiuix/animation/property/ViewProperty;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/ScreenView;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    return p1
.end method

.method private checkVerticalFling(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1731
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalFling(IFF)V

    :cond_0
    return-void
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .line 2311
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2312
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2313
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2314
    new-instance v1, Lcom/miui/home/launcher/ScreenView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    .line 2320
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x2

    .line 2321
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-object v0
.end method

.method private getChildCenterX(I)I
    .locals 0

    .line 899
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p1

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    return p1
.end method

.method private getScreenSnapX(I)I
    .locals 0

    .line 1137
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/IScreenLayoutRules;->getScreenSnapX(I)I

    move-result p0

    return p0
.end method

.method private initScreenView()V
    .locals 3

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 493
    sget v1, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    .line 494
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setMaximumSnapVelocity(I)V

    .line 496
    new-instance v0, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/util/MiuiScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mMiuiScaleDetector:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    const/4 v1, 0x0

    .line 497
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->setMinScaleFactor(F)V

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/launcher/ScreenView$FoldScreenLayoutRules;-><init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;Lcom/miui/home/launcher/ScreenView$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/ScreenView$PhoneScreenLayoutRules;-><init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    .line 499
    new-instance v0, Lcom/miui/home/launcher/util/FlingHelper;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/FlingHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mFlingHelper:Lcom/miui/home/launcher/util/FlingHelper;

    return-void
.end method

.method private isLargeRTLOnePage()Z
    .locals 2

    .line 2069
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLargeRtlLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOverScroll(F)Z
    .locals 2

    .line 2552
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2553
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2554
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_1

    cmpg-float p0, p1, v1

    if-gez p0, :cond_0

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

.method private synthetic lambda$createSeekPoint$0(Landroid/view/View;)V
    .locals 2

    .line 2316
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicator()Lcom/miui/home/launcher/ScreenView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointIndex(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    :cond_0
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1705
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1707
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 1708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1709
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mMiuiScaleDetector:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1712
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    .line 1713
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1714
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionBegin()V

    const/4 v0, 0x1

    .line 1715
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1717
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getVerticalGesture()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1719
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1720
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1739
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1741
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1742
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1744
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1745
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1746
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->recalculateDeltaX(F)F

    move-result v0

    .line 1747
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1748
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1750
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->recalculateOverScroll(F)F

    move-result p1

    .line 1751
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1753
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :goto_0
    return-void
.end method

.method private setLayoutTransition()V
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 536
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v3, v0, [F

    .line 537
    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    .line 538
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 539
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v0, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 540
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v0, v7, v8}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 541
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v7, 0xfa

    invoke-virtual {v3, v0, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    new-array v3, v0, [F

    .line 543
    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 544
    fill-array-data v3, :array_3

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v6

    aput-object v3, v4, v1

    .line 545
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 546
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 547
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v4, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-array v2, v0, [I

    .line 549
    fill-array-data v2, :array_4

    const-string v3, "left"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [I

    .line 550
    fill-array-data v3, :array_5

    const-string/jumbo v5, "top"

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v5, v0, [I

    .line 551
    fill-array-data v5, :array_6

    const-string v7, "right"

    invoke-static {v7, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v7, v0, [I

    .line 552
    fill-array-data v7, :array_7

    const-string v8, "bottom"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v6

    aput-object v3, v9, v1

    aput-object v5, v9, v0

    aput-object v7, v9, v4

    .line 554
    invoke-static {p0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 556
    iget-object v10, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v6, v9}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 557
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 558
    invoke-virtual {v9, v0}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    .line 557
    invoke-virtual {v9, v6, v10, v11}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v6

    aput-object v3, v8, v1

    aput-object v5, v8, v0

    aput-object v7, v8, v4

    .line 560
    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 562
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 563
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 564
    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v7

    .line 563
    invoke-virtual {v2, v1, v7, v8}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 565
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 566
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 567
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 568
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v6, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 570
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v6}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private showSlideBar()V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 788
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 790
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 791
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 793
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 3

    .line 1855
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1859
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    .line 1860
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    .line 1861
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXFlingDirection(F)I

    move-result v0

    .line 1862
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideSlideBar()V
    .locals 3

    .line 799
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 804
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/ScreenView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$2;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    .line 805
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private throwRemoveIndicatorException()V
    .locals 1

    .line 2206
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ScreenView doesn\'t support remove indicator directly."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 12

    .line 930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    .line 931
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 932
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 933
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 935
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge v4, v5, :cond_8

    add-int v5, v4, v0

    .line 936
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 937
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 939
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 940
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 945
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    and-int/lit8 v10, v9, 0x7

    and-int/lit8 v9, v9, 0x70

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    .line 963
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_0
    sub-int v10, v1, v7

    .line 960
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 953
    :cond_1
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v10, v1, v7

    .line 956
    div-int/lit8 v10, v10, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v10, v11

    :goto_2
    const/16 v11, 0x10

    if-eq v9, v11, :cond_5

    const/16 v11, 0x30

    if-eq v9, v11, :cond_4

    const/16 v11, 0x50

    if-eq v9, v11, :cond_3

    .line 978
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_3
    sub-int v9, v2, v8

    .line 975
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 968
    :cond_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_5
    sub-int v9, v2, v8

    .line 971
    div-int/lit8 v9, v9, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v6, v9, v6

    goto :goto_4

    :cond_6
    move v6, v3

    move v10, v6

    :goto_4
    if-nez p2, :cond_7

    .line 981
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_7

    int-to-float v6, p1

    .line 982
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_7
    add-int/2addr v10, v3

    add-int/2addr v7, v10

    add-int/2addr v8, v6

    .line 985
    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    move p1, v3

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updateScreenOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 926
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(I)V
    .locals 5

    .line 2326
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_3

    .line 2327
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2330
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2332
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2333
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-lt v2, p1, :cond_1

    .line 2335
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr v4, p1

    if-ge v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2336
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7

    .line 997
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 998
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 999
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 1000
    aget v3, v1, v2

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 1001
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlideWidth()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    .line 1003
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v5

    div-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    return-void

    :cond_0
    int-to-float v5, v3

    div-float v4, v5, v4

    const/high16 v6, 0x42400000    # 48.0f

    .line 1005
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1007
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v6, v0

    const/4 v0, 0x0

    if-gt v6, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 1012
    aget v6, v1, v0

    int-to-float v6, v6

    sub-float/2addr p1, v6

    aget v2, v1, v2

    aget v1, v1, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    mul-float/2addr p1, v5

    .line 1014
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v1

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 1016
    :goto_0
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v1, v0

    move v4, v5

    :cond_2
    int-to-float p1, v1

    add-float/2addr v4, p1

    .line 1020
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1021
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    float-to-int v4, v2

    invoke-virtual {v3, v1, v4}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setPosition(II)V

    sub-float/2addr v2, p1

    cmpl-float p1, v2, v5

    if-nez p1, :cond_3

    .line 1023
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1025
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1027
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1028
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2654
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollingOrSlidingState()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 2210
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    const/4 v0, -0x1

    .line 2211
    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 2138
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gez p2, :cond_0

    goto :goto_0

    .line 2143
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2146
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_1

    .line 2147
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    .line 2150
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 2151
    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 0

    .line 2285
    iget-boolean p0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return p0
.end method

.method public appendScreenTransitionType(I)V
    .locals 1

    .line 2371
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->appendTransitionType(I)V

    .line 2372
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2373
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 0

    return-void
.end method

.method protected calcScrollRightBound(II)I
    .locals 2

    .line 1103
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 1104
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result p1

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr p1, p0

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method protected calcScrollXByIndex(I)I
    .locals 0

    .line 1124
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result p0

    return p0
.end method

.method protected calcSnapGap()I
    .locals 1

    .line 1866
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected calibrateCurrentScreenIndex(I)I
    .locals 3

    .line 903
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 905
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_2

    .line 907
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v2, p1, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 910
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    .line 912
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p1

    goto :goto_2

    .line 913
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    .line 915
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/lit8 p1, p0, -0x1

    :cond_3
    :goto_2
    return p1
.end method

.method public cancelClosingAnimByLauncherScrolling()V
    .locals 1

    .line 1553
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenTransitionType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1554
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/LauncherScrollEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/LauncherScrollEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_0
    return-void
.end method

.method public cancelScroll()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1165
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 1166
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected checkMotionEventIsInUnInterceptView(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public computeScroll()V
    .locals 2

    .line 1214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1215
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->updateSlidePointPosition(I)V

    return-void
.end method

.method public correctCurrentScreen(Z)V
    .locals 2

    .line 1461
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getDefaultScreenIndex()I

    move-result v0

    .line 1462
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v1, :cond_1

    .line 1463
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result v0

    .line 1465
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_3

    .line 1466
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_3
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 1

    .line 598
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    iget-object p0, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1680
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1535
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 1536
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1540
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 1541
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    .line 1545
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1503
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 1504
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .line 1894
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 v0, 0x1

    .line 1895
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1896
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getAllScreens()[Landroid/view/View;
    .locals 3

    .line 2255
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2256
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2257
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    .line 2408
    iget-boolean p0, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    if-eqz p0, :cond_0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return p2
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 2073
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2074
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getChildScreenMeasureWidth()I
    .locals 0

    .line 1362
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    return p0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .line 2094
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .line 2087
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2090
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    return p0
.end method

.method public getDefaultScreenIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFixedGapModeStartPoint()I
    .locals 4

    .line 1332
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1333
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1334
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected getMaxVelocity()I
    .locals 0

    .line 2645
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return p0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 2127
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2130
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getScreenCount()I
    .locals 0

    .line 2065
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    return p0
.end method

.method protected getScreenIndexByPoint(II)I
    .locals 6

    .line 860
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    const/4 v0, -0x1

    if-gtz p2, :cond_0

    .line 861
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal Width: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    div-int p2, p1, p2

    .line 867
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_a

    .line 868
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 872
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 873
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    .line 874
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    .line 876
    :goto_1
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getChildCenterX(I)I

    move-result v4

    if-gt p1, v4, :cond_4

    return v2

    .line 880
    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getChildCenterX(I)I

    move-result v4

    if-le p1, v4, :cond_5

    return v1

    :cond_5
    if-eqz p2, :cond_6

    move v3, v0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-le v2, v1, :cond_9

    goto :goto_3

    :cond_7
    if-ge v2, v1, :cond_9

    .line 886
    :goto_3
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getChildCenterX(I)I

    move-result v4

    if-le p1, v4, :cond_8

    add-int v4, v2, v3

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/ScreenView;->getChildCenterX(I)I

    move-result v5

    if-gt p1, v5, :cond_8

    return v4

    :cond_8
    add-int/2addr v2, v3

    goto :goto_2

    :cond_9
    return v0

    .line 892
    :cond_a
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    mul-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    rem-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 895
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getScreenLayoutRules()Lcom/miui/home/launcher/IScreenLayoutRules;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    return-object p0
.end method

.method protected getScreenLayoutX(I)I
    .locals 12

    .line 1255
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1256
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result v0

    .line 1259
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v4, :cond_10

    if-eq v2, v5, :cond_7

    const/4 p1, 0x3

    if-eq v2, p1, :cond_5

    const/4 p1, 0x6

    if-eq v2, p1, :cond_4

    const/4 p1, 0x7

    if-eq v2, p1, :cond_3

    const/16 p1, 0x8

    if-eq v2, p1, :cond_1

    move v2, v3

    goto/16 :goto_8

    .line 1313
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-ge v1, v0, :cond_12

    .line 1315
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1316
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 1317
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 1318
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getFixedGapModeStartPoint()I

    move-result p1

    .line 1306
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    :goto_1
    add-int v2, p1, v1

    goto/16 :goto_8

    .line 1309
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int v6, v2, v4

    sub-int v6, v1, v6

    add-int/lit8 v7, v2, -0x1

    iget v8, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    add-int/2addr p1, v6

    rem-int v5, v0, v2

    add-int/2addr v4, v8

    mul-int/2addr v5, v4

    add-int/2addr p1, v5

    div-int v2, v0, v2

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    goto/16 :goto_8

    .line 1296
    :cond_5
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    div-int/2addr p1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    if-le v1, v4, :cond_6

    .line 1298
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 1300
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    int-to-float v4, v2

    mul-float/2addr v1, v4

    add-float/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int v4, v1, v0

    int-to-float v4, v4

    add-float/2addr p1, v4

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    mul-int/2addr v1, v2

    sub-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-float v1, v4

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_8

    .line 1271
    :cond_7
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 1272
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v2, v6

    .line 1273
    iget-object v6, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-ne p1, v6, :cond_8

    .line 1274
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    goto :goto_1

    .line 1275
    :cond_8
    iget-object v6, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-ne p1, v6, :cond_9

    .line 1276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    div-int/2addr v2, v5

    sub-int v2, v1, v2

    .line 1278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1279
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v5

    add-int v2, v1, p1

    goto/16 :goto_8

    .line 1282
    :cond_9
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v6, v6

    const v7, 0x3e4ccccd    # 0.2f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1283
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v7

    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez v8, :cond_a

    move v9, v1

    goto :goto_2

    :cond_a
    move v9, v4

    :goto_2
    sub-int/2addr v7, v9

    .line 1284
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-nez v9, :cond_b

    move v10, v1

    goto :goto_3

    :cond_b
    move v10, v4

    :goto_3
    sub-int/2addr v7, v10

    if-nez v8, :cond_c

    move v8, v1

    goto :goto_4

    :cond_c
    move v8, v2

    :goto_4
    if-nez v9, :cond_d

    move v9, v1

    goto :goto_5

    :cond_d
    move v9, v2

    .line 1287
    :goto_5
    iget v10, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    sub-int/2addr v10, v8

    sub-int/2addr v10, v9

    int-to-float v9, v10

    .line 1288
    iget v11, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v11, v11

    sub-float/2addr v9, v11

    sub-int/2addr v7, v4

    int-to-float v11, v7

    div-float/2addr v9, v11

    int-to-float v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1290
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    add-int/2addr v9, v11

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-eqz v11, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v2, p1

    div-int/2addr v2, v5

    goto :goto_6

    :cond_e
    move v2, v1

    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v9, v8

    mul-int/2addr v7, v6

    sub-int/2addr v10, v7

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr v10, p1

    div-int/2addr v10, v5

    add-int/2addr v9, v10

    .line 1292
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    move v1, v4

    :goto_7
    sub-int p1, v0, v1

    mul-int/2addr p1, v6

    add-int v2, v9, p1

    goto :goto_8

    .line 1261
    :cond_10
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt p1, v1, :cond_11

    .line 1262
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    div-int/2addr v1, v5

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    goto :goto_8

    .line 1265
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int v1, v0, v1

    mul-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    mul-int v6, v2, v4

    sub-int/2addr v1, v6

    div-int/2addr v1, v5

    add-int/2addr p1, v1

    rem-int v1, v0, v4

    mul-int/2addr v1, v2

    goto/16 :goto_1

    :cond_12
    :goto_8
    if-ne v2, v3, :cond_13

    .line 1326
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutRules:Lcom/miui/home/launcher/IScreenLayoutRules;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/IScreenLayoutRules;->getLayoutX(I)I

    move-result v2

    .line 1328
    :cond_13
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    add-int/2addr v2, p0

    return v2
.end method

.method protected getScreenLayoutY(I)I
    .locals 4

    .line 1338
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 1339
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    if-eqz v1, :cond_0

    return v0

    .line 1341
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1347
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mIsLayoutInTop:Z

    if-eqz v1, :cond_2

    .line 1348
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1349
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1350
    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    .line 1351
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p0

    goto :goto_0

    .line 1354
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/2addr p1, v3

    add-int/2addr v0, p1

    :cond_3
    :goto_0
    return v0
.end method

.method protected getScreenScrollX(I)I
    .locals 2

    .line 1128
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    return p0

    .line 1130
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_1

    .line 1131
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    neg-int p0, p0

    return p0

    .line 1133
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result p1

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    sub-int/2addr p1, p0

    return p1
.end method

.method protected getScreenSnapDuration()I
    .locals 0

    .line 1970
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return p0
.end method

.method public getScreenSnapMaxDuration()I
    .locals 1

    .line 227
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    int-to-float p0, p0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getScreenTransitionType()I
    .locals 0

    .line 2360
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getTransitionType()I

    move-result p0

    return p0
.end method

.method protected getScrollLeftBound()I
    .locals 0

    .line 2589
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    return p0
.end method

.method protected getScrollRightBound()I
    .locals 0

    .line 2593
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    return p0
.end method

.method protected getScrollStartX()I
    .locals 0

    .line 2445
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    return p0
.end method

.method protected getSnapBound()[I
    .locals 5

    .line 1040
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1041
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_0
    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    sub-int/2addr v4, v0

    aput v4, v2, v3

    .line 1044
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result p0

    add-int/2addr p0, v0

    aput p0, v2, v1

    return-object v2
.end method

.method public getSnapDirection()I
    .locals 0

    .line 1141
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected getSnapDuration(II)I
    .locals 1

    .line 1960
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p1, v0

    .line 1961
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapMaxDuration()I

    move-result p0

    .line 1960
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lez p2, :cond_0

    int-to-float p1, p0

    int-to-float p2, p2

    const v0, 0x451c4000    # 2500.0f

    div-float/2addr p2, v0

    div-float/2addr p1, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method protected getSnapOverScroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getSnapToScreenIndex(III)I
    .locals 0

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    .line 922
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method protected getSnapUnitIndex(I)I
    .locals 1

    .line 1888
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, p1

    .line 1889
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p1, v0

    .line 1890
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method

.method public getTouchState()I
    .locals 0

    .line 1549
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return p0
.end method

.method public getUniformLayoutModeCurrentGap()I
    .locals 0

    .line 1231
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    return p0
.end method

.method public getUniformLayoutModeMaxGap()I
    .locals 0

    .line 1235
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    return p0
.end method

.method public getVisibleRange()I
    .locals 0

    .line 2134
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    return p0
.end method

.method getVisualPosition(I)I
    .locals 3

    .line 1239
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1250
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    :cond_1
    return p1

    .line 1241
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1242
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt v0, v2, :cond_3

    .line 1243
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    return p0

    .line 1245
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int/2addr v2, p0

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr p0, v0

    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    return p0

    :cond_5
    return p1
.end method

.method protected interceptDownWhenScrolling()Z
    .locals 2

    .line 1604
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1605
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v0, "Scroll is not update, abort the event"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isChangingCellCount()Z
    .locals 0

    .line 211
    sget-boolean p0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return p0
.end method

.method public isDragStartOverlay()Z
    .locals 0

    .line 2057
    iget-boolean p0, p0, Lcom/miui/home/launcher/ScreenView;->isOverlayDragStart:Z

    return p0
.end method

.method protected isIndexInCurrentScreen(I)Z
    .locals 0

    .line 1512
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isScrollable()Z
    .locals 4

    .line 1145
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1150
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_3

    .line 1151
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/2addr v0, v3

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    if-ge v0, p0, :cond_3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public isScrolling()Z
    .locals 1

    .line 1161
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollingOrSlidingState()Z
    .locals 2

    .line 2649
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected isSpringOverScroll()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1366
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1367
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    .line 1368
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 2660
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2666
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2668
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 2670
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 2671
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 2673
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    return v1

    :cond_2
    cmpl-float v4, v2, v3

    if-nez v4, :cond_3

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_9

    .line 2677
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    cmpg-float p1, v2, v3

    if-ltz p1, :cond_6

    cmpg-float p1, v0, v3

    if-gez p1, :cond_5

    goto :goto_1

    :cond_4
    if-gtz v4, :cond_6

    cmpl-float p1, v0, v3

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, v5

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v1

    :goto_2
    if-eqz p1, :cond_7

    .line 2681
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_3

    .line 2683
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_8

    .line 2685
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 2686
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v1

    :cond_8
    return v5

    .line 2693
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2604
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2605
    const-class p0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2610
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2611
    const-class v0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2612
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2613
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 2614
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2616
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p0

    if-ge v0, p0, :cond_2

    const/16 p0, 0x2000

    .line 2617
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 1657
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 1615
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 1616
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1618
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1660
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "oninterceput up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1662
    invoke-virtual {p0, p1, v5}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1623
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1624
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mMiuiScaleDetector:Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/MiuiScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1625
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1626
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1628
    iput-boolean v5, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    .line 1629
    iput-boolean v5, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    .line 1632
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    .line 1635
    iput-boolean v5, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 1637
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIntercept:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1639
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1640
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "not intercept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1647
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->interceptDownWhenScrolling()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkMotionEventIsInUnInterceptView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1648
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1649
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "onIntercept on Scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1666
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v2, v0, :cond_7

    .line 1667
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1669
    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentGestureFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mTouchState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    if-nez p1, :cond_9

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    :cond_9
    :goto_1
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1472
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/miui/launcher/views/LauncherViewGroup;->doSetFrame(IIII)Z

    .line 1474
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1476
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    move-result p2

    .line 1480
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_3

    .line 1483
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 1486
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_2

    .line 1487
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutY(I)I

    move-result p5

    .line 1488
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v0

    .line 1490
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p5

    .line 1489
    invoke-virtual {p4, v0, p5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1491
    iget-boolean p5, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditModeChanging:Z

    if-eqz p5, :cond_2

    .line 1492
    check-cast p4, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p4}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/CellLayout;->getEditAnimContoller()Lcom/miui/home/launcher/anim/EditAnimController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/anim/EditAnimController;->triggerAnimationStart()V

    add-int/lit8 p4, p1, -0x1

    if-ne p3, p4, :cond_2

    .line 1494
    iput-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditModeChanging:Z

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 1384
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1387
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    .line 1388
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1390
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1392
    invoke-static {p1, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1394
    invoke-static {p2, v8, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1397
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1398
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1399
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1406
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1407
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1410
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1409
    invoke-static {p1, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1413
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1411
    invoke-static {p2, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1416
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 1417
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1418
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1420
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1421
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1424
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 1425
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 1428
    invoke-static {v2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    .line 1429
    invoke-static {v3, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 1427
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-lez v0, :cond_6

    .line 1432
    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 1433
    iput v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 1434
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 1435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 1437
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez p2, :cond_5

    .line 1438
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    goto :goto_3

    :cond_2
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 1441
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    move p1, v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1442
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    if-ge p1, p2, :cond_5

    .line 1443
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1444
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 1445
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1448
    :cond_3
    div-int/2addr p1, p2

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1449
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-ne p2, v4, :cond_5

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    if-le p2, p1, :cond_5

    .line 1450
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p2, v5

    .line 1451
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    goto :goto_4

    .line 1439
    :cond_4
    :goto_3
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p2, v0

    div-int/2addr p1, p2

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1455
    :cond_5
    :goto_4
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOverScrollRatio(F)V

    .line 1456
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->updateScreenOffset()V

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 2352
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: getScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTouchState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isScrolling() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollingOrSlidingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method

.method protected onPinching(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onPinchingEnd(F)V
    .locals 0

    return-void
.end method

.method protected onPushGesture(I)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2514
    check-cast p1, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 2515
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2516
    iget p1, p1, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2517
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2507
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2508
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    iput p0, v0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 4

    .line 509
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 511
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1827
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1829
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1830
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    .line 1831
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1841
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 1842
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p2

    .line 1843
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_0

    .line 1846
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1848
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 1851
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1835
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    .line 1836
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1837
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 1050
    iget p1, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScrollWholeScreen(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1763
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1765
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    if-eqz v0, :cond_1

    .line 1766
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string p1, "onTouchEvent: return true, because cell is changing"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1770
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_2

    .line 1771
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1774
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_1

    .line 1807
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1809
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1810
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_c

    if-nez v0, :cond_4

    move v2, v1

    .line 1815
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1816
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1817
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 1789
    :cond_5
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_6

    .line 1790
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1791
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1793
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    .line 1795
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1780
    :cond_7
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1781
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1784
    :cond_8
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_c

    .line 1785
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1798
    :cond_9
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_a

    .line 1799
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "snapByVelocity"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    goto :goto_0

    .line 1802
    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1804
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1776
    :cond_b
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->setDragStartOverlay(Z)V

    .line 1822
    :cond_c
    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    return v1
.end method

.method protected onVerticalFling(IFF)V
    .locals 0

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 2197
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 2198
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    goto :goto_0

    .line 2200
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 2202
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2623
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2634
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 2635
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return v0

    .line 2628
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 2629
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected recalculateDeltaX(F)F
    .locals 0

    return p1
.end method

.method protected recalculateOverScroll(F)F
    .locals 8

    .line 2559
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isSpringOverScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2561
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2562
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2563
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 2564
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->isOverScroll(F)Z

    move-result p0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v2

    const/4 v3, 0x0

    if-lez p0, :cond_0

    sub-float v4, p1, v2

    goto :goto_0

    :cond_0
    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    sub-float v4, v1, p1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    int-to-float v0, v0

    div-float/2addr v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2570
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x41500000    # 13.0f

    mul-float/2addr v5, v4

    mul-float v6, v5, v4

    mul-float/2addr v4, v6

    const/high16 v7, 0x42960000    # 75.0f

    div-float/2addr v4, v7

    const/high16 v7, 0x41c80000    # 25.0f

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    mul-float/2addr v4, v0

    if-lez p0, :cond_2

    add-float v3, v4, v2

    goto :goto_1

    :cond_2
    cmpg-float p0, p1, v1

    if-gez p0, :cond_3

    neg-float p0, v4

    add-float v3, p0, v1

    :cond_3
    :goto_1
    return v3

    :cond_4
    return p1
.end method

.method public refreshScrollBound()Z
    .locals 14

    .line 1059
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v0

    .line 1060
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v1

    .line 1061
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1062
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1063
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1066
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v5, v6, :cond_0

    const/4 v7, 0x6

    if-ne v5, v7, :cond_2

    .line 1068
    :cond_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v4, v5

    add-int/2addr v4, v6

    mul-int/2addr v4, v5

    sub-int/2addr v4, v6

    goto :goto_0

    :cond_1
    move v13, v4

    move v4, v2

    move v2, v13

    .line 1072
    :cond_2
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v5, v5

    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    neg-int v7, v5

    .line 1074
    iput v7, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    .line 1075
    iget-boolean v7, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v7, :cond_3

    .line 1076
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result v7

    add-int/2addr v7, v5

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_1

    .line 1077
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1078
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_1

    .line 1080
    :cond_4
    invoke-virtual {p0, v2, v5}, Lcom/miui/home/launcher/ScreenView;->calcScrollRightBound(II)I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    .line 1082
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v5, :cond_8

    .line 1083
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v13, v4

    move v4, v2

    move v2, v13

    .line 1088
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v5

    move v7, v3

    :goto_3
    if-ge v7, v5, :cond_8

    .line 1090
    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1092
    iget-object v9, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    const v10, 0x7f10045d

    new-array v11, v6, [Ljava/lang/Object;

    add-int/lit8 v12, v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1093
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lt v7, v2, :cond_6

    if-gt v7, v4, :cond_6

    move v9, v3

    goto :goto_4

    :cond_6
    const/16 v9, 0x8

    .line 1094
    :goto_4
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1098
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v2

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    if-ne v1, v0, :cond_9

    .line 1099
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result p0

    if-ge v0, p0, :cond_a

    :cond_9
    move v3, v6

    :cond_a
    return v3
.end method

.method public removeAllScreens()V
    .locals 2

    .line 2248
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2249
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->removeScreensInLayout(II)V

    .line 2250
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 1

    .line 2215
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2216
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2220
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    .line 2221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    .line 2217
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view passed through the parameter must be indicator."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOutAllScreens()[Landroid/view/View;
    .locals 3

    .line 2263
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2264
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2265
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2267
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-object v0
.end method

.method public removeScreen(I)V
    .locals 2

    .line 2225
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2229
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne p1, v0, :cond_1

    .line 2230
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 2231
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    .line 2232
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2234
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 2236
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 2242
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(I)V

    .line 2244
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    .line 2226
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view specified by the index must be a screen."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeScreenTransitionType(I)V
    .locals 1

    .line 2377
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->removeTransitionType(I)Z

    .line 2378
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2379
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2380
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    :cond_0
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1

    if-ltz p1, :cond_2

    .line 2272
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2273
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2275
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 2276
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(II)V

    .line 2278
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 2159
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2162
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 2178
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2179
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2181
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 2166
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 2167
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2169
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    add-int v0, p1, p2

    .line 2189
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2190
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2192
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    add-int v0, p1, p2

    .line 2172
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2173
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2175
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1517
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1518
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1519
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->isIndexInCurrentScreen(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1520
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 p0, 0x1

    return p0

    .line 1525
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public resetScreenScrollRange()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    return-void
.end method

.method protected scaleBegin()V
    .locals 0

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .line 1175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1176
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1177
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1178
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1179
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v1, v3, :cond_1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1181
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    if-le v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 1182
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1185
    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    float-to-int v1, v1

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1188
    :cond_3
    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-ne v0, p2, :cond_6

    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    if-nez p2, :cond_6

    .line 1189
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 1190
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int v1, p1, v0

    add-int/2addr p2, v1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 1191
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p2

    .line 1192
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    aget v3, p2, v3

    if-lt v1, v3, :cond_4

    if-ge p1, v0, :cond_5

    :cond_4
    aget p2, p2, v2

    if-gt v1, p2, :cond_6

    if-gt p1, v0, :cond_6

    :cond_5
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int/2addr p2, p1

    .line 1194
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v0

    div-float/2addr p2, v0

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    .line 1195
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->onPushGesture(I)V

    :cond_6
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 3

    .line 1108
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    .line 1111
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1112
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 1113
    rem-int v0, p1, v0

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1116
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calcScrollXByIndex(I)I

    move-result p1

    .line 1117
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 1118
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    :cond_3
    const/4 v0, 0x0

    .line 1120
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1684
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1687
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1688
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1690
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v6

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 1691
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1694
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1695
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 1700
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    .line 2293
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 2107
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 2108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2110
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 2114
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 2115
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 2

    .line 2119
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    .line 2120
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v0, -0x1

    .line 2121
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 2122
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentScreenInner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDragStartOverlay(Z)V
    .locals 0

    .line 2061
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->isOverlayDragStart:Z

    return-void
.end method

.method public setEnableReverseDrawingMode(Z)V
    .locals 0

    .line 2402
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 2403
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    return-void
.end method

.method public setFixedGap(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSeekBarVisibility(I)V

    .line 818
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setLayoutScreensSeamless(Z)V
    .locals 0

    .line 2697
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 2303
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2304
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2306
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    .line 1035
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 1036
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOvershootTension(F)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    return-void
.end method

.method public setPushGestureEnabled(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenLayoutMode(IZ)V

    return-void
.end method

.method public setScreenLayoutMode(IZ)V
    .locals 1

    .line 841
    iput-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mIsLayoutInTop:Z

    .line 842
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq p2, p1, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const v0, 0x7fffffff

    .line 844
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 847
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditOriginalIndex:I

    .line 849
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-nez p2, :cond_2

    if-eq p1, v0, :cond_3

    :cond_2
    if-ne p2, v0, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/4 p2, 0x1

    .line 851
    iput-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mFoldEditModeChanging:Z

    .line 853
    :cond_4
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 854
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_5
    return-void
.end method

.method public setScreenScrollRange(II)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftIndex:I

    .line 240
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightIndex:I

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return-void
.end method

.method public setScreenTransitionType(I)I
    .locals 1

    .line 2364
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->setTransitionType(I)I

    move-result p1

    .line 2365
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2366
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    return p1
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    .line 582
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->setLayoutTransition()V

    .line 583
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 584
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setScreenIndicatorLayoutMode(I)V

    .line 585
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimationCacheEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 592
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 593
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez p0, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 3

    .line 520
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    if-eq v0, p1, :cond_1

    .line 521
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 522
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 527
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    const v0, 0x7f0806b2

    const v1, 0x7f0806b3

    const/4 v2, 0x0

    .line 757
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 2

    .line 765
    iput-boolean p4, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 767
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SlideBar;

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;-><init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    .line 769
    new-instance p2, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;

    invoke-direct {p2, p0, p4}, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;-><init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 770
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAnimationCacheEnabled(Z)V

    .line 771
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 773
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 776
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p1, :cond_2

    .line 777
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 778
    iput-object p4, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez p0, :cond_0

    return-void

    .line 832
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1559
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    if-ne p2, v1, :cond_0

    .line 1560
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 1561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1562
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelClosingAnimByLauncherScrolling()V

    .line 1564
    :cond_0
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 1566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1567
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    const/4 p1, -0x1

    .line 1568
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1569
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1570
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1571
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionEnd()V

    const/4 p1, 0x0

    .line 1572
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1576
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1580
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    if-eqz v0, :cond_4

    .line 1581
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1585
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1586
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1589
    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_5

    .line 1590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1591
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    .line 1595
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1596
    iget-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p1, :cond_6

    if-ne p2, v1, :cond_6

    .line 1598
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    .line 1599
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    :cond_6
    return-void
.end method

.method public setUniformLayoutModeMaxGap(I)Z
    .locals 2

    .line 1220
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1221
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    if-eq v0, p1, :cond_0

    .line 1222
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 1223
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1374
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1376
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected skipNextAutoLayoutAnimation()V
    .locals 3

    .line 1201
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1202
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1203
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v1, :cond_0

    .line 1204
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skipToEnd()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1170
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 4

    .line 1870
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->calcSnapGap()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1872
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1873
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1872
    :cond_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1874
    invoke-virtual {p0, p2, p1, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 1876
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1877
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1876
    :goto_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1878
    invoke-virtual {p0, p2, p1, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1880
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p2, p1, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_1

    .line 1882
    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getSnapUnitIndex(I)I

    move-result p1

    const/4 p2, 0x0

    .line 1883
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    :goto_1
    return-void
.end method

.method public snapToScreen(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1900
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p0

    return p0
.end method

.method protected snapToScreen(IIZ)I
    .locals 6

    .line 1915
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 1918
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1919
    iget-boolean p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz p3, :cond_1

    .line 1920
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    goto :goto_0

    .line 1922
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p3

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1927
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1929
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p3

    .line 1930
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 1932
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v4, v1, v3

    add-int/lit8 v5, v3, -0x1

    if-eq v4, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 1933
    rem-int v3, v1, v3

    sub-int/2addr v4, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1936
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->calcScrollXByIndex(I)I

    move-result v1

    .line 1937
    aget v3, p3, v0

    aget v4, p3, v2

    .line 1938
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result v5

    add-int/2addr v1, v5

    .line 1937
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1939
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    if-nez v3, :cond_4

    const/4 p1, -0x1

    .line 1941
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    return v0

    .line 1944
    :cond_4
    aget v4, p3, v0

    if-eq v1, v4, :cond_6

    aget p3, p3, v2

    if-ne v1, p3, :cond_5

    goto :goto_1

    .line 1947
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    goto :goto_2

    .line 1945
    :cond_6
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    .line 1949
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/ScreenView;->getSnapDuration(II)I

    move-result p1

    .line 1950
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->beforeSnapToScreen(I)V

    .line 1951
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    neg-int p2, p2

    invoke-virtual {p0, p3, v3, p2}, Lcom/miui/home/launcher/ScreenView;->startScroll(III)V

    .line 1952
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    return p1
.end method

.method public snapToScreen(Lcom/miui/home/launcher/CellScreen;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public startScroll(III)V
    .locals 6

    const v4, 0x3f75c28f    # 0.96f

    const v5, 0x3eb851ec    # 0.36f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1974
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/ScreenView;->startScroll(IIIFF)V

    return-void
.end method

.method public startScroll(IIIFF)V
    .locals 2

    .line 2040
    iget-object p4, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAllowScrollAnimStart: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isDragStartOverlay()Z

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isDragStartOverlay()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p1

    .line 2044
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float p1, p1

    .line 2045
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 2046
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollEndState:Lmiuix/animation/controller/AnimState;

    iget-object p4, p0, Lcom/miui/home/launcher/ScreenView;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v0, p2

    invoke-virtual {p1, p4, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 2047
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->animConfig:Lmiuix/animation/base/AnimConfig;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    .line 2048
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    .line 2049
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget-object p4, p0, Lcom/miui/home/launcher/ScreenView;->mScrollEndState:Lmiuix/animation/controller/AnimState;

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object p5, p0, Lcom/miui/home/launcher/ScreenView;->animConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p5, p1, p3

    .line 2050
    invoke-interface {p2, p4, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 2051
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startScroll:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", this: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1508
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public superRemoveViewAt(I)V
    .locals 0

    .line 2185
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method protected superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1529
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 11

    .line 2385
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    return-void

    .line 2388
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2389
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v2, v0, v2

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 2392
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    sub-float/2addr v3, v2

    div-float v5, v3, v0

    .line 2393
    iget-object v4, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 2394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v0, v1

    move-object v9, p1

    move-object v10, p0

    .line 2393
    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 2396
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateChildStaticTransformation error,childW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
