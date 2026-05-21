.class public final synthetic Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Lcom/miui/home/recents/views/TaskView;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(FLcom/miui/home/recents/views/TaskView;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$0:F

    iput-object p2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/recents/views/TaskView;

    iput p3, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$0:F

    iget-object v1, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/recents/views/TaskView;

    iget v2, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/miui/home/recents/anim/TaskViewsElement$$ExternalSyntheticLambda1;->f$4:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/anim/TaskViewsElement;->$r8$lambda$Fy1A29cmTQrd_2X415P9NRmLedM(FLcom/miui/home/recents/views/TaskView;IIFLandroid/animation/ValueAnimator;)V

    return-void
.end method
