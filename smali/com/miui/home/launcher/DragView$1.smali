.class Lcom/miui/home/launcher/DragView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->onDropAnimationFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field evaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic this$0:Lcom/miui/home/launcher/DragView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 891
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DragView$1;->evaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 904
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTextColor()I

    move-result p1

    .line 905
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p1, "target"

    .line 894
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 899
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setTextAlpha(F)V

    return-void
.end method
