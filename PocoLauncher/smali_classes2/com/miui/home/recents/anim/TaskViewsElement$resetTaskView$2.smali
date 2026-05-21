.class public final Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $i:I

.field final synthetic $tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(ILcom/miui/home/recents/views/TaskView;)V
    .locals 0

    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;->$i:I

    iput-object p2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    .line 1135
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    iget-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 1145
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    iget p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskView$2;->$i:I

    if-nez p0, :cond_0

    .line 1138
    sget-object p0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v0, 0x13c

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    :cond_0
    return-void
.end method
