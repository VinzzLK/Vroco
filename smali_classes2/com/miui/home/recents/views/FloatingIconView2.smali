.class public final Lcom/miui/home/recents/views/FloatingIconView2;
.super Landroid/view/View;
.source "FloatingIconView.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;
.implements Lcom/miui/home/recents/FloatingIconInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;,
        Lcom/miui/home/recents/views/FloatingIconView2$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingIconView.kt\ncom/miui/home/recents/views/FloatingIconView2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1303:1\n1#2:1304\n211#3,2:1305\n*S KotlinDebug\n*F\n+ 1 FloatingIconView.kt\ncom/miui/home/recents/views/FloatingIconView2\n*L\n1127#1:1305,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/views/FloatingIconView2$Companion;

.field private static volatile mInstanceNum:I

.field private static final sNotUseAdaptiveIconPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sUseForegroundClipPathPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ALPHA_ICON_FILL:I

.field private final ALPHA_WIDGET_FILL:I

.field private DEFAULT_SHADE_COLOR:I

.field private final DRAWABLE_ALPHA_FULL:I

.field private TAG:Ljava/lang/String;

.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private hasInit:Z

.field private mAllowTouch:Z

.field private mAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mAppScreenShotBitmap:Landroid/graphics/Bitmap;

.field private mAppScreenShotRect:Landroid/graphics/Rect;

.field private mBackGroundClipBound:Landroid/graphics/RectF;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBackgroundLayerBounds:Landroid/graphics/Rect;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBitmapEraser:Landroid/graphics/Paint;

.field private final mCachedBitmap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClipPath:Landroid/graphics/Path;

.field private final mCurRectF:Landroid/graphics/RectF;

.field private mCurTime:J

.field private mCurrentProgress:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private final mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

.field private mFloatAnimEnded:Z

.field private mFloatingIconViewScale:F

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private final mForegroundClipPath:Landroid/graphics/Path;

.field private mForegroundLayerBounds:Landroid/graphics/Rect;

.field private mForegroundLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightDiffBetweenImageAndImageView:I

.field private mIsAdaptiveIcon:Z

.field private mIsBigIcon:Z

.field private mIsClamp:Z

.field private mIsDrawIcon:Z

.field private mIsFoldLargeScreenLandscape:Z

.field private mIsOpening:Z

.field private mIsStatusIcon:Z

.field private mIsUseForegroundClipPath:Z

.field private mIsVerticalClip:Z

.field private mIsVerticalShape:Z

.field private mIsWidget:Z

.field private final mLastRectF:Landroid/graphics/RectF;

.field private mLastTime:J

.field private final mOriginalBackgroundBounds:Landroid/graphics/Rect;

.field private final mOriginalBounds:Landroid/graphics/Rect;

.field private final mRealBackgroundBounds:Landroid/graphics/Rect;

.field private final mScaleMatrixForClipPath:Landroid/graphics/Matrix;

.field private final mScreenRectF:Landroid/graphics/RectF;

.field private final mShadeClipPath:Landroid/graphics/Path;

.field private mShadePaint:Landroid/graphics/Paint;

.field private mShortcutIconImageViewRect:Landroid/graphics/RectF;

.field private mStartSpringAnim:Z

.field private mStartedMamlAnimation:Z

.field private mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

.field private mTaskCornerRadius:F

.field private final mTransformBounds:Landroid/graphics/Rect;

.field private mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/drawable/VectorDrawable;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSurfaceShade:Z

.field private mWidthDiffBetweenImageAndImageView:I

.field private mWinBgPaint:Landroid/graphics/Paint;

.field private final recycleRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$LVDGwkt2V4P4XA9Hqj3iCGSdAVY()V
    .locals 0

    invoke-static {}, Lcom/miui/home/recents/views/FloatingIconView2;->onAnimationEnd$lambda-3()V

    return-void
.end method

