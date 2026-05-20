.class Lcom/android/systemui/fsgesture/NavStubDemoView$5;
.super Ljava/lang/Object;
.source "NavStubDemoView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V
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

    .line 545
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$5;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$5;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v1, "yScale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$1902(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F

    .line 549
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$5;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    const-string/jumbo v0, "yPivot"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->access$302(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I

    return-void
.end method
