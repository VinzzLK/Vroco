.class public Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "AllAppsTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# static fields
.field private static final ALL_APPS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/allapps/AllAppsTransitionController;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isDragging:Z

.field private mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

.field private mContainerVelocity:F

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mProgress:F

.field private mScrimView:Lcom/miui/home/launcher/view/ScrimView;

.field private mShiftRange:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "allAppsProgress"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 84
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 86
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;F)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationStart()V

    return-void
.end method

.method private onProgressAnimationEnd(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 220
    iget p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->reset()V

    const/4 p1, 0x1

    .line 223
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setSearchBarEnableAccessibility(Z)V

    .line 224
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setSearchBarEnableAccessibility(Z)V

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onScrollUpEnd()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onProgressAnimationStart()V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    if-nez p2, :cond_0

    .line 182
    sget-object p2, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)Lcom/miui/home/launcher/anim/PropertySetter;

    move-result-object p2

    .line 184
    :goto_0
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/LauncherState;->getVisibleElements(Lcom/miui/home/launcher/Launcher;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 187
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    sget-object p3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0, p1, p3}, Lcom/miui/home/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setProgress(F)V
    .locals 2

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/ScrimView;->setProgress(F)V

    .line 114
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v0, p1

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 116
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->updateSystemUiState(F)V

    return-void
.end method

.method private setSearchBarEnableAccessibility(Z)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 242
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->setSearchBarEnableAccessibility(Z)V

    return-void
.end method

.method private updateSystemUiState(F)V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-double v1, p1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 125
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_2
    if-eqz p1, :cond_4

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    .line 129
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_1

    .line 131
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getProgressAnimatorListener(Lcom/miui/home/launcher/LauncherState;Z)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 191
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController$2;-><init>(Lcom/miui/home/launcher/allapps/AllAppsTransitionController;Lcom/miui/home/launcher/LauncherState;Z)V

    return-object v0
.end method

.method public getShiftRange()F
    .locals 0

    .line 90
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    return p0
.end method

.method public isShow()Z
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDrag(F)V
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    .line 262
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mContainerVelocity:F

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    return-void
.end method

.method public onDragStart()V
    .locals 3

    .line 248
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isDragging:Z

    .line 250
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->onDragStart()V

    .line 253
    :cond_1
    iget v2, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationAndReset(Landroid/view/View;Z)V

    .line 255
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/compat/EditModeAnimController;->endAnimationAndReset(Landroid/view/View;Z)V

    .line 257
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow(Z)V

    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mShiftRange:F

    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    const/4 v0, 0x0

    .line 146
    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    .line 162
    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 163
    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 165
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onProgressAnimationEnd(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void

    .line 169
    :cond_1
    iget-boolean v1, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 170
    :goto_0
    sget-object v3, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v6, 0x0

    aput v5, v4, v6

    aput v0, v4, v2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 171
    iget-wide v3, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    invoke-virtual {p2, v6, v1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener(Lcom/miui/home/launcher/LauncherState;Z)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 177
    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setAlphas(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 2

    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f0a0317

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/view/ScrimView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->getCaretDrawable()Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;-><init>(Lcom/miui/home/launcher/pageindicators/CaretDrawable;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->mCaretController:Lcom/miui/home/launcher/allapps/AllAppsCaretController;

    :cond_0
    return-void
.end method
