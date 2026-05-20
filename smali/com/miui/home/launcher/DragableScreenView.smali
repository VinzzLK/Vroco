.class public Lcom/miui/home/launcher/DragableScreenView;
.super Lcom/miui/home/launcher/ScreenView;
.source "DragableScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;
    }
.end annotation


# instance fields
.field protected mDragScrollHandler:Landroid/os/Handler;

.field protected mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

.field protected mDragScrollState:I

.field private mScrollZone:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 24
    new-instance p1, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragableScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07066c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mScrollZone:I

    return-void
.end method

.method private isInNegativeOneScreen()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getScrollZone()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/miui/home/launcher/DragableScreenView;->mScrollZone:I

    return p0
.end method

.method public onEnterScrollArea(IIILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onExitScrollArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 52
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 58
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    const/16 v2, 0x1e

    if-lt p1, v2, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    if-le p1, v3, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    if-ne p1, v1, :cond_4

    .line 69
    iput v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 61
    :cond_2
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    if-nez v3, :cond_4

    .line 62
    iput v1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 63
    iget-object v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    if-ge p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->setDirection(I)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return v1
.end method

.method public scrollDragingLeft()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollDragingRight()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 90
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr v0, v1

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/DragableScreenView;->isInNegativeOneScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 94
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    goto :goto_0

    .line 97
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    :cond_2
    :goto_0
    return-void
.end method
