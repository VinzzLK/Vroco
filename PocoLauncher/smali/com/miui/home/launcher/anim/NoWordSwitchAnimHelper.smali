.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

.field private static isCheckAppearAnimConfig:Z

.field private static mAnimEndAction:Ljava/lang/Runnable;

.field private static final mAnimListener:Lmiuix/animation/listener/TransitionListener;

.field private static final mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private static final mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

.field private static final mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private static mScheduledWorkspaceDisappearAnim:Z

.field private static mShouldScheduleAppearAnim:Z


# direct methods
.method public static synthetic $r8$lambda$5X-UDQ67zVnLEy1_AaIzCHvWBT8(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->onLauncherFinishLoading$lambda-8$lambda-7(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bYaU6uu4kgijetT0sy_BpbpYX1g(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->startSwitchNoWordAnim$lambda-3$lambda-2(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLnge0DLbXD2YMH_2UG01Tbm1Is(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->onLauncherStartLoading$lambda-5$lambda-4(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrN2TQC7Gt5B7j1WnFlKXob6dMM(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->startSwitchNoWordAnim$lambda-1$lambda-0(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    .line 70
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 72
    fill-array-data v3, :array_0

    const/4 v4, -0x2

    .line 70
    invoke-virtual {v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v3, 0x1

    new-array v5, v3, [Lmiuix/animation/listener/TransitionListener;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 73
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 75
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [F

    .line 77
    fill-array-data v2, :array_1

    .line 75
    invoke-virtual {v1, v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v0, v2, v6

    .line 78
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 85
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$doSwitchAnim(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Landroid/view/View;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->doSwitchAnim(Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$getMAnimEndAction$p()Ljava/lang/Runnable;
    .locals 1

    .line 34
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getMScheduledWorkspaceDisappearAnim$p()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    return v0
.end method

.method public static final synthetic access$setMAnimEndAction$p(Ljava/lang/Runnable;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method private final doSwitchAnim(Landroid/view/View;Z)V
    .locals 6

    .line 188
    new-instance p0, Lmiuix/animation/controller/AnimState;

    invoke-direct {p0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 189
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    new-array v5, v4, [J

    .line 188
    invoke-virtual {p0, v0, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 192
    new-instance v3, Lmiuix/animation/controller/AnimState;

    invoke-direct {v3}, Lmiuix/animation/controller/AnimState;-><init>()V

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    new-array v2, v4, [J

    invoke-virtual {v3, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    aput-object p1, v2, v4

    .line 197
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    if-eqz p2, :cond_2

    .line 200
    sget-object p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    :goto_1
    aput-object p2, v1, v4

    .line 197
    invoke-interface {p1, p0, v0, v1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private static final onLauncherFinishLoading$lambda-8$lambda-7(Lcom/miui/home/launcher/Workspace;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string v0, "finish load make sure workspace visible"

    .line 170
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final onLauncherStartLoading$lambda-5$lambda-4(Lcom/miui/home/launcher/Workspace;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string/jumbo v0, "start loading visible workspace"

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final startSwitchNoWordAnim$lambda-1$lambda-0(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V
    .locals 1

    const-string v0, "$animEndAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    sput-object p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimEndAction:Ljava/lang/Runnable;

    const/4 p0, 0x1

    .line 112
    sput-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    .line 113
    sput-boolean p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    .line 114
    invoke-direct {v0, p2, p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->doSwitchAnim(Landroid/view/View;Z)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string/jumbo p1, "startSwitchNoWordAnim"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final startSwitchNoWordAnim$lambda-3$lambda-2(Lcom/miui/home/launcher/Workspace;)V
    .locals 1

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string/jumbo v0, "start switch invisible workspace"

    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onLauncherFinishLoading()V
    .locals 4

    .line 164
    sget-object p0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 168
    new-instance v2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_1
    sput-boolean v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    .line 176
    sput-boolean v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    .line 177
    sput-boolean v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 179
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->setSwitchingNoWordModel(Z)V

    const-string p0, "NoWordSwitchAnimHelper"

    const-string v0, "onLauncherFinishLoading"

    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLauncherStartLoading()V
    .locals 3

    .line 136
    sget-object p0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 139
    new-instance v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    if-nez p0, :cond_2

    .line 147
    sput-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    const-string p0, "NoWordSwitchAnimHelper"

    const-string v0, "onLauncherStartLoading"

    .line 148
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 150
    sget-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 152
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_2
    return-void
.end method

.method public final startSwitchNoWordAnim(Ljava/lang/Runnable;ZZ)V
    .locals 0

    const-string p0, "animEndAction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 110
    new-instance p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3, p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;ZLcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 119
    sput-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    .line 120
    sput-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    .line 121
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 123
    new-instance p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
