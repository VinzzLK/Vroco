.class public Lcom/miui/home/launcher/RecentsWindowFrameLayout;
.super Lcom/miui/launcher/views/HideExposeFrameLayout;
.source "RecentsWindowFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlurView:Lcom/miui/home/launcher/BlurView;

.field private mExitRecentAnimatingListener:Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;

.field private mIsRecentExitAnimating:Z

.field private mIsTouchable:Z

.field private mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

.field private mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

.field private mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/HideExposeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsTouchable:Z

    .line 111
    new-instance p1, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout$1;-><init>(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V

    iput-object p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    .line 158
    new-instance p1, Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout$2;-><init>(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V

    iput-object p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mExitRecentAnimatingListener:Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsTouchable:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/RecentsWindowFrameLayout;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsRecentExitAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/RecentsWindowFrameLayout;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->updateTouchable()V

    return-void
.end method

.method private isAtLeastOneChildViewVisible()Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setTouchable(Z)V
    .locals 3

    .line 106
    sget-object v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchable, isTouchable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-boolean p1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsTouchable:Z

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method private updateTouchable()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsRecentExitAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mIsTouchable:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->setTouchable(Z)V

    :cond_1
    return-void
.end method

.method private updateVisible()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->isAtLeastOneChildViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVisible, set visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVisible, set gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onBackPressed()V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBlurView()Lcom/miui/home/launcher/BlurView;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mBlurView:Lcom/miui/home/launcher/BlurView;

    return-object p0
.end method

.method public getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    return-object p0
.end method

.method public getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/HideExposeFrameLayout;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 54
    sget-object p2, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChildVisibilityChanged, child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newVisibility="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->updateVisible()V

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->updateTouchable()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a02ec

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/BlurView;

    iput-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mBlurView:Lcom/miui/home/launcher/BlurView;

    const v0, 0x7f0a02eb

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const v0, 0x7f0a035d

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/SmallWindowCrop;

    iput-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mSmallWindowCrop:Lcom/miui/home/recents/views/SmallWindowCrop;

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mRecentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    iget-object p0, p0, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->mExitRecentAnimatingListener:Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setExitRecentAnimatingListener(Lcom/miui/home/launcher/RecentsWindowFrameLayout$ExitRecentAnimatingListener;)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->updateVisible()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/RecentsWindowFrameLayout;->updateVisible()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
