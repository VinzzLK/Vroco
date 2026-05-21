.class Lcom/miui/home/launcher/CellBackground$2;
.super Ljava/lang/Object;
.source "CellBackground.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellBackground;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellBackground;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;II)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {v0}, Lcom/miui/home/launcher/CellBackground;->access$200(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {v0}, Lcom/miui/home/launcher/CellBackground;->access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationX()F

    move-result v1

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 121
    iget-object p2, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationY()F

    move-result p1

    add-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p1}, Lcom/miui/home/launcher/CellBackground;->access$200(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    iget-object p3, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getAlpha()F

    move-result p3

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    const/4 v0, 0x0

    aput v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p0}, Lcom/miui/home/launcher/CellBackground;->access$200(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
