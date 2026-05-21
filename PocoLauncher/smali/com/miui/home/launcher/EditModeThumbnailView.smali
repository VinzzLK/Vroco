.class public abstract Lcom/miui/home/launcher/EditModeThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "EditModeThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;


# static fields
.field private static sCurrentZ:F = -1.0f


# instance fields
.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mEnterAnimation:Landroid/view/animation/Animation;

.field private mExitAnimation:Landroid/view/animation/Animation;

.field public mIsEditMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance p1, Lcom/miui/home/launcher/EditModeThumbnailView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/EditModeThumbnailView$2;-><init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance p1, Lcom/miui/home/launcher/EditModeThumbnailView$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/EditModeThumbnailView$2;-><init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    return-void
.end method

.method public static getCurrentZ()F
    .locals 1

    .line 117
    sget v0, Lcom/miui/home/launcher/EditModeThumbnailView;->sCurrentZ:F

    return v0
.end method

.method public static setCurrentZ(F)V
    .locals 0

    .line 113
    sput p0, Lcom/miui/home/launcher/EditModeThumbnailView;->sCurrentZ:F

    return-void
.end method


# virtual methods
.method public getEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f010038

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 56
    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public getExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f010039

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    .line 43
    new-instance v1, Lcom/miui/home/launcher/EditModeThumbnailView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/EditModeThumbnailView$1;-><init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public hide(Z)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;->hideWithOriginAnim()V

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;->hideWithGoogleAnim()V

    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->onAttachedToWindow()V

    .line 95
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 101
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 1

    const/4 v0, 0x4

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->removeAllScreens()V

    return-void
.end method

.method public abstract prepareToShow()V
.end method

.method protected resetMarginBottom(Landroid/view/ViewGroup$LayoutParams;Lcom/miui/home/launcher/ThumbnailMeasureController;)V
    .locals 0

    .line 105
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 106
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    invoke-virtual {p2}, Lcom/miui/home/launcher/ThumbnailMeasureController;->getEditingEntryBottom()I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p0}, Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;->showWithOriginAnim()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;->showWithGoogleAnim()V

    :goto_0
    return-void
.end method

.method public abstract updateEditModeThumbnailViewBlurMode(Z)V
.end method
