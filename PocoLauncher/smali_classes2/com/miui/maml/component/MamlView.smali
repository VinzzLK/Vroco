.class public Lcom/miui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;
.implements Lcom/miui/maml/util/MamlViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/component/MamlView$OnExternCommandListener;,
        Lcom/miui/maml/component/MamlView$InnerView;,
        Lcom/miui/maml/component/MamlView$Config;
    }
.end annotation


# static fields
.field private static final BLUR_VAR_NAME:Ljava/lang/String; = "__blur_ratio"

.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlView"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_CODE:I = 0x1


# instance fields
.field private isEnsureViewSizeUpDate:Z

.field private mAutoFinishRoot:Z

.field private mAutoRemoveCache:Z

.field private mCanvasParamsChanged:Z

.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mConfig:Lcom/miui/maml/component/MamlView$Config;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlView$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mHasDelay:Z

.field private mLastBlurRatio:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mView:Lcom/miui/maml/component/MamlView$InnerView;

.field private mWidgetType:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F


# direct methods
.method public static synthetic $r8$lambda$H6UTXiG35d30OCryi41tu5Uy4LU(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->lambda$setPathThenVisible$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$OeFrxWzy5GQDNZ4biQEAhL7358I(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    return-void
.end method

.method public static synthetic $r8$lambda$TLm5cb3NrJ0UfjxwIh1Szy5tn2w(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->lambda$setPathThenVisible$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cddUSvK5quenB9wTktoreC0BhL4(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->lambda$ensureViewSize$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 84
    new-instance v1, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v1, 0x0

    .line 502
    iput-boolean v1, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/R$styleable;->MamlView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 100
    sget v2, Lcom/miui/maml/R$styleable;->MamlView_path:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    sget v3, Lcom/miui/maml/R$styleable;->MamlView_innerPath:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    sget v4, Lcom/miui/maml/R$styleable;->MamlView_resMode:I

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 103
    sget v5, Lcom/miui/maml/R$styleable;->MamlView_autoRemoveCache:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 104
    sget v5, Lcom/miui/maml/R$styleable;->MamlView_touchable:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 105
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/miui/maml/component/MamlView;->setTouchable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 142
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 69
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 84
    new-instance p3, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {p3, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object p3, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 p3, 0x0

    .line 502
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 155
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V

    .line 147
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/component/MamlView$Config;)V
    .locals 3

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 84
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    .line 136
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mConfig:Lcom/miui/maml/component/MamlView$Config;

    .line 137
    iget-object v0, p2, Lcom/miui/maml/component/MamlView$Config;->path:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/maml/component/MamlView$Config;->innerPath:Ljava/lang/String;

    iget v2, p2, Lcom/miui/maml/component/MamlView$Config;->mode:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    iget-boolean v1, p2, Lcom/miui/maml/component/MamlView$Config;->autoRemoveCache:Z

    iget v2, p2, Lcom/miui/maml/component/MamlView$Config;->resizeScale:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V

    .line 138
    iget-boolean p1, p2, Lcom/miui/maml/component/MamlView$Config;->touchable:Z

    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->setTouchable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 84
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 84
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    .line 130
    iput-object p6, p0, Lcom/miui/maml/component/MamlView;->mWidgetType:Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/component/MamlView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mX:F

    return p0
.end method

.method static synthetic access$300(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mY:F

    return p0
.end method

.method static synthetic access$400(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    return p0
.end method

.method private blurBackground()V
    .locals 3

    const-string v0, "__blur_ratio"

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->existsDouble(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x64

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    .line 549
    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    if-eq v0, v1, :cond_3

    .line 550
    iput v0, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V

    .line 555
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 557
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 561
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private ensureViewSize()V
    .locals 1

    .line 504
    new-instance v0, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private finish()V
    .locals 2

    .line 784
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 787
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 788
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 789
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 790
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 791
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->removeAccessHelperRef()V

    .line 792
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 795
    :cond_0
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    :cond_1
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .locals 1

    .line 174
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x1

    if-eq p4, p0, :cond_3

    const/4 p0, 0x2

    if-eq p4, p0, :cond_2

    const/4 p0, 0x3

    if-eq p4, p0, :cond_1

    return-object v0

    .line 181
    :cond_1
    new-instance p0, Lcom/miui/maml/util/FolderResourceLoader;

    invoke-direct {p0, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 183
    :cond_2
    new-instance p0, Lcom/miui/maml/util/AssetsResourceLoader;

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    .line 179
    :cond_3
    new-instance p0, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {p0, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private synthetic lambda$ensureViewSize$2()V
    .locals 15

    .line 505
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "view_width"

    .line 507
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "view_height"

    .line 508
    invoke-virtual {v0, v4}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 509
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 510
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v10}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v10

    div-float/2addr v9, v10

    float-to-double v9, v9

    const-wide/16 v11, 0x0

    cmpl-double v13, v7, v11

    const-string v14, "MamlView"

    if-eqz v13, :cond_2

    cmpl-double v11, v9, v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v11, v2, v7

    if-nez v11, :cond_1

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_3

    .line 516
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ensureViewSize changed: preViewWidth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", viewWidth = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", preViewHeight = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", viewHeight = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0, v1, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 519
    invoke-virtual {v0, v4, v9, v10}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 520
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "ensureViewSize viewWidth|viewHeight=0"

    .line 512
    invoke-static {v14, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$setPathThenVisible$0()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setPathThenVisible$1()V
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    return-void
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V

    return-void
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V
    .locals 2

    .line 194
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz p2, :cond_0

    .line 196
    new-instance p3, Lcom/miui/maml/ResourceManager;

    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 197
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    new-instance v0, Lcom/miui/maml/ScreenContext;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    invoke-direct {p2, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 200
    invoke-virtual {p2, p4}, Lcom/miui/maml/ScreenElementRoot;->setResizeRadio(F)V

    .line 201
    iget-object p3, p0, Lcom/miui/maml/component/MamlView;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/miui/maml/ScreenElementRoot;->setWidgetType(Ljava/lang/String;)V

    .line 202
    iget-object p3, p0, Lcom/miui/maml/component/MamlView;->mConfig:Lcom/miui/maml/component/MamlView$Config;

    invoke-virtual {p2, p3}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewConfig(Lcom/miui/maml/component/MamlView$Config;)V

    .line 203
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 205
    invoke-virtual {p2, p3}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    :cond_0
    return-void
.end method

.method private removeAccessHelperRef()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 802
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    .line 804
    iput-object v1, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 338
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 342
    :cond_0
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    :cond_1
    return-void
.end method

.method public clearBitmapCache()V
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    :cond_0
    return-void
.end method

.method public clearPermanenceData()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "customEditLocalId"

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/maml/util/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/maml/util/SharedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/util/SharedPreferenceHelper;->clearSharePreference()V

    :cond_0
    return-void
.end method

.method public disableCutRoundCorner()Z
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->isDisableCutRoundCorner()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 258
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doRender()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 264
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->blurBackground()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 672
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public forceTick()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 272
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public getCornerCutType()Ljava/lang/String;
    .locals 0

    .line 687
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getCornerCutType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMamlVersionCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getMamlVersionName()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0.0"

    return-object p0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getVariableNumber(Ljava/lang/String;)D
    .locals 0

    .line 633
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getVariableObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVariableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 0

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getViewLocationOnScreen()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 249
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public init()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;Z)V

    .line 315
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 316
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 317
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 318
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 321
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 322
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method public initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 216
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "window"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 219
    new-instance v0, Lcom/miui/maml/component/MamlView$InnerView;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/component/MamlView$InnerView;-><init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 220
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 228
    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setViewManager(Lcom/miui/maml/util/MamlViewManager;)V

    .line 229
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    new-instance p2, Lcom/miui/maml/component/MamlView$2;

    invoke-direct {p2, p0}, Lcom/miui/maml/component/MamlView$2;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->init()V

    return-void
.end method

.method public isLoaded()Z
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 426
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 427
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 581
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 529
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 531
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onDestroy"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 432
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 433
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    const-string v1, "accessibilityText"

    .line 304
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 453
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 455
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_2

    .line 456
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 457
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float/2addr p4, v0

    float-to-double v0, p4

    const-string p4, "view_width"

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    sub-int/2addr p5, p3

    int-to-float p4, p5

    .line 458
    iget-object p5, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p5

    div-float/2addr p4, p5

    float-to-double p4, p4

    const-string v0, "view_height"

    invoke-virtual {p1, v0, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    .line 463
    :goto_0
    instance-of p5, p4, Landroid/view/View;

    if-eqz p5, :cond_0

    .line 464
    check-cast p4, Landroid/view/View;

    .line 465
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p2, p5

    .line 466
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p3, p5

    .line 467
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    .line 470
    iget-object p4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p4

    div-float/2addr p2, p4

    float-to-double p4, p2

    const-string p2, "view_x"

    invoke-virtual {p1, p2, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    int-to-float p2, p3

    .line 471
    iget-object p3, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-string p4, "view_y"

    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 472
    iget-boolean p1, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 473
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->isEnsureViewSizeUpDate:Z

    const-string p1, "MamlView"

    const-string p2, "onLayout: put width exception resume"

    .line 474
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 477
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 761
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 764
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 765
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 766
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 767
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 768
    iget-object v2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 769
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v3

    float-to-int v3, v3

    :cond_1
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_2

    if-lez v2, :cond_2

    .line 771
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    if-ne v1, v4, :cond_3

    if-lez v3, :cond_3

    .line 776
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 780
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onPause"

    .line 437
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onResume"

    .line 444
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 447
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->ensureViewSize()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 377
    iget-boolean v2, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v0, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 379
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public putVariableNumber(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    return-void
.end method

.method public putVariableNumber(Ljava/lang/String;DI)V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;DI)V

    :cond_0
    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public removeRelatedBitmapsRef()V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0}, Lcom/miui/maml/ResourceManager;->clearByKeys()V

    :cond_0
    return-void
.end method

.method public requestUpdate()V
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 725
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    :cond_0
    return-void
.end method

.method public setAutoFinishRoot(Z)V
    .locals 0

    .line 662
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public setCacheSize(I)V
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->setCacheSize(I)V

    :cond_0
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    :cond_0
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    .line 396
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public setPath(Ljava/lang/String;F)V
    .locals 4

    .line 400
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V

    return-void
.end method

.method public setPathThenVisible(Ljava/lang/String;)V
    .locals 0

    .line 405
    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->setPath(Ljava/lang/String;)V

    .line 406
    new-instance p1, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPathThenVisible(Ljava/lang/String;F)V
    .locals 0

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->setPath(Ljava/lang/String;F)V

    .line 411
    new-instance p1, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/maml/component/MamlView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPathThenVisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mWidgetType:Ljava/lang/String;

    .line 416
    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->setPathThenVisible(Ljava/lang/String;)V

    return-void
.end method

.method public setPathThenVisible(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 420
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mWidgetType:Ljava/lang/String;

    .line 421
    invoke-virtual {p0, p1, p3}, Lcom/miui/maml/component/MamlView;->setPathThenVisible(Ljava/lang/String;F)V

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 743
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setScale(FII)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 485
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 486
    iput p3, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    const/4 p1, 0x1

    .line 487
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 488
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 718
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 495
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mY:F

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 497
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public supportBackgroundBlur()Z
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->supportBackgroundBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
