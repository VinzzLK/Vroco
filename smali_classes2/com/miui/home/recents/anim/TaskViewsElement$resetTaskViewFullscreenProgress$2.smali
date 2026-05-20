.class public final Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewsElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/TaskViewsElement;->resetTaskViewFullscreenProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    .line 1085
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    iget-object p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 1088
    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$resetTaskViewFullscreenProgress$2;->$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
