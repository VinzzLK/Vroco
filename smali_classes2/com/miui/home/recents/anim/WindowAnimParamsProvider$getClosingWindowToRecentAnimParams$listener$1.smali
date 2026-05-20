.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getClosingWindowToRecentAnimParams(Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $currentTaskIndex:I

.field final synthetic $ignoreTaskViewAlpha:Z

.field final synthetic $launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic $launcherRotationOnAnimStart:I

.field final synthetic $rv:Lcom/miui/home/recents/views/RecentsView;

.field final synthetic $shouldAppToRecentsAnimToCenter:Z

.field final synthetic $targetTaskView:Lcom/miui/home/recents/views/TaskView;

.field final synthetic $taskStackLayoutStyleHorizontal:Z


# direct methods
.method public static synthetic $r8$lambda$wzMZcLWGlnAlHbga1Ncf-f2CCqQ(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->onSurfaceEnd$lambda-0(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/views/TaskView;ZZLcom/miui/home/launcher/Launcher;ZIILcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$shouldAppToRecentsAnimToCenter:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$ignoreTaskViewAlpha:Z

    iput-object p4, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    iput-boolean p5, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$taskStackLayoutStyleHorizontal:Z

    iput p6, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$launcherRotationOnAnimStart:I

    iput p7, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$currentTaskIndex:I

    iput-object p8, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$rv:Lcom/miui/home/recents/views/RecentsView;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSurfaceEnd$lambda-0(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V
    .locals 6

    const-string v0, "$launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WindowAnimParamsProvider"

    const-string v1, "ClosingWindowToRecentAnim end."

    .line 858
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget-object v0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v1, 0x13d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 863
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const/4 v1, 0x0

    .line 864
    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 866
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    if-eqz p2, :cond_1

    if-eq p3, v0, :cond_1

    if-nez p4, :cond_1

    .line 870
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    .line 871
    invoke-virtual {p1, p5}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p6

    move-object v1, p0

    move-object v2, v3

    .line 872
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 846
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$shouldAppToRecentsAnimToCenter:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$ignoreTaskViewAlpha:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 847
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 848
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0, v0, v0, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    const-string p0, "WindowAnimParamsProvider"

    const-string p1, "ClosingWindowToRecentAnim start."

    .line 850
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object p0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x13d

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    return-void
.end method

.method public onSurfaceEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 8

    .line 857
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    iget-boolean v3, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$taskStackLayoutStyleHorizontal:Z

    iget v4, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$launcherRotationOnAnimStart:I

    iget-boolean v5, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$shouldAppToRecentsAnimToCenter:Z

    iget v6, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$currentTaskIndex:I

    iget-object v7, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1;->$rv:Lcom/miui/home/recents/views/RecentsView;

    new-instance p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1$$ExternalSyntheticLambda0;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getClosingWindowToRecentAnimParams$listener$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p1, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
