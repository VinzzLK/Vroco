.class public Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# static fields
.field public static final SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 187
    new-instance v0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    sput-object v0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    iput-object p2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method

.method public static getShortcutMenuAlphaAndScaleDuration(JF)J
    .locals 1

    long-to-float p0, p0

    .line 191
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-long p0, p0

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    long-to-float p0, p0

    const p1, 0x3f333333    # 0.7f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    :cond_0
    return-wide p0
.end method

.method private setHotseatsProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;ILandroid/view/animation/Interpolator;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotseatsProperty: hotseats.Visiblity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.Alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.TranslationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,hotseats.TranslationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,isInNormalEditing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 112
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StateManager"

    .line 108
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/LauncherState;->getHotSeatsTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    and-int/lit8 p4, p4, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    const/16 p1, 0x9

    cmpl-float p4, p0, v3

    if-nez p4, :cond_3

    .line 123
    sget-object p4, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object p4, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p3, p1, p4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 124
    invoke-virtual {p2, v0, p0, p1}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 125
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, p0, v1, p5}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 126
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, v0, p0, v2, p5}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method static setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 8

    .line 130
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherState;->getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 131
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 132
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 133
    aget v2, p1, v2

    const/4 v3, 0x3

    .line 134
    aget v3, p1, v3

    const/4 v4, 0x4

    .line 135
    aget p1, p1, v4

    .line 136
    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x6

    invoke-virtual {p3, v5, v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-nez v6, :cond_0

    .line 137
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_0
    const/16 v7, 0x9

    invoke-virtual {p3, v7, v6}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v6

    invoke-virtual {p2, v6, v0, p3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p3

    cmpl-float v0, v2, v5

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p2, p3, v2, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p3

    cmpl-float v0, v3, v5

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p2, p3, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p3, v0, v1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p0, p3, p1, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 10

    .line 146
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    .line 147
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 148
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p4, v3, v2}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 149
    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {p4, v4, v3}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p4

    .line 150
    iget-boolean v3, p2, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v3, :cond_9

    iget-boolean v3, p2, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v3, :cond_9

    .line 151
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 153
    invoke-virtual {p3}, Lcom/miui/home/launcher/anim/PropertySetter;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->getShortcutMenuAlphaAndScaleDuration(JF)J

    move-result-wide v3

    .line 154
    invoke-virtual {p3, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter;->setDuration(J)V

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setShortcutMenuLayerProperty  state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "   duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "   scale="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   isInState="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v4, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    .line 159
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "StateManager"

    .line 155
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v3}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;

    const-wide/16 v7, 0x0

    sget v9, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    invoke-direct {v6, v7, v8, v9}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;-><init>(JI)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    if-eq p2, v4, :cond_2

    .line 163
    iget-object v5, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq p2, v3, :cond_2

    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 164
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p3, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;

    new-instance p4, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p4, v0, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    invoke-direct {p3, p4}, Lcom/miui/home/recents/event/ShortcutMenuLayerStateChangeEvent;-><init>(Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;)V

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_4

    .line 165
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    .line 167
    sget-object v2, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 165
    :goto_1
    invoke-virtual {p3, p0, v0, v2}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 168
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-eqz p4, :cond_5

    move-object v5, p4

    goto :goto_2

    .line 169
    :cond_5
    sget-object v5, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 168
    :goto_2
    invoke-virtual {p3, p0, v2, v1, v5}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 170
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz p4, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    sget-object p4, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->SHORTCUT_MENU_ALPHA_AND_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 170
    :goto_3
    invoke-virtual {p3, p0, v2, v1, p4}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 176
    :goto_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setAlphaAndScaleAsync(FF)V

    .line 178
    invoke-virtual {v3}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eq p2, v3, :cond_8

    .line 179
    :cond_7
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setAlphaAndScaleAsync(FF)V

    :cond_8
    if-eq p2, v4, :cond_9

    .line 182
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchOverlayController()Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method private setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 11

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWorkspaceProperty  state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result v2

    .line 84
    iget-object v3, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/LauncherState;->getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v3

    .line 85
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result v9

    and-int/lit8 v4, v9, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/LauncherState;->getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v6, 0x6

    .line 90
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v6, v7}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v10

    const/4 v6, 0x7

    cmpl-float v7, v4, v5

    if-nez v7, :cond_1

    .line 91
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p3, v6, v7}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    const/16 v7, 0x8

    cmpl-float v5, v3, v5

    if-nez v5, :cond_2

    .line 92
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p3, v7, v5}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 93
    iget-object v7, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v7, v8, v0, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, v0, v7, v1, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v0, v4, v6}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, v0, v1, v2, v10}, Lcom/miui/home/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v5}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 99
    invoke-direct/range {v5 .. v10}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setHotseatsProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;ILandroid/view/animation/Interpolator;)V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setShortcutMenuLayerProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 73
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method
