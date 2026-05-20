.class Lcom/miui/home/launcher/ShortcutIcon$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ShortcutIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 928
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleDownToFolder onCancel "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutIcon"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 934
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 935
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComplete onCancel "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutIcon"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 920
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 921
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$500(Lcom/miui/home/launcher/ShortcutIcon;)Lmiuix/animation/property/ValueProperty;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    .line 922
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconDrawableScale(F)V

    .line 923
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$3;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
