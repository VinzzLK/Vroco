.class public Lcom/miui/home/recents/LauncherAppTransitionManager;
.super Ljava/lang/Object;
.source "LauncherAppTransitionManager.java"


# instance fields
.field public mIsIgnoreRecentsLaunchAnimationEnd:Z

.field public mIsOpenAnimRunning:Z

.field public mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    .line 22
    new-instance v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 2

    # VrocoLauncher fix: when view is null (cold launch / not yet laid out),
    # return makeBasic() so system uses its default animation instead of nothing.
    # Original code returned null, causing missing animation on first (cold) launch.
    if-nez p2, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    iget v0, p3, Landroid/graphics/Rect;->left:I

    aget p0, p1, p0

    sub-int/2addr v0, p0

    iget p0, p3, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, v0, p0, p1, p3}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p2, p0, p0, p1, p3}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public isOpenAnimRunning()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsOpenAnimRunning:Z

    return p0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onFsGestureStart()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public registerRemoteTransitions()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public unregisterRemoteTransitions()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
