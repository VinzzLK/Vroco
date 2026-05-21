.class public final synthetic Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/miui/home/recents/anim/TaskViewsElement;

.field public final synthetic f$3:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$1:F

    iput-object p3, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/anim/TaskViewsElement;

    iput-object p4, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$0:F

    iget v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$1:F

    iget-object v2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$2:Lcom/miui/home/recents/anim/TaskViewsElement;

    iget-object p0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->$r8$lambda$ByOPw0caoRt4_FbPkz0ujK9TVpw(FFLcom/miui/home/recents/anim/TaskViewsElement;Lcom/miui/home/recents/views/TaskView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
