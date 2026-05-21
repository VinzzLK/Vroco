.class public Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;
.super Ljava/lang/Object;
.source "ShortcutMenuBlurAnimationHelper.java"


# static fields
.field private static final COVER_BLUR_SMALL_RADIUS:F

.field private static sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;


# instance fields
.field private mIsDrawingBlur:Z

.field private mProgress:F

.field private final mUpdateDragViewTitleConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/DragView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5r11-QF4PfhdX4aLGJMJk86MjYs(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/DragView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->lambda$new$0(Lcom/miui/home/launcher/DragView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v0, 0x41f00000    # 30.0f

    .line 19
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->COVER_BLUR_SMALL_RADIUS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mProgress:F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mIsDrawingBlur:Z

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mUpdateDragViewTitleConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mIsDrawingBlur:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->performOnDragViewContainerChild(Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->setProgress(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;Landroid/view/View;IFIIII)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->setBlurRadiusScaleColors(Landroid/view/View;IFIIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;)Ljava/util/function/Consumer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mUpdateDragViewTitleConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mProgress:F

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragView;->updateDragViewTitleAndIconMessage(F)V

    return-void
.end method

.method private performOnDragViewContainerChild(Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/widget/DragContainerLayout;",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/DragView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 114
    instance-of p1, p0, Lcom/miui/home/launcher/DragView;

    if-eqz p1, :cond_1

    .line 115
    check-cast p0, Lcom/miui/home/launcher/DragView;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBlurRadiusScaleColors(Landroid/view/View;IFIIII)V
    .locals 0

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 97
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 98
    invoke-static {p1, p3}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurScaleRatio(Landroid/view/View;F)V

    if-ltz p5, :cond_1

    .line 99
    invoke-static {p1, p4, p5}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :cond_1
    if-ltz p7, :cond_2

    .line 100
    invoke-static {p1, p6, p7}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private setProgress(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mProgress:F

    return-void
.end method


# virtual methods
.method public cancelBlurAnim()V
    .locals 0

    .line 104
    sget-object p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mProgress:F

    return p0
.end method

.method public hideShortcutMenuWithNoAnimation(Landroid/view/View;Lcom/miui/home/launcher/widget/DragContainerLayout;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->multiplyAlphaWithColor(IF)I

    move-result v6

    .line 122
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->multiplyAlphaWithColor(IF)I

    move-result v8

    .line 123
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->setProgress(F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x64

    const/16 v9, 0x6a

    move-object v2, p0

    move-object v3, p1

    .line 124
    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->setBlurRadiusScaleColors(Landroid/view/View;IFIIII)V

    .line 125
    sget-object v1, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->performOnDragViewContainerChild(Lcom/miui/home/launcher/widget/DragContainerLayout;Ljava/util/function/Consumer;)V

    .line 127
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 128
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 132
    sget-object p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public startBlurAnim(Landroid/view/View;ZLcom/miui/home/launcher/widget/DragContainerLayout;F)V
    .locals 7

    .line 42
    iput-boolean p2, p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->mIsDrawingBlur:Z

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    sget v3, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->COVER_BLUR_SMALL_RADIUS:F

    const v4, 0x3cf5c28f    # 0.03f

    .line 47
    sget-object v1, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v1, p4, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 48
    sget-object p4, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p4, v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 49
    sget-object p4, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$1;-><init>(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;ZLcom/miui/home/launcher/widget/DragContainerLayout;Landroid/view/View;)V

    invoke-virtual {p4, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 75
    sget-object p2, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance p4, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;

    move-object v1, p4

    move-object v2, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper$2;-><init>(Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;FFLandroid/view/View;Lcom/miui/home/launcher/widget/DragContainerLayout;)V

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 89
    sget-object p0, Lcom/miui/home/launcher/common/ShortcutMenuBlurAnimationHelper;->sBlurAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method