.method public static synthetic $r8$lambda$PjF7u9FR_UHH8LjVqUXDLDW7pSI(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->prepareBackAnim$lambda-1(Lcom/miui/home/recents/views/FloatingIconView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e0wLlsA0kPK5YhZoSIzsp3IpfaU(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->changeToBelowBlurView$lambda-5(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$emvotrBmwGT0uBUtkK4hxm_Qdf0(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->update$lambda-0(Lcom/miui/home/recents/views/FloatingIconView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jrIqJbPZivqUffQ8J94zYLsYYyE(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->changeToAboveBlurView$lambda-7(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2IXl8LtEqDzGYwBrFSKrnzB7WI(Lcom/miui/home/recents/views/FloatingIconView2;Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView2;->notifyBackHome$lambda-2(Lcom/miui/home/recents/views/FloatingIconView2;Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$khDOYp6XZXaHaEVvuTtOBRvx-b4(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable$lambda-11(Lcom/miui/home/recents/views/FloatingIconView2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/home/recents/views/FloatingIconView2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView2;->Companion:Lcom/miui/home/recents/views/FloatingIconView2$Companion;

    .line 1213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView2;->sTmpRect:Landroid/graphics/Rect;

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView2;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    .line 1215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/home/recents/views/FloatingIconView2;->sNotUseAdaptiveIconPkgs:Ljava/util/ArrayList;

    const-string v2, "com.taobao.taobao"

    .line 1220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.starbucks.cn"

    .line 1222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "tech.echoing.kuril"

    .line 1223
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.mf.uam"

    .line 1224
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.jkchess"

    .line 1225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xverse.aistory"

    .line 1226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->_$_findViewCache:Ljava/util/Map;

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "FloatingIconView2"

    .line 72
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->TAG:Ljava/lang/String;

    const/16 p1, 0xff

    .line 73
    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DRAWABLE_ALPHA_FULL:I

    const/16 v0, 0x96

    .line 74
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->ALPHA_WIDGET_FILL:I

    .line 75
    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->ALPHA_ICON_FILL:I

    .line 88
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    .line 93
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mRealBackgroundBounds:Landroid/graphics/Rect;

    .line 100
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    .line 109
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundClipPath:Landroid/graphics/Path;

    const-wide/16 v0, -0x1

    .line 111
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastTime:J

    .line 112
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurTime:J

    .line 113
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastRectF:Landroid/graphics/RectF;

    .line 114
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurRectF:Landroid/graphics/RectF;

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayerBounds:Landroid/graphics/Rect;

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    .line 119
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScreenRectF:Landroid/graphics/RectF;

    .line 120
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBackgroundBounds:Landroid/graphics/Rect;

    .line 121
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsDrawIcon:Z

    const/4 p1, -0x1

    .line 135
    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DEFAULT_SHADE_COLOR:I

    .line 137
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadeClipPath:Landroid/graphics/Path;

    .line 138
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    .line 140
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mWinBgPaint:Landroid/graphics/Paint;

    .line 142
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    .line 143
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotRect:Landroid/graphics/Rect;

    .line 146
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DEFAULT_SHADE_COLOR:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->setTAG(Ljava/lang/String;)V

    .line 1079
    new-instance p1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/views/FloatingIconView2;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getSNotUseAdaptiveIconPkgs$cp()Ljava/util/ArrayList;
    .locals 1

    .line 69
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView2;->sNotUseAdaptiveIconPkgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static final changeToAboveBlurView$lambda-7(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFloatingIconViewParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getBackgroundBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 645
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    invoke-direct {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->removeRecycleCallback()V

    add-int/lit8 p0, p0, 0x1

    .line 647
    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private static final changeToBelowBlurView$lambda-5(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    .line 598
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFloatingIconViewParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getBackgroundBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 600
    sget-object v1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getCurrentWindowElement()Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 601
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 602
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 603
    instance-of p0, v1, Lcom/miui/home/recents/views/FloatingIconView2;

    if-eqz p0, :cond_4

    .line 604
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ge p0, v2, :cond_1

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 607
    invoke-direct {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->removeRecycleCallback()V

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 614
    :cond_1
    invoke-direct {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->removeRecycleCallback()V

    .line 615
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "changeToBelowBlurView: already below current"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-le v2, p0, :cond_3

    .line 620
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 621
    invoke-direct {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->removeRecycleCallback()V

    .line 622
    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 627
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "changeToBelowBlurView: already below blur"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private final createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 750
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 751
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 752
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 750
    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 754
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 757
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 759
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p0
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 980
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 983
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 984
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 986
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 987
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    .line 985
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 989
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v1, :cond_2

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 992
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mHeightDiffBetweenImageAndImageView:I

    invoke-virtual {v2, p1, v3, v1, p0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/widget/FrameLayout$LayoutParams;I)Z

    .line 994
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private final drawBadge(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1038
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1041
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz v1, :cond_1

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.graphics.drawable.BadgeDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 1048
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 1047
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1049
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1050
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1053
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawCoverForeground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 999
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadeClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1000
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private final drawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1005
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1006
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 1007
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1009
    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsUseForegroundClipPath:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundClipPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1010
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1012
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_2

    .line 1014
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v2, v3

    .line 1019
    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1021
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1022
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 1020
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1024
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1025
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 1028
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1030
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1031
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1032
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1034
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private final drawWinBackForeground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 963
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadeClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 964
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 966
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 969
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 970
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotRect:Landroid/graphics/Rect;

    .line 971
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    .line 972
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mWinBgPaint:Landroid/graphics/Paint;

    .line 968
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 974
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private final fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "fillDrawable somethings wrong. drawable is null"

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 370
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->isNotFill()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fillDrawable isNotFill,return preDrawable"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 376
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 377
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    .line 378
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, v1, v2}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_5

    .line 379
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 381
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/JNIHelper;->getInstance()Lcom/miui/home/launcher/common/JNIHelper;

    move-result-object v5

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getFillAlpha()I

    move-result v6

    invoke-virtual {v5, v3, v1, v2, v6}, Lcom/miui/home/launcher/common/JNIHelper;->processBitmap(Landroid/graphics/Bitmap;III)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setIsCutting(Z)V

    :cond_4
    return-object v4

    .line 385
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillDrawable return preDrawable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillDrawable fail exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",return preDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private final forceUseBadgeAlpha()Z
    .locals 0

    .line 320
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 321
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 322
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isNormalMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getBadgeAlpha(FZZ)I
    .locals 6

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    .line 349
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/FloatingIconView2;->map(FFFFF)F

    move-result p1

    const/4 p2, 0x1

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 350
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DRAWABLE_ALPHA_FULL:I

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_0
    if-eqz p3, :cond_1

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/views/FloatingIconView2;->map(FFFFF)F

    move-result p1

    .line 353
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DRAWABLE_ALPHA_FULL:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final getFillAlpha()I
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsWidget:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsStatusIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->ALPHA_ICON_FILL:I

    goto :goto_1

    .line 397
    :cond_1
    :goto_0
    iget p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->ALPHA_WIDGET_FILL:I

    :goto_1
    return p0
.end method

.method private final getIconTransparentEdge()I
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    .line 449
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 1191
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1193
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 1194
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1195
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 1196
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    .line 1198
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_1

    .line 1199
    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final isAllAppsShowing()Z
    .locals 0

    .line 413
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isCuttingIcon()Z
    .locals 3

    .line 326
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isCrop()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v2

    .line 332
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    if-eqz v0, :cond_3

    return v1

    .line 335
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->useCornerRadiusEstimate()Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private final isDisableBackAnimOnK2()Z
    .locals 2

    .line 418
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    .line 419
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "venus"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.shop"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isNotFill()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsClamp:Z

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

.method private final map(FFFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    sub-float p0, p5, p4

    mul-float/2addr p1, p0

    add-float/2addr p1, p4

    .line 361
    invoke-static {p1, p4, p5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    return p0
.end method

.method private final notifyBackHome(Ljava/lang/String;F)V
    .locals 2

    .line 547
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/views/FloatingIconView2;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final notifyBackHome$lambda-2(Lcom/miui/home/recents/views/FloatingIconView2;Ljava/lang/String;F)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 552
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 553
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    .line 555
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    .line 559
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 561
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 562
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 566
    invoke-static {v2, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p2

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p2

    .line 564
    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 569
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final onAnimationEnd$lambda-3()V
    .locals 0

    return-void
.end method

.method private final prepareBackAnim()V
    .locals 2

    .line 531
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/views/FloatingIconView2;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final prepareBackAnim$lambda-1(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_1

    .line 535
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    goto :goto_0

    .line 536
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 537
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v1

    .line 539
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 541
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private static final recycleRunnable$lambda-11(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1082
    sget p0, Lcom/miui/home/recents/views/FloatingIconView2;->mInstanceNum:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/miui/home/recents/views/FloatingIconView2;->mInstanceNum:I

    :cond_0
    return-void
.end method

.method private final recycleView(Z)V
    .locals 8

    .line 1090
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycleView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x8

    .line 1093
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->setVisibility(I)V

    const/4 v1, 0x1

    .line 1094
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->setIsDrawIcon(Z)V

    const-wide/16 v1, -0x1

    .line 1095
    iput-wide v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastTime:J

    .line 1096
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1097
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    .line 1098
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsUseForegroundClipPath:Z

    const/4 v2, 0x0

    .line 1099
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1100
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1101
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1102
    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1103
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView2;->setAlpha(F)V

    .line 1104
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->hasInit:Z

    .line 1105
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 1107
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1109
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    .line 1110
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 1111
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1112
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 1113
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DRAWABLE_ALPHA_FULL:I

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setAlpha(I)V

    .line 1114
    :cond_1
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 1115
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadge:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/miui/home/recents/views/FloatingIconView2;->DRAWABLE_ALPHA_FULL:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1116
    :goto_0
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 1117
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, "Recycle Bitmap to cache, Cache size: "

    if-eqz v3, :cond_3

    .line 1118
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    .line 1119
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 1120
    iget-object v6, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1119
    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1126
    :cond_3
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    .line 1127
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    .line 211
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1127
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/VectorDrawable;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 1128
    iget-object v6, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    .line 1129
    new-instance v7, Ljava/lang/ref/WeakReference;

    .line 1130
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1129
    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1128
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1133
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1135
    :cond_4
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1136
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1137
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurrentProgress:F

    .line 1138
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScreenRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 1139
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 1140
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    .line 1141
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1143
    :cond_5
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 1144
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1145
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTaskCornerRadius:F

    .line 1146
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFloatAnimEnded:Z

    .line 1147
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mStartSpringAnim:Z

    .line 1148
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mStartedMamlAnimation:Z

    .line 1149
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_6

    .line 1152
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recycleView post: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->recycle()V

    .line 1157
    :cond_7
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    return-void
.end method

.method private final removeAnimationEndListener()V
    .locals 0

    return-void
.end method

.method private final removeRecycleCallback()V
    .locals 3

    .line 1075
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeRecycleCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final resetPendingBackAnim()V
    .locals 1

    .line 524
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->resetPendingBackAnim()V

    :cond_0
    return-void
.end method

.method private final setBackgroundDrawableBounds(F)V
    .locals 3

    .line 847
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView2;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 848
    invoke-static {v0, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 849
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 850
    iget-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 851
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 853
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 854
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_1

    .line 855
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 857
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private final setBackgroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 831
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private final setForegroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 837
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private final setIcon()V
    .locals 7

    .line 773
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 776
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 778
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v3, :cond_2

    .line 781
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "mBackgroundLayer!!.currentShowDrawable"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    invoke-direct {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView2;->vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 784
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 786
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 787
    invoke-virtual {v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 788
    instance-of v5, v4, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v5, :cond_3

    .line 789
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    .line 790
    invoke-direct {p0, v4}, Lcom/miui/home/recents/views/FloatingIconView2;->vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 794
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBadgeLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 795
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 796
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->setForegroundLayerBounds(Landroid/graphics/Rect;)V

    .line 797
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 798
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_c

    .line 799
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/miui/home/recents/views/FloatingIconView2;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 800
    :goto_2
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsUseForegroundClipPath:Z

    goto :goto_5

    .line 804
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    if-eqz v1, :cond_8

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.graphics.drawable.BadgeDrawable"

    .line 805
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    .line 806
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 807
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadge:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 809
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 811
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundBounds:Landroid/graphics/Rect;

    goto :goto_4

    .line 813
    :cond_9
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 814
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 817
    :goto_4
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    .line 818
    :cond_a
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_b

    .line 819
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 823
    :cond_b
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mRealBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 825
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->setBackgroundDrawableBounds(F)V

    .line 826
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final update$lambda-0(Lcom/miui/home/recents/views/FloatingIconView2;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->hasInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->fillDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final updateClipPath(Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;FFLandroid/graphics/RectF;)V
    .locals 10

    .line 456
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 457
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 458
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadeClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 461
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 462
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 463
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getIconTransparentEdge()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, p2

    :cond_0
    move p2, v2

    .line 467
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isSupportThemeAdaptiveIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconWidth()I

    move-result v1

    .line 471
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconHeight()I

    move-result v0

    .line 472
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p2, 0x1

    int-to-float p2, p2

    .line 473
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataWidthPercent()F

    move-result v2

    sub-float v2, p2, v2

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 474
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataHeightPercent()F

    move-result v3

    sub-float/2addr p2, v3

    int-to-float v0, v0

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 476
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 477
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result p1

    div-float/2addr p2, p1

    .line 478
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 479
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    int-to-float p3, v1

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v0, p2

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 480
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    :goto_0
    move v8, v2

    .line 485
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 486
    iget v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTaskCornerRadius:F

    div-float v9, v1, v0

    .line 487
    new-instance v0, Landroid/graphics/RectF;

    .line 488
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    sub-float/2addr v1, v8

    .line 489
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v2

    sub-float/2addr v2, p2

    .line 487
    invoke-direct {v0, v8, p2, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    .line 491
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mClipPath:Landroid/graphics/Path;

    .line 493
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    sub-float v3, v1, v8

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v1

    sub-float v4, v1, p2

    .line 494
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, v8

    move v2, p2

    move v5, v9

    move v6, v9

    .line 491
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 496
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundClipPath:Landroid/graphics/Path;

    .line 498
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    sub-float v3, v1, v8

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    sub-float v4, v1, p2

    .line 499
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, v8

    .line 496
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 502
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadeClipPath:Landroid/graphics/Path;

    .line 504
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    sub-float v3, v1, v8

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v1

    sub-float v4, v1, p2

    .line 505
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    mul-float/2addr v1, p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v5, v1, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    div-float v6, p3, p4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, v8

    move v2, p2

    .line 502
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 508
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->isViewSupportBlur(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p3

    if-eqz p3, :cond_3

    float-to-int v1, v9

    float-to-int v2, v8

    float-to-int v3, p2

    .line 511
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result p2

    float-to-int p2, p2

    sub-int v4, p2, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result p2

    float-to-int p2, p2

    sub-int v5, p2, v3

    const/4 v6, 0x1

    move-object v0, p0

    .line 509
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIIIZ)V

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 514
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 515
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p2

    .line 518
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateClipPath: width = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " lp.width = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lp.height = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 516
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private final updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V
    .locals 6

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 427
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastTime:J

    .line 428
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurTime:J

    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastTime:J

    .line 431
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mLastRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 433
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurTime:J

    .line 434
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 436
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurRectF:Landroid/graphics/RectF;

    .line 437
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    .line 438
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScreenRectF:Landroid/graphics/RectF;

    const/16 v2, 0x3e9

    .line 435
    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCurrentProgress:F

    return-void
.end method

.method private final updateScale(Landroid/graphics/RectF;F)V
    .locals 1

    .line 163
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    .line 164
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 165
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 166
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 155
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 157
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private final useBackAnim()Z
    .locals 1

    .line 408
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->isDisableBackAnimOnK2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->isAllAppsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .line 863
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 867
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 868
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v0, :cond_8

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 872
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    :cond_2
    move-object v4, v1

    .line 875
    :goto_0
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_6

    if-eqz v6, :cond_3

    .line 876
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_4

    goto :goto_0

    .line 882
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 883
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 884
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBitmapEraser:Landroid/graphics/Paint;

    if-nez v1, :cond_5

    .line 885
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBitmapEraser:Landroid/graphics/Paint;

    .line 886
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 889
    :cond_5
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBitmapEraser:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 890
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Reuse Bitmap"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v4, :cond_7

    .line 897
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 898
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 899
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Create new Bitmap"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_7
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    neg-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 904
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 906
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p1

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform VectorDrawable to BitmapDrawable, width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bounds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 910
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 909
    invoke-direct {p1, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 912
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1

    :cond_8
    :goto_2
    return-object v1
.end method


# virtual methods
.method public allowTouch(Z)V
    .locals 0

    .line 1276
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAllowTouch:Z

    return-void
.end method

.method public declared-synchronized changeToAboveBlurView(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    monitor-enter p0

    .line 637
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 638
    monitor-exit p0

    return-void

    .line 640
    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized changeToBelowBlurView(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    monitor-enter p0

    .line 596
    :try_start_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/FloatingIconView2;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1287
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAllowTouch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1290
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsDrawIcon:Z

    if-eqz v0, :cond_1

    const-string v0, "drawBackground"

    .line 918
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 919
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->drawBackground(Landroid/graphics/Canvas;)V

    .line 920
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawForeground,layer size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->drawForeground(Landroid/graphics/Canvas;)V

    .line 923
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->drawBadge(Landroid/graphics/Canvas;)V

    .line 924
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 927
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mUseSurfaceShade:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "drawShade"

    .line 928
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 929
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->drawCoverForeground(Landroid/graphics/Canvas;)V

    .line 930
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mWinBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackGroundClipBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const-string v0, "appScreenShot"

    .line 935
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->drawWinBackForeground(Landroid/graphics/Canvas;)V

    .line 937
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    return-void
.end method

.method public final finishImmediately(Z)V
    .locals 2

    .line 1065
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishImmediately "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->showIcon()V

    .line 1070
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->recycleView(Z)V

    .line 1071
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->removeAnimationEndListener()V

    return-void
.end method

.method public getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .line 1206
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "{\n                shortc\u2026packageName\n            }"

    .line 1207
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getRecycleRunnable()Ljava/lang/Runnable;
    .locals 0

    .line 1079
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->recycleRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V
    .locals 8

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 662
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->removeRecycleCallback()V

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 664
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFloatingIconViewParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 665
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getBackgroundBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 667
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_0
    add-int/2addr v1, v2

    .line 669
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 670
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init addView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget v0, Lcom/miui/home/recents/views/FloatingIconView2;->mInstanceNum:I

    add-int/2addr v0, v2

    sput v0, Lcom/miui/home/recents/views/FloatingIconView2;->mInstanceNum:I

    goto :goto_1

    .line 674
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFloatingIconViewParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 676
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init blur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getBackgroundBlurView()Lcom/miui/home/launcher/BlurView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", this: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_1
    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsOpening:Z

    .line 680
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_2

    :cond_3
    move p3, v0

    .line 679
    :goto_2
    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsFoldLargeScreenLandscape:Z

    .line 681
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    .line 682
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mScreenRectF:Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    .line 683
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 682
    invoke-virtual {p3, v4, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 685
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->resetBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 686
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 687
    invoke-virtual {p3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_4

    .line 688
    invoke-virtual {p3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz p3, :cond_5

    .line 693
    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutIcon;->isVerticalShape()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsVerticalShape:Z

    .line 694
    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutIcon;->isVerticalClip()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsVerticalClip:Z

    .line 697
    :cond_5
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 698
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->isBigIcon()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    .line 699
    sget-object p3, Lcom/miui/home/recents/views/FloatingIconView2;->Companion:Lcom/miui/home/recents/views/FloatingIconView2$Companion;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v3, v1}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    .line 700
    instance-of v1, p2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsWidget:Z

    .line 701
    instance-of v1, p2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsStatusIcon:Z

    .line 702
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    if-eqz v1, :cond_6

    .line 703
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mWidthDiffBetweenImageAndImageView:I

    .line 704
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mHeightDiffBetweenImageAndImageView:I

    .line 706
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->resetPendingBackAnim()V

    .line 709
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 707
    invoke-static {p3, p1, p2, v1}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;->access$getLocationBoundsForView(Lcom/miui/home/recents/views/FloatingIconView2$Companion;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F

    .line 712
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 711
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v5

    iget v6, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v7, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 717
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_a

    .line 718
    new-instance v1, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-direct {v1}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    .line 720
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsWidget:Z

    if-eqz v1, :cond_9

    :cond_8
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->isCrop()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    move v1, v0

    .line 719
    :goto_4
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsClamp:Z

    .line 721
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsClamp:Z

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setIsClamp(Z)V

    .line 722
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->isCuttingIcon()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setIsCutting(Z)V

    .line 723
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mTargetAnimHelper:Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3, v5}, Lcom/miui/home/launcher/anim/util/FloatingIconAnimHelper;->setIconWidthAndHeight(II)V

    .line 725
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    invoke-static {p3, v1, v3}, Lcom/miui/home/recents/views/FloatingIconView2$Companion;->access$getOffsetForIconBounds(Lcom/miui/home/recents/views/FloatingIconView2$Companion;ZF)I

    move-result p3

    .line 727
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    neg-int v3, p3

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v5, p3

    .line 728
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, p3

    .line 727
    invoke-virtual {v1, v3, v3, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 729
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 731
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, icon="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mIsAdaptiveIcon="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", iconOffset="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isBigIcon="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isVerticalShape="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsVerticalShape:Z

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isVerticalClip="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsVerticalClip:Z

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsClamp="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsClamp:Z

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mDrawable"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", clipToOutline"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result p2

    .line 731
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 730
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 742
    invoke-virtual {p0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 743
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView2;->hasInit:Z

    .line 744
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView2;->setVisibility(I)V

    .line 745
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/FloatingIconView2;->setIsDrawIcon(Z)V

    .line 746
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->setIcon()V

    return-void

    .line 657
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init launcher="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", icon="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDrawIcon()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsDrawIcon:Z

    return p0
.end method

.method public isInit()Z
    .locals 0

    .line 1268
    iget-boolean p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->hasInit:Z

    return p0
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_CANCEL:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 577
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onAnimationEnd, try run mEndRunnable"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda6;

    invoke-virtual {p0, p1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1294
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1295
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->setFloatingIconViewBlur(Landroid/view/View;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1299
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1300
    invoke-static {p0}, Lcom/miui/home/recents/util/FloatingIconViewBlurUtils;->clearFloatingIconViewBlurConfig(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1280
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAllowTouch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1283
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public recycle(Z)V
    .locals 3

    .line 1169
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 1172
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mStartSpringAnim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1173
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    const/4 v2, 0x0

    .line 1174
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationX(F)V

    .line 1175
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationY(F)V

    goto :goto_0

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1179
    instance-of v0, v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimStatusStartedForStatusBar()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1182
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    .line 1183
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    goto :goto_2

    .line 1180
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView2;->finishImmediately(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 842
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 843
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppScreenShotBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 942
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setWindowBackgroundBitmap , appScreenShotBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mAppScreenShotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsDrawIcon(Z)V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsDrawIcon, isDraw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsDrawIcon:Z

    return-void
.end method

.method public setShadeColor(I)V
    .locals 0

    .line 1271
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSurfaceAlpha(F)V
    .locals 3

    .line 951
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSurfaceAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView2;->mWinBgPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTAG(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 956
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 957
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZZZ)V
    .locals 11

    const-string v0, "floatingIconViewRect"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 197
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/recents/views/FloatingIconView2;->update(Landroid/graphics/RectF;FFFZZZZF)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZZZZF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    const-string v6, "floatingIconViewRect"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iput-boolean v3, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsOpening:Z

    .line 236
    iput-boolean v5, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mUseSurfaceShade:Z

    .line 237
    iget-boolean v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsAdaptiveIcon:Z

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 238
    :cond_0
    iget-object v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 240
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "return error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    new-instance v7, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v8, v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;-><init>(FF)V

    .line 247
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    const v10, 0x3f8ccccd    # 1.1f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v12

    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v13

    div-float/2addr v8, v13

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    .line 248
    invoke-static {v1, v11}, Lcom/miui/home/recents/util/RectUtil;->zoomInPixel(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    goto :goto_0

    .line 249
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->isCuttingIcon()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v8, p4

    .line 252
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/views/FloatingIconView2;->updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V

    const v13, 0x3dcccccd    # 0.1f

    cmpl-float v13, p2, v13

    if-lez v13, :cond_5

    move v13, v12

    goto :goto_2

    :cond_5
    const v13, 0x3a83126f    # 0.001f

    .line 254
    :goto_2
    invoke-virtual {v0, v13}, Lcom/miui/home/recents/views/FloatingIconView2;->setAlpha(F)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpl-float v13, v13, v9

    if-lez v13, :cond_7

    .line 257
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v13

    mul-float/2addr v13, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v14

    div-float/2addr v13, v14

    cmpl-float v14, v13, v9

    if-lez v14, :cond_6

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v14, v12

    div-float/2addr v14, v13

    cmpg-float v10, v14, v10

    if-gez v10, :cond_6

    .line 259
    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->setHeight(F)V

    .line 260
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v10

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 262
    :cond_6
    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->setHeight(F)V

    .line 263
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v10

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    :cond_7
    :goto_3
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v10

    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v12

    invoke-static {v10, v12}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v10

    .line 267
    invoke-direct {v0, v1, v6}, Lcom/miui/home/recents/views/FloatingIconView2;->updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 268
    invoke-direct {v0, v1, v10}, Lcom/miui/home/recents/views/FloatingIconView2;->updateScale(Landroid/graphics/RectF;F)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v12

    .line 271
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v13

    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v14

    iget-boolean v15, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsVerticalClip:Z

    .line 269
    invoke-static {v6, v12, v13, v14, v15}, Lcom/miui/home/recents/util/RectUtil;->calculateRadiusScale(FFFFZ)F

    move-result v6

    iput v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mFloatingIconViewScale:F

    int-to-float v12, v11

    const v13, 0x3cc49ba6    # 0.024f

    sub-float/2addr v6, v12

    .line 273
    invoke-static {v9, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v6

    mul-float/2addr v6, v13

    add-float/2addr v12, v6

    mul-float/2addr v8, v12

    iput v8, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mTaskCornerRadius:F

    .line 275
    iget-boolean v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    if-eqz v6, :cond_8

    .line 276
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getWidth()F

    move-result v6

    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v8

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    goto :goto_4

    .line 278
    :cond_8
    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;->getHeight()F

    move-result v6

    :goto_4
    div-float/2addr v6, v10

    move/from16 v8, p4

    .line 279
    invoke-direct {v0, v7, v6, v8, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->updateClipPath(Lcom/miui/home/recents/views/FloatingIconView2$LayoutWidthAndHeight;FFLandroid/graphics/RectF;)V

    .line 280
    invoke-direct {v0, v6}, Lcom/miui/home/recents/views/FloatingIconView2;->setBackgroundDrawableBounds(F)V

    if-nez p7, :cond_9

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->useBackAnim()Z

    move-result v6

    if-eqz v6, :cond_9

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_9

    iget-boolean v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mStartedMamlAnimation:Z

    if-nez v6, :cond_9

    .line 282
    iput-boolean v11, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mStartedMamlAnimation:Z

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v6, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float/2addr v1, v6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->prepareBackAnim()V

    const-string v6, "back_home_start"

    .line 286
    invoke-direct {v0, v6, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->notifyBackHome(Ljava/lang/String;F)V

    const-string v6, "back_home_finish"

    .line 287
    invoke-direct {v0, v6, v1}, Lcom/miui/home/recents/views/FloatingIconView2;->notifyBackHome(Ljava/lang/String;F)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 290
    new-instance v6, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lcom/miui/home/recents/views/FloatingIconView2$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/views/FloatingIconView2;)V

    .line 301
    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim(Ljava/lang/Runnable;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 306
    iget-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mShadePaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, p9

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 309
    :cond_a
    iget-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mIsBigIcon:Z

    if-nez v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->forceUseBadgeAlpha()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 310
    :cond_b
    iget-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/home/recents/views/FloatingIconView2;->getBadgeAlpha(FZZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 311
    :cond_c
    iget-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/views/FloatingIconView2;->forceUseBadgeAlpha()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 312
    iget-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView2;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/home/recents/views/FloatingIconView2;->getBadgeAlpha(FZZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setAlpha(I)V

    .line 314
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public final useCornerRadiusEstimate()Z
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView2;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 766
    invoke-static {p0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
