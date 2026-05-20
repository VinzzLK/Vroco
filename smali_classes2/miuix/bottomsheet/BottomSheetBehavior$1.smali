.class Lmiuix/bottomsheet/BottomSheetBehavior$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/bottomsheet/BottomSheetBehavior;->startBottomEnterAnim(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/bottomsheet/BottomSheetBehavior;

.field final synthetic val$animationListener:Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/bottomsheet/BottomSheetBehavior;Landroid/view/View;Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->this$0:Lmiuix/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->val$parent:Landroid/view/View;

    iput-object p3, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->val$animationListener:Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1373
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->this$0:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    .line 1374
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->val$parent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->val$animationListener:Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;

    invoke-interface {p0}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationStart()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1380
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->val$animationListener:Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;->onAnimationEnd()V

    .line 1381
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetBehavior$1;->this$0:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/bottomsheet/BottomSheetBehavior;->access$102(Lmiuix/bottomsheet/BottomSheetBehavior;Z)Z

    return-void
.end method
