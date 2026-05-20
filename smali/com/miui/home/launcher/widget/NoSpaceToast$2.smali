.class Lcom/miui/home/launcher/widget/NoSpaceToast$2;
.super Ljava/lang/Object;
.source "NoSpaceToast.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/NoSpaceToast;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/NoSpaceToast;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$100(Lcom/miui/home/launcher/widget/NoSpaceToast;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/NoSpaceToast;->access$300(Lcom/miui/home/launcher/widget/NoSpaceToast;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->move(Landroid/view/View;)V

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/NoSpaceToast$2;->this$0:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
