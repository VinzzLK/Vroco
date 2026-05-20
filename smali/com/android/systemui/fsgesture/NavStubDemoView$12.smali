.class Lcom/android/systemui/fsgesture/NavStubDemoView$12;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$12;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 683
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 684
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$12;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 685
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$12;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$700(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method
