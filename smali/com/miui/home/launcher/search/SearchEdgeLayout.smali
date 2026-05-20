.class public Lcom/miui/home/launcher/search/SearchEdgeLayout;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "SearchEdgeLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;


# instance fields
.field private mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private final mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

.field private mInvalidateBottomAreaHeight:F

.field private mIsDragging:Z

.field private mIsForbidden:Z

.field private mLastMotionY:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 43
    new-instance p2, Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;-><init>(Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 45
    sget p2, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07024c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mInvalidateBottomAreaHeight:F

    return-void
.end method

.method private canShowSearchEffect()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 281
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canShowSearchEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 282
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 283
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 284
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 285
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 286
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private refreshNewSettings()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isPullDownSearch()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsSearch()Z

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/settings/LauncherGestureController;->isSupportGestureOpenHomeFeed()Z

    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshEnableSettings topSearch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",bottomFeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",bottomSearch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchEdgeLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-eqz v1, :cond_1

    .line 74
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 77
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    .line 79
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 81
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    return-void
.end method

.method private setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect;->TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    .line 114
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->BOTTOM:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    :goto_0
    return-void
.end method

.method private setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setSize(II)V

    :cond_0
    return-void
.end method

.method public static showCheckSlidingSetting()Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static useListSlidingSetting()Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 172
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public endDrag(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public finish()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public isBottomGlobalSearchEnable()Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsSearch()Z

    move-result p0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBottomSearchEnable()Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchEdgeShowing()Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopSearchEnable()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 295
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged(Z)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz p0, :cond_1

    .line 306
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_5

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)Z

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 244
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_5

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    if-eqz v0, :cond_4

    goto/16 :goto_5

    .line 199
    :cond_4
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v1, :cond_5

    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->canShowSearchEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isSearchEdgeShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    :cond_5
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_5

    .line 203
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 204
    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    sub-int/2addr v0, v3

    .line 205
    iget-boolean v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-nez v3, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    if-le v3, v4, :cond_b

    .line 206
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 207
    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v3, :cond_7

    .line 208
    invoke-virtual {v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_7
    if-lez v0, :cond_8

    .line 211
    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    iput-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 213
    :cond_8
    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 214
    invoke-virtual {v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->canShowEffect()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    :cond_9
    iput-object v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 216
    :cond_a
    iput-object v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    .line 220
    :cond_b
    :goto_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v3, :cond_12

    int-to-float v0, v0

    .line 221
    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    invoke-virtual {v3, v0, v4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_12

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    goto :goto_5

    .line 228
    :cond_c
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_e

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    const/16 v3, 0x3e8

    .line 231
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_d
    move v0, v2

    .line 234
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)Z

    move-result v0

    goto :goto_2

    :cond_e
    move v0, v2

    .line 236
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 237
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    move v2, v0

    goto :goto_5

    .line 187
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 191
    :cond_10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 193
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mInvalidateBottomAreaHeight:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    :cond_12
    :goto_5
    if-eqz v2, :cond_13

    return v1

    .line 248
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSize()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public refreshOldSettings()V
    .locals 3

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    .line 86
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpCheckboxSetting()Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher_slideup_gesture"

    const-string v2, "no_action"

    invoke-static {v0, v1, v2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "global_search"

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->GOOGLE_SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->CONTENT:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 93
    :cond_1
    sget-object v2, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 93
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    goto :goto_3

    .line 96
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-direct {p0, v0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    :goto_3
    return-void

    :cond_4
    if-eqz v0, :cond_7

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_4
    if-eqz v0, :cond_6

    .line 104
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 102
    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    goto :goto_6

    .line 106
    :cond_7
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-direct {p0, v0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    :goto_6
    return-void
.end method

.method public refreshSettings()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useListSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshNewSettings()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshOldSettings()V

    :goto_0
    return-void
.end method

.method public refreshSize()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 254
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    .line 260
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
