.class Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HalfAppToRecentsInHalfSplitUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public static synthetic $r8$lambda$BK1l0ipYTrQ8Eb62fF8EepEgtsU(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->lambda$onUpdate$0(F)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5030
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUpdate$0(F)V
    .locals 1

    .line 5046
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5047
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;FFFLcom/miui/home/recents/anim/IValueCallBack;)V
    .locals 8

    const/4 p5, 0x0

    .line 5033
    invoke-static {p5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    iget-object p5, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p5}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)F

    .line 5040
    iget-object p5, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p5}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result p5

    if-nez p5, :cond_0

    .line 5041
    iget-object p5, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p5}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result p5

    sub-float/2addr v0, p5

    mul-float/2addr v0, p2

    add-float v3, p5, v0

    .line 5043
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)I

    move-result v6

    iget-object p5, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p5}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)I

    move-result p5

    invoke-static {p5}, Lcom/miui/home/launcher/util/SoscUtils;->getHalfSplitLaunchPosition(I)I

    move-result v7

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/recents/NavStubView;->updateHalfSplitTaskPosition(Landroid/graphics/RectF;FFFII)Landroid/graphics/RectF;

    .line 5045
    :cond_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitUpdateListener;F)V

    invoke-virtual {p1, p3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
